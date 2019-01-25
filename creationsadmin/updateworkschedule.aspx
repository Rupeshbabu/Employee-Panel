<%@ Page Title="" Language="C#" MasterPageFile="~/creationsadmin/CreationAdmin.Master" AutoEventWireup="true" CodeBehind="updateworkschedule.aspx.cs" Inherits="_2019MU.creationsadmin.updateworkschedule" %>
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
                  <label class="col-sm-4 form-control-label">Name <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:Label ID="lblName" runat="server" Text="Name" CssClass="form-control"></asp:Label> 
                  </div>
                    
                </div>
                    <div class="row mg-t-20">
                  <label class="col-sm-4 form-control-label">Date <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:Label ID="lblDate" runat="server" Text="Date" CssClass="form-control"></asp:Label> 
                  </div>
                    
                </div>

               <div class="row mg-t-20">
                  <label class="col-sm-4 form-control-label">Shot Number <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:TextBox ID="txtshot" runat="server" CssClass="form-control" placeholder="Enter Shot Number"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Required Field" ControlToValidate="txtshot" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                  </div>  
                </div>

                <div class="row mg-t-20">
                  <label class="col-sm-4 form-control-label">Shot Scene <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:TextBox ID="txtScene" runat="server" CssClass="form-control" placeholder="Enter Shot Scene"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Required Field" ControlToValidate="txtScene" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                  </div>  
                </div>

                <div class="row mg-t-20">
                  <label class="col-sm-4 form-control-label">Shot Frames <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:TextBox ID="txtFrames" runat="server" CssClass="form-control" placeholder="Enter Shot Frames"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Required Field" ControlToValidate="txtFrames" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                  </div>  
                </div>

                <div class="row mg-t-20">
                  <label class="col-sm-4 form-control-label">Shot Status <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:TextBox ID="txtStatus" runat="server" CssClass="form-control" placeholder="Enter Shot Status"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Required Field" ControlToValidate="txtStatus" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                  </div>  
                </div>

                <div class="row mg-t-20">
                  <label class="col-sm-4 form-control-label">Started On <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:TextBox ID="txtFrom" runat="server" CssClass="form-control" TextMode="Date" placeholder="YYYY-MM-DD"></asp:TextBox>
                      <asp:Label ID="lblstarted" runat="server" Text="startedon"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* Required Field" ControlToValidate="txtFrom" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                  </div>  
                </div>

                <div class="row mg-t-20">
                  <label class="col-sm-4 form-control-label">Completed On <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:TextBox ID="txtTo" runat="server" CssClass="form-control" TextMode="Date" placeholder="YYYY-MM-DD"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="* Required Field" ControlToValidate="txtTo" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                  </div>  
                </div>

                <div class="row mg-t-20">
                  <label class="col-sm-4 form-control-label">Pushyanth Approval <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:TextBox ID="txtApp1" runat="server" CssClass="form-control" placeholder="Enter Approval"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="* Required Field" ControlToValidate="txtApp1" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                  </div>  
                </div>

                <div class="row mg-t-20">
                  <label class="col-sm-4 form-control-label">Note <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:TextBox ID="txtNote" runat="server" CssClass="form-control" placeholder="Enter Note"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="* Required Field" ControlToValidate="txtNote" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                  </div>  
                </div>

                <div class="row mg-t-20">
                  <label class="col-sm-4 form-control-label">Sir Approval <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:TextBox ID="txtApp2" runat="server" CssClass="form-control" placeholder="Enter Shot Status"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="* Required Field" ControlToValidate="txtApp2" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                  </div>  
                </div>

                <div class="form-layout-footer mg-t-30">
                    <asp:Button ID="btnUpdate" runat="server" Text="Update Schedule" CssClass="btn btn-primary bd-0" OnClick="btnUpdate_Click" />
                    
                    <input id="Reset1" type="reset" value="Cancel" class="btn btn-secondary bd-0" />
                  
                    

                </div><!-- form-layout-footer -->

                    <asp:Label ID="lblmsg" runat="server"></asp:Label>



                    </div>
                    </form>
                </div>
              </div>
            </div>
        

    </div>

</asp:Content>
