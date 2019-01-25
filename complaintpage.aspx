<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="complaintpage.aspx.cs" Inherits="_2019MU.complaintpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Meta -->
    <meta name="description" content="Premium Quality and Responsive UI for Dashboard." />
    <meta name="author" content="ThemePixels" />

    <title>COMPLAINT PAGE | MYUPIX</title>

    <!-- Vendor css -->
    <link href="../lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="../lib/Ionicons/css/ionicons.css" rel="stylesheet" />

    <!-- Slim CSS -->
    <link rel="stylesheet" href="../css/slim.css" />
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="signin-wrapper">

      <div class="signin-box">
        <h2 class="slim-logo"><a href="index.html">MYUPIX<span>.</span></a></h2>
        <h2 class="signin-title-primary">Welcome back!</h2>
        <h3 class="signin-title-secondary">Register Your Complaint.</h3>

        <div class="form-group">
            <asp:Label ID="datenow" runat="server" CssClass="form-control"></asp:Label>
            <asp:Label ID="lblIP" runat="server" Visible="false"></asp:Label>
        </div><!-- form-group -->
        <div class="form-group mg-b-50">
            <asp:TextBox ID="message" runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Enter Your Message"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="message" Display="Dynamic"></asp:RequiredFieldValidator>
        </div><!-- form-group -->
          <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary btn-block btn-signin" OnClick="btnSubmit_Click"  />
        <p class="mg-b-0">Login your Employee Panel? <a href="login.aspx">Sign In</a></p>
      </div><!-- signin-box -->

    </div><!-- signin-wrapper -->


    </form>

    
    <script src="../lib/jquery/js/jquery.js"></script>
    <script src="../lib/popper.js/js/popper.js"></script>
    <script src="../lib/bootstrap/js/bootstrap.js"></script>

    <script src="../js/slim.js"></script>
</body>
</html>
