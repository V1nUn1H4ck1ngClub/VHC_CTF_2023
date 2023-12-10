from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def home_route():
   return render_template('home.html')

@app.route('/static')
def static_route():
    return render_template('static.html')

@app.route('/static/styles')
def style_route():
    return render_template('style.html')

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=1202)
