<%@ Page Title="" Language="C#" MasterPageFile="~/creations/Creations.Master" AutoEventWireup="true" CodeBehind="animation.aspx.cs" Inherits="_2019MU.creations.animation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
         <div class="section-wrapper">
          <label class="section-title">Magic Book Work Schedule</label>
          <p class="mg-b-20 mg-sm-b-40">Magic Book Employee Work Schedule Sheet</p>
             
           
             <div class="table-responsive">
                 <table class="table table-bordered mg-b-0">

                     <asp:Repeater ID="Repeater1" runat="server">
                         <HeaderTemplate>
                             <thead>
                                 <tr>
                                     <th>#ID</th>
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
                                 </tr>
                             </thead>
                         </HeaderTemplate>
                         <ItemTemplate>
                             <tbody>
                                 <tr>
                                     <td><%# Eval("id") %></td>
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
                                 </tr>
                             </tbody>
                         </ItemTemplate>
                     </asp:Repeater>

                 </table>
             </div>
         
         
         
         </div>
    </div>

</asp:Content>
