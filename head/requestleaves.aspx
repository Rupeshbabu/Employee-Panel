<%@ Page Title="" Language="C#" MasterPageFile="~/head/Head.Master" AutoEventWireup="true" CodeBehind="requestleaves.aspx.cs" Inherits="_2019MU.head.requestleaves" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
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
                                <th>APPROVE</th>
                                <th>CANCEL</th>
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
                                <td>
                                    <asp:Button ID="btnApprove" runat="server" Text="Approve" CssClass="btn btn-sm btn-success btn-block mg-b-10" CommandArgument = '<%# Eval("id") %>' OnClick="btnApprove_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-sm btn-danger btn-block mg-b-10" CommandArgument = '<%# Eval("id") %>' OnClick="btnCancel_Click" />
                                </td>
                            </tr>
                        </tbody>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
        
        
        </div>

    </div>
        </form>
</asp:Content>
