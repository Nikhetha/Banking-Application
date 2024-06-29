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
        </style>

</head>
<body>
    <a href="/"><i class="fas fa-arrow-left fa"></i></a>    
    <center>
        <h1 class="text">SDFC BANK</h1><p></p>
        <h2 class="text">Extraordinary Services</h2>
    </center>

    <include file="views/hyperlinks.jsp">
        
        <div align="center" class="e">
            <form action="/RegUrl" name="form" onsubmit="return validateRegistrerForm()">
                <fieldset>


                    <h2>CREATE NEW ACCOUNT</h2>

                    <table>
                    
                    <tr>
                        <td><label>ACCOUNT NUMBER :</label></td>
                        <td>
                            <input type="text" id="accno" name="accountno"/>
                            <span id="a" class="error"></span>
                        </td>
                    </tr>
                    <tr>
                        <td><label>NAME :</label></td>
                        <td>
                            <input type="text" id="name" name="name"/>
                            <span id="n" class="error"></span>
                        </td>
                    </tr>
                    <tr>
                        <td><label>PASSWORD :</label></td>
                        <td>
                            <input type="password" id="password" name="password"/>
                            <span id="p" class="error"></span>
                        </td>
                    </tr>
                    <tr>
                        <td><label>CONFIRM PASSWORD :</label></td>
                        <td>
                            <input type="password" id="cpassword" name="confirm_password"/>
                            <span id="cp" class="error"></span>
                        </td>
                    </tr>
                    <tr>
                        <td><label>AMOUNT :</label></td>
                        <td>
                            <input type="text" id="amount" name="amount"/>
                            <span id="am" class="error"></span>
                        </td>
                    </tr>
                    <tr>
                        <td><label>ADDRESS :</label></td>
                        <td>
                            <input type="textarea" id="address" name="address"/>
                            <span id="ad" class="error"></span>
                        </td>
                    </tr>
                    <tr>
                        <td><label>MOBILE NUMBER :</label></td>
                        <td>
                            <input type="text" id="mbnum" name="mobile_num"/>
                            <span id="mb" class="error"></span>
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