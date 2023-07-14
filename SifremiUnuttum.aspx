﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SifremiUnuttum.aspx.cs" Inherits="SifremiUnuttum" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login V1</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link href="Login_v1/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!--===============================================================================================-->
    <link href="Login_v1/fonts/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <!--===============================================================================================-->
    <link href="Login_v1/vendor/animate/animate.css" rel="stylesheet" />
    <!--===============================================================================================-->
    <link href="Login_v1/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" />
    <!--===============================================================================================-->
    <link href="Login_v1/vendor/select2/select2.min.css" rel="stylesheet" />
    <!--===============================================================================================-->
    <link href="Login_v1/css/main.css" rel="stylesheet" />
    <link href="Login_v1/css/util.css" rel="stylesheet" />
    <!--===============================================================================================-->
</head>
<body>
    
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <div class="login100-pic js-tilt" data-tilt>
                        <img src="Login_v1/images/img-01.png" alt="IMG">
                    </div>

                    <form class="login100-form validate-form" runat="server">
                        <span class="login100-form-title">Şifre Yenileme
                        </span>

                        <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                            <asp:TextBox ID="TxtMail" class="input100" runat="server" placeholder="E-mail" ></asp:TextBox>
                            <span class="focus-input100"></span>
                            <span class="symbol-input100" >
                                <i class="fa fa-envelope" aria-hidden="true" ></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate="Password is required">
                           <asp:TextBox ID="TxtSifre" class="input100" runat="server" placeholder="Şifre" ></asp:TextBox>
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-lock" aria-hidden="true"></i>
                            </span>
                        </div>

                        <div class="container-login100-form-btn">
                            <asp:Button ID="Button1" class="login100-form-btn" runat="server" Text="Kaydet" OnClick="Button1_Click"  />
                        </div>

                          <div class="text-center p-t-12">
                              <span class="txt1">Üye 
                            </span>
                            <a class="txt2" href="Giris.aspx"> Girişi
                            </a>
                        </div>

                        <div class="text-center p-t-136">
                            <a class="txt2" href="#">Hesabını Oluştur
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>




        <!--===============================================================================================-->
        <script src="Login_v1/vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="Login_v1/vendor/bootstrap/js/popper.js"></script>
        <script src="Login_v1/vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="Login_v1/vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/tilt/tilt.jquery.min.js"></script>
        <script>
            $('.js-tilt').tilt({
                scale: 1.1
            })
        </script>
        <!--===============================================================================================-->
        <script src="Login_v1/js/main.js"></script>

</body>
</html>
