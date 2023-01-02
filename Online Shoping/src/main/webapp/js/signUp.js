/**
 * 
 */
 function uform(){
    let user = document.getElementById("exampleInputName").value;
    let email = document.getElementById("exampleInputEmail1").value;
    let pass = document.getElementById("exampleInputPassword1").value;
    let rpass = document.getElementById("exampleInputRepassword1").value;
    let status = true;
    if(user == "" ){
        document.getElementById("usn").innerHTML = "Please enter your name";
        status = false;
    }else if(user.match(/^[0-9]+$/)){
        document.getElementById("usn").innerHTML = "Please enter valid name don't use numbers";
        status = false;
    }else{
        status = true;
    }
    if(email == ""){
        document.getElementById("eml").innerHTML = "Please enter your email";
        status = false;
    }else if(email.indexOf("@")  && email.indexOf(".")){
        document.getElementById("exampleInputEmail1").style.border = "4px solid green";
        status = true;
    }else{
        status =true;
    }
    if(pass == "" && rpass == ""){
        document.getElementById("psw").innerHTML = "Please enter your password";
        document.getElementById("Password").style.boxShadow = "0px 0px 7px red";
        document.getElementById("Password").style.border = "2px solid red";
        status = false;
    }else if( pass != rpass ){
        document.getElementById("psw").innerHTML = "Password not match";
        status = false;
        document.getElementById("exampleInputPassword1").style.boxShadow = "0px 0px 7px red";
        document.getElementById("exampleInputPassword1").style.border = "2px solid sold red";
        document.getElementById("").style.border = "5px solid red";
    }else if (pass.length >= 6 &&  pass.match(/[a-z]/g) && pass.match(/[A-Z]/g) && pass.match(/[0-9]/g) && pass.match(/[^a-zA-Z\d]/g)){
        status = true;
    
    }else{
        document.getElementById("psw").innerHTML = "must be strong use{A-Z,a-z,0-9,Special character, above 6 character}";
        status = false;
    }
    return status;
}