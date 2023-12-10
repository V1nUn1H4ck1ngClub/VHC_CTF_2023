    function checkPass(password) {
        if (password[0] != "1")
            return false;
        if (password[3]*1000000000000000 + password[5] != 9999999999999999)
            return false;
        if (password.charCodeAt(2) != 64176/1337)
            return false;
        if (3 + 6 + password[1]!= String.fromCharCode(57, 53))
            return false;
        if (password[4] - password[5] != 2)
            return false;
        return true;
    }

    function check() {
        password = combo.getCombination(); // Get user password
        console.log(password)
        if (checkPass(password)) {
            document.location = document.location.origin + document.location.pathname + "?p=" + password;
        }
        else {
            $(".lockContainer").addClass("shake");
            setTimeout(() => ($(".lockContainer").removeClass("shake")), 500);
        }
    }

