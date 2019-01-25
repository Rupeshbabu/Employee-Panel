<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="_2019MU.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Meta -->
    <meta name="description" content="Premium Quality and Responsive UI for Dashboard." />
    <meta name="author" content="ThemePixels" />

    <title>LOGIN | MYUPIX</title>

    <!-- Vendor css -->
    <link href="../lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="../lib/Ionicons/css/ionicons.css" rel="stylesheet" />

    <!-- Slim CSS -->
    <link rel="stylesheet" href="../css/slim.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="d-md-flex flex-row-reverse">
      <div class="signin-right">

        <div class="signin-box">
          <h2 class="signin-title-primary">Welcome back!</h2>
          <h3 class="signin-title-secondary">Sign in to continue.</h3>

          <div class="form-group">
            
              <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter your Username"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Required Field" ControlToValidate="txtUsername" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
          </div><!-- form-group -->
          <div class="form-group mg-b-50">
              <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Enter your password" TextMode="Password"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Required Field" ControlToValidate="txtPassword" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
          </div><!-- form-group -->

            <asp:Label ID="Label1" runat="server" CssClass="text-danger"></asp:Label>
          
            <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary btn-block btn-signin" Text="Sign In" OnClick="btnSubmit_Click" />
            
            <a href="complaintpage.aspx" class="tx-16 d-block mg-t-10 tx-center text-danger">Register Complaint</a>
            <a href="#" class="tx-16 d-block mg-t-10 tx-center text-info">Login Help..!</a>
        </div>

      </div><!-- signin-right -->
      <div class="signin-left">
        <div class="signin-box">
          <h2 class="slim-logo"><a href="index.html">MY UPIX<span>.</span></a></h2>

          <p class="text-justify"><b>Important:</b> This is a restricted access site and is intended for the exclusive use by employees of UPIX. UPIX reserves all rights to the site and any violation or unauthorized access to the site will be dealt in accordance with the applicable laws.</p>

          <p class="text-justify"><b>For employees:</b> You are required to strictly abide by UPIX's Information and Security policies, especially in maintaining the confidentiality of your UPIX ID and Password. Any unauthorized use, distribution or transmission of the contents of the site for public or commercial purposes is strictly prohibited. Any copies made from the site, whether hardcopy or electronic, must be handled with confidentiality and the use of such information shall be restricted only to the intended use. In the event of suspicion of a security breach or unauthorized access, it must be immediately reported to UPIX's Team. You agree to comply with applicable laws and regulations governing the use of computer and telecommunication technology. Violation may result in immediate loss of computer access privileges and disciplinary action by UPIX. Any suspected criminal violation shall be reported to the appropriate regulatory and/or law enforcement agencies.</p>

          <p><a href="#" class="btn btn-outline-secondary pd-x-25">Learn More</a></p>

          <p class="tx-12">&copy; Copyright 2018. All Rights Reserved.</p>
        </div>
      </div><!-- signin-left -->
    </div><!-- d-flex -->
    </form>

     



    <script src="../lib/jquery/js/jquery.js"></script>
    <script src="../lib/jquery-ui/js/jquery-ui.js"></script>
    <script src="../lib/popper.js/js/popper.js"></script>
    <script src="../lib/bootstrap/js/bootstrap.js"></script>
    <script src="../lib/jquery.cookie/js/jquery.cookie.js"></script>

    <script src="../js/slim.js"></script>
   


</body>
</html>
