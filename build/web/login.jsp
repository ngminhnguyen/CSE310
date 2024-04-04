
<!DOTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IT=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="CSS/login.css" rel="stylesheet" type="text/css"/>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
         <style>
            body{
                background-image: url(image/try.jpg);
                background-position: center;
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
            }
        </style>
    </head>

    <body>
        <div class="wrapper">
            <form action="">
                <h1>Banking Login</h1>

                <div class="input-box">
                    <input type="text" id="un" name="un" placeholder="Username" required="">
                    <i class='bx bxs-user'></i>
                </div>

                <div class="input-box">
                    <input type="password" id="pw" name="pw" placeholder="Password" required="">
                    <i class='bx bxs-lock' ></i>
                </div>

                <div class="remember-forgot">
                    <label><input type="checkbox"> Remember me</label>
                    <a href="#">Forgot password?</a>
                </div>
                
                <button type="submit" class="btn">Login</button>
                
                <div class="register-link">
                    <p>Don't have an account't?<a href="#"> Register</a></p>
                </div>
            </form>
        </div>

    </body>