<%@ Page Title="" Language="C#" MasterPageFile="~/head/Head.Master" AutoEventWireup="true" CodeBehind="complaintbox.aspx.cs" Inherits="_2019MU.head.complaintbox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">

        <div class="section-wrapper">
          <label class="section-title">Compliant List Page</label>
          <p class="mg-b-20 mg-sm-b-40">Employee to send Complaint Table.</p>
            
            
            <div class="table-responsive">
                <table class="table table-bordered mg-b-0">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <HeaderTemplate>
                            <thead>
                                <tr>
                                    <th>#ID</th>
                                    <th>Complaint On</th>
                                    <th>Complaint Message</th>
                                </tr>
                            </thead>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tbody>
                                <tr>
                                    <td><%#Eval("id") %></td>
                                    <td><%# Eval("applyon","{0:dd MMM yyyy hh:mm}") %></td>
                                    <td><%#Eval("message") %></td>
                                </tr>
                            </tbody>
                        </ItemTemplate>
                    </asp:Repeater>


                </table>
            </div>
       </div>
    </div>


</asp:Content>
