<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="empfilterleave.aspx.cs" Inherits="_2019MU.admin.empfilterleave" %>
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

   
    <form id="leaveBalance" runat="server">
    <div class="container">

        <div class="section-wrapper mg-t-20">
          <label class="section-title">Leave Balance</label>
          <p class="mg-b-20 mg-sm-b-40">Employee Leave Balance.</p>
            

            


                <!-- MODAL GRID -->
    <div id="modaldemo6" class="modal fade">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content bd-0 bg-transparent rounded overflow-hidden">
          <div class="modal-body pd-0">
            <div class="row no-gutters">
              <div class="signin-wrapper">

      <div class="signin-box">
        
        <h2 class="signin-title-primary">Employee Leave Balance</h2>
        

        <div class="form-group">
            <asp:DropDownList ID="DropDownList1"  runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="username" DataValueField="username"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1"  runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT [username] FROM [login]">
                    
                </asp:SqlDataSource>
         
        </div><!-- form-group -->
        <div class="form-group">
            <asp:DropDownList ID="dropDate" runat="server" CssClass="form-control">
                    <asp:ListItem Value="0">-Select Month-</asp:ListItem>
                    <asp:ListItem Value="01">January</asp:ListItem>
                    <asp:ListItem Value="02">February</asp:ListItem>
                    <asp:ListItem Value="03">March</asp:ListItem>
                    <asp:ListItem Value="04">April</asp:ListItem>
                    <asp:ListItem Value="05">May</asp:ListItem>
                    <asp:ListItem Value="06">June</asp:ListItem>
                    <asp:ListItem Value="07">July</asp:ListItem>
                    <asp:ListItem Value="08">August</asp:ListItem>
                    <asp:ListItem Value="09">September</asp:ListItem>
                    <asp:ListItem Value="10">October</asp:ListItem>
                    <asp:ListItem Value="11">November</asp:ListItem>
                    <asp:ListItem Value="12">December</asp:ListItem>
                </asp:DropDownList>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="dropDate" InitialValue="0" Display="Dynamic"></asp:RequiredFieldValidator>
        </div><!-- form-group -->
        <asp:Button ID="btnSubmit" runat="server" Text="Search" CssClass="btn btn-primary btn-block btn-signin" OnClick="btnSubmit_Click" />
          

          <asp:Label ID="lblMsg" runat="server"></asp:Label>

      </div><!-- signin-box -->

    </div><!-- signin-wrapper -->

            </div><!-- row -->
          </div><!-- modal-body -->
        </div><!-- modal-content -->
      </div><!-- modal-dialog -->
    </div><!-- modal -->







            <div class="d-flex align-items-center justify-content-end bg-gray-100 ht-md-80 bd pd-x-20 mg-t-10">
            <div class="d-md-flex pd-y-20 pd-md-y-0">
             
                
               
            <a href="" class="btn btn-primary" data-toggle="modal" data-target="#modaldemo6">Search Leave Balance</a>    
                
            </div>
          </div><!-- d-flex -->
               


            <div class="section-wrapper mg-t-20">
          <label class="section-title">Employee Leave</label>
          <p class="mg-b-20 mg-sm-b-40">Web World and Creations Leave List.</p>

          <div class="table-responsive">
              <table class="table table-bordered mg-b-0">
              <asp:Repeater ID="Repeater1" runat="server">
                  <HeaderTemplate>
                      <thead>
                          <tr>
                              <th>#ID</th>
                              <th>Name</th>
                              <th>From</th>
                              <th>To</th>
                              <th>Type</th>
                              <th>Days</th>
                              <th>Reason</th>
                              <th>Status</th>
                              <th>Applyon</th>
                          </tr>
                      </thead>
                  </HeaderTemplate>
                  <ItemTemplate>
                      <tbody>
                          <tr>
                              <td><%#Eval("id") %></td>
                              <td><%#Eval("username") %></td>
                              <td><%#Eval("leavefrom","{0:dd MMM yyyy}") %></td>
                              <td><%#Eval("leaveto","{0:dd MMM yyyy}") %></td>
                              <td><%#Eval("leavetype") %></td>
                              <td><%#Eval("days") %></td>
                              <td><%#Eval("reason") %></td>
                              <td><%#Eval("status") %></td>
                              <td><%#Eval("applyon","{0:dd MMM yyyy hh:mm}") %></td>
                              
                          </tr>
                      </tbody>
                  </ItemTemplate>
              </asp:Repeater>
            </table>
          </div><!-- table-responsive -->
        </div><!-- section-wrapper -->





        </div>

    </div>


     </form>


</asp:Content>
