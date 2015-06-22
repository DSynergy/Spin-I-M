function checkPass() {
    //Store the password field objects into variables ...
    var pass1 = document.getElementById('pass1');
    var pass2 = document.getElementById('pass2');
    //Store the Confimation Message Object ...
    var message = document.getElementById('confirmMessage');
    var message2 = document.getElementById('lengthMessage');
    //Set the colors we will be using ...
    var goodColor = "#66cc66";
    var badColor = "#ff6666";
    //Compare the values in the password field
    //and the confirmation field
    if(pass1.value == pass2.value){
        //The passwords match.
        //Set the color to the good color and inform
        //the user that they have entered the correct password
        pass2.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "Passwords Match!"
    }else{
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        pass2.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Passwords Do Not Match!"
    }

    if(pass1.value.length > 7 ){
        //The password is the correct length.
        pass1.style.backgroundColor = goodColor;
        message2.style.color = goodColor;
        message2.innerHTML = ""
    }else{
        pass1.style.backgroundColor = badColor;
        message2.style.color = badColor;
        message2.innerHTML = "The password must be 8 characters in length"
    }
};
