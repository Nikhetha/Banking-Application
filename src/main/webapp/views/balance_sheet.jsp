<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Balance Sheet</title>
        <link rel="stylesheet" type="text/css" href="views/css.jsp">
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

            #bank{
                width: 500px;
                height: 325px;
                object-fit: cover;
                object-position: 180% 80%;
                border-radius:15px;
                margin-left: 30%;
                margin-top: 12px;
                }
            </style>
    </head>
    <body>
        <a href="Login_Page"><i class="fas fa-arrow-left fa"></i></a>  
        <center>
        <h2>Welcome, ${bank.name}</h2>
        <h2>Your Account Balance : ${bank.amount}</h2>
    </center>
    <img src="views/images/money.avif" id="bank">
    </body>
</html>