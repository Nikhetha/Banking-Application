//=============================== For validating Registration Form==============================================
function validateRegistrerForm()
{

    // Clear previous error messages

    document.getElementById("a").innerHTML = "";
    document.getElementById("n").innerHTML = "";
    document.getElementById("p").innerHTML = "";
    document.getElementById("cp").innerHTML = "";
    document.getElementById("am").innerHTML = "";
    document.getElementById("ad").innerHTML = "";
    document.getElementById("mb").innerHTML = "";

    // To get data from text boxes of Form

    var accountno = document.form.accountno.value;
    var name = document.form.name.value;
    var password = document.form.password.value;
    var confirm_password = document.form.confirm_password.value;
    var amount = document.form.amount.value;
    var address = document.form.address.value;
    var mobile_num = document.form.mobile_num.value;
    

    var status=true;
    
    if(accountno=="")
    {
        document.getElementById("a").innerHTML="*Please Enter Account number";
        status=false;
    }

    if(name=="")
    {
        document.getElementById("n").innerHTML="*Please Enter Name";
        status=false;
    }

    if(password=="")
    {
        document.getElementById("p").innerHTML="*Please Enter Password";
        status=false;
    }
    else
    {
        prule=/(?=.*\d)(?=.[a-z])(?=.*[A-Z]).{6,}/;
        if(!(form.password.value.match(prule)))
        {
            document.getElementById("p").innerHTML="*week password  (atleast 1 Capital letter,1 small letter,1 digit,length 6 charecters)";
            status=false;
        }
    }

    if(confirm_password=="")
    {
        document.getElementById("cp").innerHTML="*Please Enter Confirm Password";
        status=false;
    }
    else
    {
        //password confirm password didn't matched
        if(password !== confirm_password)
        {
            document.getElementById("cp").innerHTML="*Password and Confirm Password didn't matched";
            status=false;
        }
    }

    if(amount=="")
    {
        document.getElementById("am").innerHTML="*Please Enter Amount"; 
        status=false;
    }

    if(address=="")
    {
        document.getElementById("ad").innerHTML="*Please Enter Address";
        status=false;
    }

    if (mobile_num == "") {
    document.getElementById("mb").innerHTML = "*Please Enter Mobile Number";
    status = false;
    }
    else 
    {
        var phrule = /^\d{10}$/; // Corrected regular expression
        if (!mobile_num.match(phrule)) 
        {
        document.getElementById("mb").innerHTML = "*Please Enter valid Mobile Number";
        status = false;
        }
        return status;
    }
    return status;
}

//============================== For validating Deposit Form and Withdrawl Form=================================
function validateForm()
{

// Clear previous error messages
document.getElementById("a").innerHTML = "";
document.getElementById("am").innerHTML = "";

// To get data from text boxes of Form
var accountno = document.form.accountno.value;
var amount = document.form.amount.value;

var status=true;

if(accountno=="")
{
    document.getElementById("a").innerHTML="*Please Enter Account number";
    status=false;
}

if(amount=="")
{
    document.getElementById("am").innerHTML="*Please Enter Amount"; 
    status=false;
}
return status;
}
//======================================== For validating Login Form==========================================
function validateLoginForm()
{

// Clear previous error messages
document.getElementById("a").innerHTML = "";
document.getElementById("n").innerHTML = "";
document.getElementById("p").innerHTML = "";

// To get data from text boxes of Form

var accountno = document.form.accountno.value;
var name = document.form.name.value;
var password = document.form.password.value;

var status=true;

if(accountno=="")
{
    document.getElementById("a").innerHTML="*Please Enter Account number";
    status=false;
}

if(name=="")
{
    document.getElementById("n").innerHTML="*Please Enter Name";
    status=false;
}

if(password=="")
{
    document.getElementById("p").innerHTML="*Please Enter Password";
    status=false;
}

return status;
}


//======================================== For validating Balance Form==========================================
function validateBalanceForm()
{

// Clear previous error messages
document.getElementById("a").innerHTML = "";

// To get data from text boxes of Form

var accountno = document.form.accountno.value;

var status=true;

if(accountno=="")
{
    document.getElementById("a").innerHTML="*Please Enter Account number";
    status=false;
}
return status;
}


//====================================== For validating Transfer Form============================================
function validateTransferForm()
{

// Clear previous error messages
document.getElementById("a").innerHTML = "";
document.getElementById("ta").innerHTML = "";
document.getElementById("am").innerHTML = "";


// To get data from text boxes of Form

var accountno = document.form.accountno.value;
var target_accountno = document.form.target_accountno.value;
var amount = document.form.amount.value;

var status=true;

if(accountno=="")
{
    document.getElementById("a").innerHTML="*Please Enter Account number";
    status=false;
}

if(target_accountno=="")
{
    document.getElementById("ta").innerHTML="*Please Enter Account number";
    status=false;
}

if(amount=="")
{
    document.getElementById("am").innerHTML="*Please Enter Amount"; 
    status=false;
}

return status;
}