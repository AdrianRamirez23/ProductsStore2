<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProductStore.Web.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  
        
    <title>Products Store</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
<!--===============================================================================================-->
</head>
<body  style="background-color:#e9faff">
    <form id="form1" runat="server">

        <div class="limiter" >
                 <div class="container col-4"  >
                    <div class="alert alert-warning alert-dismissible fade show" role="alert" id="DivAlerta" style="margin-top:3%" runat="server">
                       <strong>Alerta!</strong> <asp:Label ID="lblAlerta" runat="server" Text=""></asp:Label>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
               </div>
                
            <div class="container-login100" style="background-color:#e9faff">
                <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
                    <div class="login100-form validate-form">
                        <span class="login100-form-title p-b-33">Account Login
                        </span>

                        <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                            <asp:TextBox ID="txtuser" class="input100" PlaceHolder="User Name" runat="server"></asp:TextBox>
                          <%--  <input class="input100" type="text" name="email" placeholder="Email"/>--%>
                            <span class="focus-input100-1"></span>
                            <span class="focus-input100-2"></span>
                        </div>

                        <div class="wrap-input100 rs1 validate-input" data-validate="Password is required">
                            <asp:TextBox ID="txtPass" class="input100" TextMode="Password" PlaceHolder="Password" runat="server"></asp:TextBox>
                            <%--<input class="input100" type="password" name="pass" placeholder="Password"/>--%>
                            <span class="focus-input100-1"></span>
                            <span class="focus-input100-2"></span>
                        </div>

                        <div class="container-login100-form-btn m-t-20">
                           <%-- <button class="login100-form-btn">
                                Sign in
                            </button>--%>
                            <asp:Button ID="btnLogin" class="login100-form-btn"  OnClick="btnLogin_Click" runat="server" Text="Login" />
                        </div>

                        <div class="text-center p-t-45 p-b-4">
                            <span class="txt1">Forgot
                            </span>

                            <a href="#" class="txt2 hov1">Username / Password?
                            </a>
                        </div>

                        <div class="text-center">
                         <%--   <span class="txt1">Create an account?
                            </span>--%>

                         <%--   <a href="#" class="txt2 hov1">Sign up
                            </a>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
	
        
    </form>
</body>
  <!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
</html>
