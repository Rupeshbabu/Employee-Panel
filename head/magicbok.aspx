<%@ Page Title="" Language="C#" MasterPageFile="~/head/Head.Master" AutoEventWireup="true" CodeBehind="magicbok.aspx.cs" Inherits="_2019MU.head.magicbok" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div class="container">

         <asp:Label ID="lblMsg" runat="server"></asp:Label>


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
                                     <th>Action</th>
                                 </tr>
                             </thead>
                         </HeaderTemplate>
                         <ItemTemplate>
                             <tbody>
                                 <tr>
                                     <td><%# Eval("id") %></td>
                                     <td><%#Eval("sname") %></td>
                                     <td><%# Eval("sdate","{0:dd MMM yyyy}") %></td>
                                     <td><%# Eval("sshots") %></td>
                                     <td><%# Eval("sscene") %></td>
                                     <td><%# Eval("sframes") %></td>
                                     <td><%# Eval("shotstatus") %></td>
                                     <td><%# Eval("startedon","{0:dd MMM yyyy}") %></td>
                                     <td><%# Eval("completedon","{0:dd MMM yyyy}") %></td>
                                     <td><%# Eval("approval1") %></td>
                                     <td><%# Eval("note") %></td>
                                     <td><%# Eval("approval2") %></td>
                                     <td>
                                         <asp:Button ID="btnApprove" runat="server" Text="Approve" CssClass="btn btn-success btn-sm" OnClick="btnApprove_Click" />
                                     </td>
                                     <td>
                                         <asp:Button ID="btnReject" runat="server" Text="Re-Take" CssClass="btn btn-danger btn-sm" OnClick="btnReject_Click" />
                                     </td>
                                     <td>

                                     </td>
                                 </tr>
                             </tbody>
                         </ItemTemplate>
                     </asp:Repeater>

                 </table>
             </div>
         
         
         
         </div>
        </form>

   





    </div>



</asp:Content>
