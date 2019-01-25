<%@ Page Title="" Language="C#" MasterPageFile="~/web/Web.Master" AutoEventWireup="true" CodeBehind="applyleave.aspx.cs" Inherits="_2019MU.web.applyleave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">


    <div class="row row-sm mg-t-20">
          <div class="col-lg-8">
            <div class="section-wrapper">
              <label class="section-title">APPLY LEAVE</label>
              <p class="mg-b-20 mg-sm-b-40">Apply Leave for Employee</p>
                <form runat="server" id="leaveform">
              <div class="form-layout form-layout-4">
                <div class="row">
                  <label class="col-sm-4 form-control-label">Employee Name <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:Label ID="username" runat="server" Text="Label" CssClass="form-control is-valid"></asp:Label>
                  </div>
                </div><!-- row -->
                <div class="row mg-t-20">
                  <label class="col-sm-4 form-control-label">From <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:TextBox ID="leaveFrom" runat="server" CssClass="form-control" placeholder="Ex: YYYY-MM-DD" TextMode="Date" OnTextChanged="leaveFrom_TextChanged" AutoPostBack="true"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Required Field" ControlToValidate="leaveFrom" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                  </div>
                    
                </div>
                <div class="row mg-t-20">
                  <label class="col-sm-4 form-control-label">To <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:TextBox ID="leaveTo" runat="server" CssClass="form-control" placeholder="Ex: YYYY-MM-DD" TextMode="Date"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Required Field" ControlToValidate="leaveTo" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                  </div>
                </div>
                  <div class="row mg-t-20">
                  <label class="col-sm-4 form-control-label">Leave Type <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:DropDownList ID="type" runat="server" CssClass="form-control">
                          <asp:ListItem Value="0">-select One-</asp:ListItem>
                          <asp:ListItem Value="1">Monthly Leave</asp:ListItem>
                          <asp:ListItem Value="2">LOWP</asp:ListItem>
                      </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="* Required Field" ControlToValidate="type" CssClass="text-danger" Display="Dynamic" InitialValue="0"></asp:RequiredFieldValidator>
                      <asp:Label ID="lblmsg" runat="server" CssClass="text-warning"></asp:Label>
                  </div>
                </div>
                  <div class="row mg-t-20">
                  <label class="col-sm-4 form-control-label">Number of Days <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:DropDownList ID="days" runat="server" CssClass="form-control">
                          <asp:ListItem Value="0">-Select One-</asp:ListItem>
                          <asp:ListItem>0.5</asp:ListItem>
                           <asp:ListItem>1</asp:ListItem>
                           <asp:ListItem>1.5</asp:ListItem>
                           <asp:ListItem>2</asp:ListItem>
                           <asp:ListItem>2.5</asp:ListItem>
                           <asp:ListItem>3</asp:ListItem>
                           <asp:ListItem>3.5</asp:ListItem>
                           <asp:ListItem>4</asp:ListItem>
                           <asp:ListItem>4.5</asp:ListItem>
                           <asp:ListItem>5</asp:ListItem>
                           <asp:ListItem>5.5</asp:ListItem>
                           <asp:ListItem>6</asp:ListItem>
                           <asp:ListItem>6.5</asp:ListItem>
                           <asp:ListItem>7</asp:ListItem>
                           <asp:ListItem>7.5</asp:ListItem>
                           <asp:ListItem>8</asp:ListItem>
                           <asp:ListItem>8.5</asp:ListItem>
                           <asp:ListItem>9</asp:ListItem>
                           <asp:ListItem>9.5</asp:ListItem>
                           <asp:ListItem>10</asp:ListItem>
                      </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Required Field" ControlToValidate="days" InitialValue="0" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                  </div>
                </div>
                  <div class="row mg-t-20">
                  <label class="col-sm-4 form-control-label">Report For <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:DropDownList ID="report" runat="server" CssClass="form-control">
                          <asp:ListItem Value="0">-Select One-</asp:ListItem>
                          <asp:ListItem Value="1">Head of Director</asp:ListItem>
                          <asp:ListItem Value="2" Enabled="false">Manager</asp:ListItem>
                      </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required Field" ControlToValidate="report" InitialValue="0" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                  </div>
                </div>
                  <div class="row mg-t-20">
                  <label class="col-sm-4 form-control-label">Reason for Leave <span class="tx-danger">*</span></label>
                  <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                      <asp:TextBox ID="reason" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* Required Field" ControlToValidate="reason" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                      <asp:HiddenField ID="HiddenField1" runat="server" />
                  </div>
                </div>
                
                <div class="form-layout-footer mg-t-30">
                    <asp:Button ID="btnApply" runat="server" Text="Apply Leave" CssClass="btn btn-primary bd-0" OnClick="btnApply_Click" />
                    <input id="Reset1" type="reset" value="Cancel" class="btn btn-secondary bd-0" />
                  
                </div><!-- form-layout-footer -->
              </div><!-- form-layout -->
                    </form>
            </div><!-- section-wrapper -->
          </div><!-- col-6 -->


        </div>
        </div>
        

</asp:Content>
