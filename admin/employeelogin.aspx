<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="employeelogin.aspx.cs" Inherits="_2019MU.admin.employeelogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script>
      $(function(){

        // showing modal with effect
        $('.modal-effect').on('click', function(e){
          e.preventDefault();
          var effect = $(this).attr('data-effect');
          $('#modaldemo6').addClass(effect);
        });

        
      });
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
     <div class="container">
         
         

          <div class="card card-dash-one mg-t-20">
          <div class="row no-gutters">
            <div class="col-lg-3">
              <i class="icon ion-ios-briefcase-outline"></i>
              <div class="dash-content">
                <%--<label class="tx-primary">All Employees</label>--%>
                  <asp:Button ID="btnAll" runat="server" Text="All Employees" CssClass="btn btn-warning btn-lg" OnClick="btnAll_Click"  />
               <%-- <h2>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </h2>--%>
              </div><!-- dash-content -->
            </div><!-- col-3 -->
            <div class="col-lg-3">
              <i class="icon ion-ios-world-outline"></i>
              <div class="dash-content">
                <%--<label class="tx-success">Web World Employees</label>--%>
                <%--<h2>465,183</h2>--%>
                  <asp:Button ID="btnWeb" runat="server" Text="Web World" CssClass="btn btn-primary btn-lg" OnClick="btnWeb_Click" />
              </div><!-- dash-content -->
            </div><!-- col-3 -->
            <div class="col-lg-3">
              <i class="icon ion-ios-body-outline"></i>
              <div class="dash-content">
                <%--<label class="tx-purple">Creations</label>--%>
                  <asp:Button ID="btnCreations" runat="server" Text="Creations" CssClass="btn btn-success btn-lg" OnClick="btnCreations_Click"  />
                <%--<h2>781,524</h2>--%>
              </div><!-- dash-content -->
            </div><!-- col-3 -->
            <div class="col-lg-3">
              <i class="icon ion-ios-locked-outline"></i>
              <div class="dash-content">
                <%--<label class="tx-danger">Earnings</label>--%>
                  <a href="" class="btn btn-primary" data-toggle="modal" data-target="#modaldemo6">Change Password</a>

                <%--<h2>369,657</h2>--%>
              </div><!-- dash-content -->
            </div><!-- col-3 -->
          </div><!-- row -->
        </div><!-- card -->


          


          <div class="container">
         <div class="section-wrapper mg-t-20">
          <label class="section-title">Employee Login List</label>
          <p class="mg-b-20 mg-sm-b-40"> All,Creations and Web World Employee login List.</p>
             
           
             <div class="table-responsive">
                 <table class="table table-bordered mg-b-0">
                     <asp:Repeater ID="Repeater1" runat="server">
                         <HeaderTemplate>
                             <thead>
                                 <tr>
                                     <th>#ID</th>
                                     <th>Employee Name</th>
                                     <th>Password</th>
                                     <th>Department</th>
                                     
                                 </tr>
                             </thead>

                         </HeaderTemplate>
                         <ItemTemplate>
                             <tbody>
                                 <tr>
                                     <td><%#Eval("id") %></td>
                                     <td><%#Eval("username") %></td>
                                     <td><%#Eval("password") %></td>
                                     <td><%#Eval("department") %></td>
                                 </tr>
                             </tbody>
                         </ItemTemplate>
                     </asp:Repeater>
                 </table>
             </div>
        </div>
        </div>
             

          </div>
        



    <!-- MODAL GRID -->
    <div id="modaldemo6" class="modal fade">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content bd-0 bg-transparent rounded overflow-hidden">
          <div class="modal-body pd-0">
            <div class="row no-gutters">
              <div class="signin-wrapper">

      <div class="signin-box">
        
        <h2 class="signin-title-primary">Update Employee Password</h2>
        

        <div class="form-group">
          <asp:TextBox ID="txtId" runat="server" CssClass="form-control" placeholder="Enter ID"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="txtId" Display="Dynamic"></asp:RequiredFieldValidator>
        </div><!-- form-group -->
        <div class="form-group">
           <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Enter New Password"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="txtPassword" Display="Dynamic"></asp:RequiredFieldValidator>
        </div><!-- form-group -->
        <div class="form-group">
            <asp:TextBox ID="txtCfmpassword" runat="server" CssClass="form-control" placeholder="Enter Confirm Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="txtCfmpassword" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" ControlToCompare="txtPassword" ControlToValidate="txtCfmpassword" runat="server" ErrorMessage="Doesn't Match Password" CssClass="text-danger" Display="Dynamic"></asp:CompareValidator>
        </div>
          <asp:Button ID="btnUpdate" runat="server" Text="Update Password" CssClass="btn btn-primary btn-block btn-signin" OnClick="btnUpdate_Click" />

          <asp:Label ID="lblMsg" runat="server"></asp:Label>

      </div><!-- signin-box -->

    </div><!-- signin-wrapper -->

            </div><!-- row -->
          </div><!-- modal-body -->
        </div><!-- modal-content -->
      </div><!-- modal-dialog -->
    </div><!-- modal -->
    
    
        </form>

</asp:Content>
