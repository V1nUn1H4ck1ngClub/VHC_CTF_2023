from flask import Flask, render_template, make_response, request, redirect, url_for
from flask import session 
from flask_session import Session
import random 

app = Flask(__name__)
SESSION_TYPE = 'filesystem'
app.config.from_object(__name__)
app.config["SESSION_TYPE"] = SESSION_TYPE
sess = Session(app)
sess.init_app(app)

FLAG = "VHC2023{th4nk_y0u_4_th3_d1sc0unt}"

# Sample data for different items with prices
items = {
    'doll': {'name': 'doll', 'description': 'This doll wants to hug you', 'price': 150},
    'teddy': {'name': 'teddy', 'description': 'Buy this teddy bear, you will not have the flag', 'price': 800},
    'ball': {'name': 'ball', 'description': 'Wanna buy a ball? ', 'price': 200},
    'gift': {'name': 'gift', 'description': 'Buy this to be rich.' , 'price': 100},
    'toy_car': {'name': 'toy_car', 'description': 'Zoom around with this toy car', 'price': 350},
    'puzzle': {'name': 'puzzle', 'description': 'Challenge yourself with this fun puzzle', 'price': 283},
    'robot': {'name': 'robot', 'description': 'Interactive robot friend for kids', 'price': 1000},
    'kite': {'name': 'kite', 'description': 'Colorful kite for outdoor fun', 'price': 120},
    'flag': {'name': 'flag', 'description': 'Buy me if you can', 'price': 1337},
    'yo_yo': {'name': 'yo_yo', 'description': 'Classic yo-yo for endless tricks', 'price': 370},
    'building_blocks': {'name': 'building_blocks', 'description': 'Create and build with these colorful blocks', 'price': 950},
    'stuffed_animal': {'name': 'stuffed_animal', 'description': 'Cute stuffed animal companion', 'price': 180},
    'remote_control_car': {'name': 'remote_control_car', 'description': 'Control your own car with a remote', 'price': 1000},
    'jump_rope': {'name': 'jump_rope', 'description': 'Fun exercise with a colorful jump rope', 'price': 70},
}

# You can continue adding more items as needed.

@app.before_request
def add_discount_and_money_to_session():
    if not "discount" in session:
        session["discount"] = set()
    if not "balance" in session: 
        session["balance"] = 1000
    # check all cookie >= 0
    for item_id in items:
        item_count = int(request.cookies.get(item_id, 0))
        if item_count < 0:
            # update to 0 if < 0
            response = make_response(redirect(url_for('home')))
            response.set_cookie(item_id, '0')
            return response

    
@app.route('/')
def home():
    # Set the user's balance as a cookie
    list_of_items = []
    for x in items:
        list_of_items.append(x) 
    user_balance = int(session["balance"])
    response = make_response(render_template('home.html', items=list_of_items, user_balance=user_balance))  
    return response

@app.route('/submit_feedback', methods=['POST'])
def submit_feedback():
    feedback = request.form.get('feedback')
    
    # Process the feedback (you can save it to a database, send it via email, etc.)
    # For now, let's just print it to the console
    print(f"Received feedback: {feedback}")

    # Return a response with a thank you message and a discount code
    thank_you_message = "Thank you for your feedback! Here's a 10 % discount code for your next purchase: THANKYOU"
    return thank_you_message


@app.route('/item/<item_id>', methods=['GET', 'POST'])
def item_description(item_id):
    item = items.get(item_id)
    user_balance = int(session["balance"])
    if item:
        if request.method == 'POST':
            # Handle adding item to the cart
            add_to_cart(item_id)
            return redirect(url_for('home'))
        return render_template('item_description.html', item=item, user_balance=user_balance)
    else:
        return 'Item not found', 404

