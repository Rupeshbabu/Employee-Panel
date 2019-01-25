<%@ Page Title="" Language="C#" MasterPageFile="~/head/Head.Master" AutoEventWireup="true" CodeBehind="approveleaves.aspx.cs" Inherits="_2019MU.head.approveleaves" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">

        <%--<div class="section-wrapper mg-t-20">
          <label class="section-title">Center &amp; Right Form Alignment</label>
          <p class="mg-b-20 mg-sm-b-40">An inline form that is centered align and right aligned.</p>

          <div class="d-flex align-items-center justify-content-center bg-gray-100 ht-md-80 bd pd-x-20">
            <div class="d-md-flex pd-y-20 pd-md-y-0">
                <label>Search By Month</label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                    <asp:ListItem  Value="01">January</asp:ListItem>
                    <asp:ListItem  Value="02">February</asp:ListItem>
                    <asp:ListItem  Value="03">March</asp:ListItem>
                    <asp:ListItem  Value="04">April</asp:ListItem>
                    <asp:ListItem  Value="05">May</asp:ListItem>
                    <asp:ListItem  Value="06">June</asp:ListItem>
                    <asp:ListItem  Value="07">July</asp:ListItem>
                    <asp:ListItem  Value="08">August</asp:ListItem>
                    <asp:ListItem  Value="09">September</asp:ListItem>
                    <asp:ListItem  Value="10">October</asp:ListItem>
                    <asp:ListItem  Value="11">November</asp:ListItem>
                    <asp:ListItem  Value="12">December</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="btnSearch" OnClick="btnSearch_Click" runat="server" Text="Search" CssClass="btn btn-primary pd-y-13 pd-x-20 bd-0 mg-md-l-10 mg-t-10 mg-md-t-0" />
            </div>
          </div><!-- d-flex -->         </div>
        --%>


        <div class="section-wrapper">
          <label class="section-title">Approve Leaves List</label>
          <p class="mg-b-20 mg-sm-b-40">Check Employee Approve Leaves List.</p>
            
            
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
