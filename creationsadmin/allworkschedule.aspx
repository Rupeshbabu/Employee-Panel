<%@ Page Title="" Language="C#" MasterPageFile="~/creationsadmin/CreationAdmin.Master" AutoEventWireup="true" CodeBehind="allworkschedule.aspx.cs" Inherits="_2019MU.creationsadmin.allworkschedule" %>
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


     <div class="container">

         <div class="d-flex align-items-center justify-content-end bg-gray-100 ht-md-80 bd pd-x-20 mg-t-10">
            <div class="d-md-flex pd-y-20 pd-md-y-0">
             
                
               
            <a href="" class="btn btn-primary" data-toggle="modal" data-target="#modaldemo6">Search Employee Schedule</a>    
                
            </div>
          </div><!-- d-flex -->

         <form runat="server">

         <div class="section-wrapper mg-t-20">
          <label class="section-title">Magic Book Work Schedule</label>
          <p class="mg-b-20 mg-sm-b-40">Magic Book Employee Work Schedule Sheet</p>
             
           
             <div class="table-responsive">
                 <table class="table table-bordered mg-b-0">

                     <asp:Repeater ID="Repeater1" runat="server">
                         <HeaderTemplate>
                             <thead>
                                 <tr>
                                     <th>#ID</th>
                                     <th>Name</th>
                                     <th>Date</th>
                                     <th>Shots</th>
                                     <th>Scene</th>
                                     <th>Frames</th>
                                     <th>Status</th>
                                     <th>From</th>
                                     <th>To</th>
                                     <th>Pushyanth Approval</th>
                                     <th>Note</th>
                                     <th>Sir Approval</th>
                                     <th>Update</th>
                                     <th>Delete</th>
                                    
                                 </tr>
                             </thead>
                         </HeaderTemplate>
                         <ItemTemplate>
                             <tbody>
                                 <tr>
                                     <td><%# Eval("id") %></td>
                                     <td><%#Eval("sname") %></td>
                                     <td><%# Eval("sdate","{0:dd MMM yyyy}") %></td>
                                     <td>Shot No.<%# Eval("sshots") %></td>
                                     <td><%# Eval("sscene") %></td>
                                     <td><%# Eval("sframes") %></td>
                                     <td><%# Eval("shotstatus") %></td>
                                     <td><%# Eval("startedon","{0:dd MMM yyyy}") %></td>
                                     <td><%# Eval("completedon","{0:dd MMM yyyy}") %></td>
                                     <td><%# Eval("approval1") %></td>
                                     <td><%# Eval("note") %></td>
                                     <td><%# Eval("approval2") %></td>
                                     <td>
                                         <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-success btn-sm" NavigateUrl='<%# Eval("ID", "~/creationsadmin/updateworkschedule.aspx?ID={0}") %>'>Update</asp:HyperLink>
                                     </td>
                                     <td>
                                         <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-danger btn-sm" NavigateUrl='<%# Eval("ID", "~/creationsadmin/deleteschedule.aspx?ID={0}") %>'>Delete</asp:HyperLink>
                                     </td>
                                     
                                     
                                 </tr>
                             </tbody>
                         </ItemTemplate>
                     </asp:Repeater>

                 </table>
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
        
        <h2 class="signin-title-primary">Employee Wise Work Schedule</h2>
        

        <div class="form-group">
            <asp:DropDownList ID="dropAnimators" runat="server" CssClass="form-control">
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" InitialValue="0" ControlToValidate="dropAnimators" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>

          <asp:Button ID="btnSearch" runat="server" Text="Search Employee" CssClass="btn btn-primary btn-block btn-signin" OnClick="btnSearch_Click" />

          <asp:Label ID="lblMsg" runat="server"></asp:Label>

      </div><!-- signin-box -->

    </div><!-- signin-wrapper -->

            </div><!-- row -->
          </div><!-- modal-body -->
        </div><!-- modal-content -->
      </div><!-- modal-dialog -->
    </div><!-- modal -->

        </form>





    </div>


</asp:Content>
