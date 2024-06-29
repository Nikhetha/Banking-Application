<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC  BANK</title>
    <link rel="stylesheet" type="text/css" href="views/css.jsp">
    <script type="text/javascript" src="views/javascript.jsp"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
     .fa 
    {
        font-size: 25px; /* Adjust the font-size as needed */
        color: #ecececef; /* Set the color */
    }
    .text
    {
        margin-bottom:1px;
    }
    form{
        margin-top:30px;
    }
        </style>
</head>
<body>
    <a href="Login_Page"><i class="fas fa-arrow-left fa"></i></a>
    <center>
        <h1 class="text">SDFC BANK</h1><p></p>
        <h2 class="text">Extraordinary Services</h2>
    </center>
        
        <div align="center" class="e">
            <form action="/depositUrl" name="form" onsubmit="return validateForm()">
                <fieldset>
                    <h2>DEPOSIT FORM</h2>
                    <table>
                    
                        <tr>
                            <td><label>ACCOUNT NUMBER :</label></td>
                            <td>
                                <input type="text" id="accno" name="accountno"/>
                                <span id="a" class="error">${error_accno}</span>
                            </td>
                        </tr>
                        <tr>
                            <td><label>AMOUNT :</label></td>
                            <td>
                                <input type="text" id="amount" name="amount"/>
                                <span id="am" class="error"></span>
                            </td>
                        </tr>
                    </table>
                    
                    
                    <input type="submit" class="b" value="SUBMIT" >&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="reset" class="b" value="CLEAR">
                    
                    </fieldset>
            </form>
        </div>
</body>
</html>