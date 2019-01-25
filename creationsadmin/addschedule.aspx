<%@ Page Title="" Language="C#" MasterPageFile="~/creationsadmin/CreationAdmin.Master" AutoEventWireup="true" CodeBehind="addschedule.aspx.cs" Inherits="_2019MU.creationsadmin.addschedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">


    <div class="row row-sm mg-t-20">
          <div class="col-lg-8">
            <div class="section-wrapper">
              <label class="section-title">WORK SCHEDULE</label>
              <p class="mg-b-20 mg-sm-b-40">Add Employee Work Schedule</p>
                <form runat="server" id="leaveform">
                <div class="form-layout form-layout-4">
                
                <div class="row mg-t-20">
                  <label class="col-sm-4 form-control-label">Select Name <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:DropDownList ID="dropName" runat="server" CssClass="form-control">
                          <asp:ListItem Value="0">-Select Name-</asp:ListItem>
                          <asp:ListItem Text="7hills.m">7hills.m</asp:ListItem>
                          <asp:ListItem Text="bobby.a">bobby.a</asp:ListItem>
                          <asp:ListItem Text="sandeepkumar">sandeepkumar</asp:ListItem>
                          <asp:ListItem Text="chetankumar.t">chetankumar.t</asp:ListItem>
                          <asp:ListItem Text="raghuram.n">raghuram.n</asp:ListItem>
                          <asp:ListItem Text="devimounika">devimounika</asp:ListItem>
                          <asp:ListItem Text="prasanthi.k">prasanthi.k</asp:ListItem>
                          <asp:ListItem Text="create">create</asp:ListItem>
                      </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" InitialValue="0" ErrorMessage="* Required Field" ControlToValidate="dropName" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                  </div>
                    
                </div>


                    <div class="row mg-t-20">
                  <label class="col-sm-4 form-control-label">Shot No. <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:TextBox ID="txtShot" TextMode="Number" runat="server" CssClass="form-control" placeholder="Enter Shot Number" OnTextChanged="txtShot_TextChanged" AutoPostBack="true"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Required Field" ControlToValidate="txtShot" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                      <asp:Label ID="Label1" runat="server"></asp:Label>
                  </div>
                    
                </div>

                <div class="row mg-t-20">
                  <label class="col-sm-4 form-control-label">Date <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" placeholder="Ex: YYYY-MM-DD" TextMode="Date"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Required Field" ControlToValidate="txtDate" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                  </div>
                    
                </div>

                  

                  <div class="form-layout-footer mg-t-30">
                    <asp:Button ID="btnSubmit" runat="server" Text="Add Schedule" CssClass="btn btn-primary bd-0" OnClick="btnSubmit_Click" />
                    <input id="Reset1" type="reset" value="Cancel" class="btn btn-secondary bd-0" />
                  
                </div><!-- form-layout-footer -->

                    <asp:Label ID="lblmessage" runat="server"></asp:Label>

                  </div>
                    </form>
                    </div>
              
              </div>
        </div>
        </div>
   


</asp:Content>
