<%@ Page Title="" Language="C#" MasterPageFile="~/head/Head.Master" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="_2019MU.head.changepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">

        <div class="section-wrapper mg-t-20">
          <label class="section-title">Change Login password</label>
          <p class="mg-b-20 mg-sm-b-40">Change Employee Login Password...!!!</p>
            <form runat="server" id="changePassword">
          <div class="form-layout form-layout-7">
            <div class="row no-gutters">
              <div class="col-5 col-sm-4">
                New Password:
              </div><!-- col-4 -->
              <div class="col-7 col-sm-8">
                  <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Required Field" ControlToValidate="txtPassword" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
              </div><!-- col-8 -->
            </div><!-- row -->
            <div class="row no-gutters">
              <div class="col-5 col-sm-4">
                Confirm Password:
              </div><!-- col-4 -->
              <div class="col-7 col-sm-8">
                  <asp:TextBox ID="txtCpassword" runat="server" CssClass="form-control"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Required Field" ControlToValidate="txtCpassword" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                  <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="** Must be same" CssClass="text-danger" ControlToValidate="txtCpassword" ControlToCompare="txtPassword" Display="Dynamic"></asp:CompareValidator>
              </div><!-- col-8 -->
            </div><!-- row -->
              <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success btn-block mg-b-5" OnClick="btnSubmit_Click" />
          </div><!-- form-layout -->
                <span class="text-success" id="success" runat="server"> Password Change Successfull...!</span>
                </form>
        </div><!-- section-wrapper -->

    </div>

</asp:Content>
