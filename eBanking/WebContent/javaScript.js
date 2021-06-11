function validate() {
    var gender = document.accountForm.flexRadioDefault.value;
    var type = document.accountForm.flexRadioDefault.value;
    var pass = document.accountForm.pass.value;
    var confirmPass = document.accountForm.pass1.value;
    var mobile = document.accountForm.num.value;
    var ifsc = document.accountForm.ifsc.value;


    if (gender == "") {
        alert("Please Select Gender")
        return false;
    }
    if (type == "") {
        alert("Please Select Account Type")
        return false;
    }
    var ifs = /^[A-Z]{4}[0-9]{7}$/;
    if (ifs.test(ifsc) === false) {
        alert('Invalid IFSC Code');
        return false;
    }
    var regex = /^[5-9]\d{9}$/;
    if (regex.test(mobile) === false) {
        alert('Invalid Mobile Number');
        return false;
    }
    var status = pass.localeCompare(confirmPass);
    if (status != 0) {
        alert("Password Is Not Matched");
        return false;
    }
    alert('Your Account Number acts as Internet Banking Id');
    return true;
}
function validateUpdate() {
    var gender = document.accountForm.flexRadioDefault.value;
    var type = document.accountForm.type.value;
    var mobile = document.accountForm.num.value;
    var ifsc = document.accountForm.ifsc.value;


    if (gender == "") {
        alert("Please Select Gender")
        return false;
    }
    if (type == "") {
        alert("Please Select Account Type")
        return false;
    }
    var ifs = /^[A-Z]{4}[0-9]{7}$/;
    if (ifs.test(ifsc) == false) {
        alert('Invalid IFSC Code');
        return false;
    }
    var regex = /^[5-9]{1}[0-9]{9}$/;
    if (regex.test(mobile) == false) {
        alert('Invalid Mobile Number');
        return false;
    }
   
    alert('Your Account Number acts as Internet Banking Id');
    return true;
}