@app.route('/cart', methods=['GET', 'POST'])
def cart():
    # Retrieve the user's balance from the cookie
    user_balance = int(session["balance"])
    # Retrieve items in the cart from cookies
    cart_items = {}
    total_price = 0
    for item_id in items:
        item_count = int(request.cookies.get(item_id, 0))
        if item_count > 0:
            total_price += items[item_id]['price'] * item_count
            cart_items[items[item_id]['name']] = item_count
    app.logger.info("%s dollars", total_price)
    discount_message = None

    if 'THANKYOU' in session['discount']:
        total_price -= total_price // 10
        discount_message = 'applied THANKYOU -10% total price'

    if request.method == 'POST':
        discount_code = request.form.get('discount_code')
        if discount_code == 'THANKYOU':
            if 'THANKYOU' in session["discount"]:
                response = make_response("You have used this code")
            else:
                session["discount"].add("THANKYOU")
                response = make_response(render_template('cart.html', user_balance=user_balance, cart_items=cart_items, total=total_price - total_price // 10, discount_message='applied THANKYOU -10% total price'))
        else:
            response = make_response('Invalid discount code')
        return response
        
    return render_template('cart.html', user_balance=user_balance, cart_items=cart_items, total=total_price, discount_message=discount_message)

@app.route('/decrease_quantity/<item_id>', methods=['POST'])
def decrease_quantity(item_id):
    # Retrieve the current count of the item in the cart
    item_count = int(request.cookies.get(item_id, 0))

    # Decrease the count (minimum count is 0)
    item_count = max(0, item_count - 1)

    # Update the item count in the cookie
    response = make_response(redirect(url_for('cart')))
    response.set_cookie(item_id, str(item_count))
    
    return response

@app.route('/add_to_cart/<item_id>', methods=['POST'])
def add_to_cart(item_id):
    # Retrieve the current count of the item in the cart
    item_count = int(request.cookies.get(item_id, 0))
    # Increment the count and set the cookie
    response = make_response(redirect(url_for('home')))
    response.set_cookie(item_id, str(item_count + 1))
    return response


def get_coupon():
    # check if user has been in the record_coupon_usage, if not add it
    if not "coupon" in session:
        session["coupon"] = set()
    # generate a random coupon
    alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    coupon = ''.join(random.choice(alphabet) for i in range(10))
    # add the coupon to the user
    session["coupon"].add(coupon)
    return coupon

@app.route('/remove_discount', methods=['POST'])
def remove_discount():
    if 'THANKYOU' in session['discount']:
        session['discount'].remove('THANKYOU')
    return redirect(url_for('cart'))

@app.route('/checkout')
def checkout():
    # Retrieve the user's balance from the cookie
    user_balance = int(session["balance"])
    # Calculate the total price of items in the cart
    total_price = sum(items[item]['price'] * max(0, int(request.cookies.get(item, 0))) for item in items)
    if 'THANKYOU' in session['discount']:
        total_price -= total_price // 10
    if user_balance >= total_price:
        # If the balance is enough, proceed with the purchase
        remaining_balance = user_balance - total_price  
         # Check if the user is purchasing 'gift'
        if int(request.cookies.get('flag', 0)) > 0:
            response = make_response(f'{FLAG}')
        elif int(request.cookies.get('gift', 0)) > 0:
            num_gifts = int(request.cookies.get('gift', 0))
            coupons = [get_coupon() for _ in range(num_gifts)]
            # add the coupons to the user
            coupon_message = f"Congratulations! You've received {num_gifts} coupon(s): {', '.join(coupons)}"
            response = make_response(f'Checkout successful! {coupon_message}')
        else:
            response = make_response('Checkout successful!')

        # Clear the cart by setting item counts to 0 in cookies
        for item_id in items:
            response.set_cookie(item_id, '0') 
        # Update the user's balance in the session
        session["balance"] = remaining_balance
        if 'THANKYOU' in session['discount']:
            session['discount'].remove('THANKYOU')
        return response
    else:
        return 'Insufficient funds for checkout'


@app.route('/submit_coupon', methods=['POST'])
def submit_coupon():
    if not "coupon" in session:
        response = make_response("You don't have any coupon")
        return response
    coupon = request.form.get('coupon')
    if not coupon:
        response = make_response("You don't have any coupon")
        return response
    if coupon not in session["coupon"]:
        response = make_response("Invalid coupon")
        return response
    # increase user's balance by $100
    user_balance = int(session["balance"])
    new_balance = user_balance + 100
    response = make_response("You have successfully used the coupon.")
    session["balance"] = new_balance
    session["coupon"].remove(coupon)
    return response

if __name__ == '__main__':
    app.run(port=5000, host="0.0.0.0")
