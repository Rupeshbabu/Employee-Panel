<%@ Page Title="" Language="C#" MasterPageFile="~/web/Web.Master" AutoEventWireup="true" CodeBehind="leavestatus.aspx.cs" Inherits="_2019MU.web.leavestatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
         <div class="section-wrapper">
          <label class="section-title">Leave Status</label>
          <p class="mg-b-20 mg-sm-b-40">Check Employee Leave Status and Leave List.</p>
             
           
             <div class="table-responsive">
                 <table class="table table-bordered mg-b-0">
                     <asp:Repeater ID="Repeater1" runat="server">
                         <HeaderTemplate>
                             <thead>
                            <tr>
                                <th>#ID</th>
                                <th>FROM</th>
                                <th>TO</th>
                                <th>TYPE</th>
                                <th>DAYS</th>
                                <th>REASON</th>
                                <th>REPORT</th>
                                <th>STATUS</th>
                                <th>APPLIED ON</th>
                            </tr>
                        </thead>
                         </HeaderTemplate>
                         <ItemTemplate>
                             <tbody>
                            <tr>
                                <td><%#Eval("id") %></td>
                                <td><%#Eval("leavefrom","{0:dd MMM yyyy}") %></td>
                                <td><%#Eval("leaveto","{0:dd MMM yyyy}") %></td>
                                <td><%#Eval("leavetype") %></td>
                                <td><%#Eval("days") %></td>
                                <td><%#Eval("reason") %></td>
                                <td><%#Eval("report") %></td>
                                <td><%#Eval("status") %></td>
                                <td><%#Eval("applyon","{0:dd MMM yyyy hh:ss}") %></td>
                            </tr>
                        </tbody>
                         </ItemTemplate>
                     </asp:Repeater>

                 </table>
             </div>
         
         
         
         </div>
    </div>


</asp:Content>
