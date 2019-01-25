<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="addemp.aspx.cs" Inherits="_2019MU.admin.addemp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">

        <div class="section-wrapper mg-t-20">
          <label class="section-title">ADD EMPLOYEE LOGIN DETAILS</label>
          <p class="mg-b-20 mg-sm-b-40">Add Employee Login Panel to Access Details.</p>

          <div class="form-card-wrapper">
            <div class="card wd-350 shadow-base">
              <div class="card-body pd-x-20 pd-xs-40">
                <h5 class="tx-xs-24 tx-normal tx-gray-900 mg-b-15">Add Employee Login</h5>
              

                
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                 <div class="form-group">
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" OnTextChanged="txtUsername_TextChanged" AutoPostBack="true"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="txtUsername" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label1" runat="server" CssClass="text-capitalize"></asp:Label>
                </div><!-- form-group -->
                <div class="form-group">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="txtPassword" Display="Dynamic"></asp:RequiredFieldValidator>
                </div><!-- form-group -->
                <div class="form-group">
                    <asp:DropDownList ID="drpDepartment" runat="server" CssClass="form-control">
                        <asp:ListItem Value="0">-Select One-</asp:ListItem>
                        <asp:ListItem>Creations</asp:ListItem>
                        <asp:ListItem>Web World</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="drpDepartment" Display="Dynamic" InitialValue="0"></asp:RequiredFieldValidator>
                </div><!-- form-group -->
                   <asp:Button ID="btnSubmit" runat="server" Text="Add Employee" CssClass="btn btn-primary btn-block" OnClick="btnSubmit_Click" />
                            <span class="text-success" id="success" runat="server">Create Employee Login Details Successfull...!!!</span>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                

               
              </div><!-- card-body -->
            </div><!-- card -->
          </div><!-- form-card-wrapper -->
        </div><!-- section-wrapper -->


    </div>


</asp:Content>
