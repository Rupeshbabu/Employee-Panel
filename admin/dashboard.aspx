﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="_2019MU.admin.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="slim-mainpanel">
      <div class="container pd-t-30">
        <div class="dash-headline-two">
          <div>
            <h4 class="tx-inverse mg-b-5">Welcome, <asp:Label ID="Label1" runat="server" CssClass="text-capitalize"></asp:Label>!</h4>
            <p class="mg-b-0">Today is <asp:Label ID="date" runat="server"></asp:Label></p>
          </div>
          
        </div><!-- dash-headline-two -->




        </div>
         </div>



</asp:Content>
