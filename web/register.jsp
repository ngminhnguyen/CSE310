
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, init-scale=1.0">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link href="CSS/register2.css" rel="stylesheet" type="text/css"/>
        <style>
            body{
                background-image: url(image/try.jpg);
                background-position: center;
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
            }
        </style>
        <title>Sign In Page</title>
    </head>
    <body>
        <div class="wrapper">
            <nav class="nav">
                <div class="nav-logo">
                    <p>NATBANK</p>
                </div>
                <div class="nav-menu">
                    <ul>
                        <li><a href="#" class="link active">Home</a></li>
                        <li><a href="#" class="link">Services</a></li>
                        <li><a href="#" class="link">Frequently Asked Questions</a></li>
                    </ul>
                </div>

                <div class="nav-button">
                    <button class="btn white-btn" id="loginBtn" onclick="login()">Sign In</button>
                    <button class="btn" id="registerBtn" onclick="register()">Sign Up</button>
                </div>

                <div class="nav-menu-btn">
                    <i class='bx bx-menu'></i>
                </div>
            </nav>
            <!----------------------------- Form Box--------------------------------------->

            <div class="form-box">
                <!---------------------register form--------------->
                <div class="register-container" id="register">

                    <div class="top">
                        <span>Have an account? <a href="login.html" onclick="login(); return false;">Login</a></span>
                        <header>Bank Account Registration Form</header>

                    </div>

                    <div class="type-account">

                        <div class="labelAcc">
                            <label>Account Information</label>
                        </div>

                        <div class="cbbType">

                            <div class="labelAccType">
                                <label for="account-type">Account Type</label>
                                <label for="currency-type">Currency Type</label>
                            </div>
                            <select id="account-type" name="account-type">
                                <option value="savingAccount">Saving Account</option>
                                <option value="currentAccount">Current Account</option>
                                <option value="paymentAccount">Payment Account</option>
                            </select>


                            <select id="currency-type" name="currency-type">
                                <option value="dollar">USD - US Dollar</option>
                                <option value="eur">EUR - Euro</option>
                                <option value="dong">Vietname - VND</option>
                            </select>
                        </div>

                    </div>

                    <div class="personal">

                        <label>Personal Information</label><br>

                        <label>The information given in this section is considered as the
                            information of the primary account owner information.</label><br>


                        <div class="nameAIndtification">

                            <label>Name</label>
                            <label>Citizen Identification Number</label><br>

                            <i class='bx bxs-user'></i>
                            <input type="text" name="nameInput" placeholder="  Full Name" required="">

                            <i class='bx bx-user-pin'></i>
                            <input type="text" name="indentificationInput" placeholder="Identification Number"><br>

                        </div>

                        <div class="phoneandbirth">

                            <div class="labelPAB">

                                <label for="phone">Phone Number</label>
                                <label for="birth">Date of Birth</label>
                            </div>

                            <div>
                                <i class='bx bx-phone'></i>
                                <input input type="text" name="phoneInput" oninput="validateNumericInput(this)">
                                <i class='bx bxs-cake' ></i>
                                <input type="text" name="dateInput" placeholder="DD/MM/YYYY" oninput="formatAndValidateDateInput(this)">

                            </div>


                        </div>

                        <div class="address">
                            <label>Residental Address</label><br>
                            
                            <input type="text" name="streetInput" placeholder="Street Address">
                            <input type="text" name="province" placeholder="Province"><br>
                            <input type="text" name="city" placeholder="City">
         
                        </div>

                    </div>

                    <div class="two-col">
                        
                        <div class="one">
                            <input type="checkbox" id="agree-check">
                            <label><a href="#">I agree to terms & conditions.</a></label>
                        </div>
                        
                       
                    </div>
                    
                    <button type="submit" class="btn">Register</button>
                    
                </div>
            </div>
        </div>
        <script>
            function login() {
                window.location.href = "login.jsp";
            }
        </script>
        <script>
            function validateNumericInput(inputField) {
                // Allow only numeric characters
                inputField.value = inputField.value.replace(/[^0-9]/g, '');

                // Limit the length to 10 characters
                if (inputField.value.length > 10) {
                    inputField.value = inputField.value.slice(0, 10);
                }
            }
        </script>

        <script>
            function formatAndValidateDateInput(inputField) {
                // Allow only numeric characters
                inputField.value = inputField.value.replace(/[^0-9]/g, '');

                // Extract day, month, and year components
                var day = inputField.value.substring(0, 2);
                var month = inputField.value.substring(2, 4);
                var year = inputField.value.substring(4, 8);

                // Format the date as "DD/MM/YYYY" and display in the input field
                inputField.value = day + '/' + month + '/' + year;

                // Validate the formatted date
                validateDateInput(inputField);
            }

            function validateDateInput(inputField) {
                // Split the input into day, month, and year
                var parts = inputField.value.split('/');
                var day = parseInt(parts[0], 10);
                var month = parseInt(parts[1], 10);
                var year = parseInt(parts[2], 10);

            }
        </script>

    </body>
</html>
