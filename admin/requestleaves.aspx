<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="requestleaves.aspx.cs" Inherits="_2019MU.admin.requestleaves" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">

        <div class="section-wrapper">
          <label class="section-title">Request Leaves</label>
          <p class="mg-b-20 mg-sm-b-40">Check Employee Requested Leaves.</p>
            
            
            <div class="table-responsive">
                <table class="table table-bordered mg-b-0">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <HeaderTemplate>
                            <thead>
                            <tr>
                                <th>#ID</th>
                                <th>Name</th>
                                <th>FROM</th>
                                <th>TO</th>
                                <th>TYPE</th>
                                <th>DAYS</th>
                                <th>REASON</th>
                                <th>STATUS</th>
                                <th>APPLIED ON</th>
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
