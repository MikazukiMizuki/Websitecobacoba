const currentLocation = location.href;
    const menuItem = document.querySelectorAll('a');
    const menuLength = menuItem.length;
    for (let i = 0; i < menuLength; i++) {
        if (menuItem[i].href === currentLocation) {s
            if (menuItem[i].className === "nav-content-2") {
                console.log(menuItem[i].parentNode.parentNode.parentNode);
                const menuItem2 = document.getElementsByClassName("nav-content");
                menuItem2[1].classList.add("active");
            }
            else {
                menuItem[i].classList.add("active");
            }
        }
    }

function validateLogin(){
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    // var check = true;
    if(email == null || email == ""){
        alert("Email can't be blank");
        return false;
    }
    if(password == null || password == ""){
        alert("Password can't be blank");
        return false;
    }
    alert("Login Succesful");
}

function validateRegister(){
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var gender = document.getElementsByName("gender");
    var city = document.getElementById("city").value;
    var password = document.getElementById("password").value;
    var cpassword = document.getElementById("cpassword").value;
    var number = /[0-9]/g;
    var upperCase = /[A-Z]/g;
    var filter = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
    var check = true;
    if(name == null || name == ""){
        alert("Please enter your name again!");
        return false;
    }

    if(!filter.test(email) || email == ""){
        alert("Please enter your email again!");
        return false;
    }

    if(gender[0] && gender[1]){
        // console.log("test");
        alert("Please choose your gender again!");
        return false;
    }

    if(city == ""){
        alert("Please choose your city again!");
        return false;
    }

    if(password =="" || password.length<8 || !password.match(upperCase) || !password.match(number)){
        alert("Please enter your password again!");
        return false;
    }

    if(cpassword =="" || password != cpassword){
        alert("Please confirm your password again!")
        return false;
    }


    alert("Login Succesful");
    return true;
}