const currentLocation = location.href;
    const menuItem = document.querySelectorAll('a');
    const menuLength = menuItem.length;
    for (let i = 0; i < menuLength; i++) {
        if (menuItem[i].href === currentLocation) {
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
    var address = document.getElementById("address").value;
    var filter = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
    var check = true;
    if(name == null || name == ""){
        alert("Name can't be blank");
        return false;
    }

    if(!filter.test(email) || email == ""){
        alert("Please enter your email again");
        return false;
    }

    if(gender[0] && gender[1]){
        console.log("test");
        alert("Please choose your gender");
        return false;
    }

    if(city == ""){
        alert("Please choose your city");
        return false;
    }

    if(address == "" || !address.include("street")){
        alert("Please enter your address again");
        return false;
    }

    alert("Login Succesful");
    return true;
}


// var header = document.getElementsByClassName("list");
// var btns = document.getElementsByClassName("nav-content");
// var btns2 = document.getElementsByClassName("nav-content-2");

// for(i=0;i<btns.length;i++){
//     btns[i].addEventListener("click", function(){
//         var current = document.getElementsByClassName("active");
//         current[0].className = current[0].className.replace(" active","");
//         this.classname += " active";
//     });
// }

// for(i=0;i<btns2.length;i++){
//     btns2[i].addEventListener("click", function(){
//         var current = document.getElementsByClassName("active");
//         current[0].className = current[0].className.replace(" active","");
//         var mark = getElementsByClassName("nav-content");
//         mark[1] +=" active";
//     });
// }

// $("a.nav-content").click(function(){
//     $("a.nav-content").css("background-color","black");
//     $(this).css("background-color", "red");
// });