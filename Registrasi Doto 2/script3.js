//DOM ( Document Object Model)


function myValidate () {
    let username = document.querySelector('#username').value;
    let password = document.querySelector('#password').value;
    let reg = document.querySelector('#region').value;
    let email = document.querySelector('#email').value;
    let box = document.querySelector('#check-box').checked;
    let check = 0;

    if (username === "") {
        alert("Please fill the username!")
        check = 1;
    }
    else if (username.length <= 5) {
        alert("Username must be more than 5 characters!")
        check = 1;
    }

    else if (username.length > 20) {
        alert("Username must be less than 20 characters!")
        check = 1;
    }

    else if(username.includes(" ") === true){
        alert("Username cannot contain space!")
        check = 1;
    }

    if(password === ""){
        alert("Please fill the password!");
        check = 1;
    }
    else if (password.length <= 5) {
        alert("Password must be more than 5 characters!")
        check = 1;
    }
    else if (password.length > 20) {
        alert("Password must be less than 20 characters!")
        check = 1;
    }
    
    if(reg === ""){
        alert("Please fill the region!");
        check = 1;
    }
    else if((isNaN(reg)===true)){
        alert("Please fill region again!")
        check = 1;
    }

    if(!box){
        alert("Please check the box!")
        check = 1;
    }

    if(check == 0){
        alert("Success");
    }
}

