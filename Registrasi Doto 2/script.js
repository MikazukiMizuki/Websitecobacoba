const form = document.getElementById('form');
const username = document.getElementById('username');
const password = document.getElementById('password');
const email = document.getElementById('email');
const region = document.getElementById('region');

form.addEventListener('submit', (e) => {
    e.preventDefault();

    checkInput();
});

function checkInput(){
    const usernameVal = username.value.trim();
    const passwordVal = password.value.trim();
    const emailVal = email.value.trim();
    const regionVal = region.value.trim();

    if(usernameVal === ''){
        setErrorFor(username, "Username cannot be blank");
    } else if(usernameVal <= 5){
        setErrorFor(username, "Username must be higher than 5 letters");
    } else{
        setSuccessFor(username);
    }

    if(passwordVal === ''){
        setErrorFor(password, "Password cannot be blank");
    }else if(passwordVal <= 8){
        setErrorFor(password, "Password must exceed 8 characters");
    } else{
        setSuccessFor(password)
    }

    if(emailVal === ''){
        setErrorFor(email, "Username cannot be blank");
    }else{
        setSuccessFor(email);
    }

    if(regionVal === ''){
        setErrorFor(region, "Region cannot be blank");
    }else{
        setSuccessFor(region);
    }
}

function setErrorFor(input, message){
    const formControl = input.parentElement;
    const small = formControl.querySelector(small);

    small.innerText = message;

    formControl.className = 'form-control error';
}

function setSuccessFor(input){
    const formControl = input.parentElement;
    formControl.className = 'form-control success';
}