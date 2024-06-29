<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="views/css.jsp">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

        <style>
            #bank{
        width: 600px;
        height: 250px;
        border-radius:15px;
        margin-left: 26%;
        margin-top: 12px;
        }
            .icon
        {
            font-size: 28px;
            text-decoration:none;
            border-style:solid;
            border-color:white;
            border-width:2px;
            border-radius:27px;
            padding: 10px 20px; /* Adjust padding as needed */
            box-sizing: border-box;
            background: linear-gradient(to right, #b778d3, #9045c2,#8f4bae); 
            color:#d3d0d5;

        }
        h4{
            margin-top: 50px; 
        }
        .fa 
        {
        font-size: 25px; /* Adjust the font-size as needed */
        color: #ecececef; /* Set the color */
        }
        </style>
    </head>
    <body>
        <a href="Login"><i class="fas fa-arrow-left fa"></i></a>
        <center>
            <h1 class="text">SDFC BANK</h1><p></p>
            <h2 class="text">Extraordinary Services</h2>
            
            <h4>
                <a href="/balance" class="icon" id="icon_balance">Balance</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="/deposit" class="icon" id="icon_deposit">Deposit</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="/withdraw" class="icon" id="icon_withdraw">Withdraw</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="/transfer" class="icon"vid="icon_transfer">Transfer</a>
            </h4>
        </center>
        <img src="views/images/cash.jpg" id="bank">
        
    </body>
</html>