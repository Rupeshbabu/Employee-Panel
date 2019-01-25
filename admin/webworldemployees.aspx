<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="webworldemployees.aspx.cs" Inherits="_2019MU.admin.webworldemployees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <div class="slim-mainpanel">
    <div class="container">
    <div class="card card-table mg-sm-t-30">
          <div class="card-header">
            <h6 class="slim-card-title">Product Purchases</h6>
            <%--<nav class="nav">
              <a href="" class="nav-link active">Today</a>
              <a href="" class="nav-link">This Week</a>
              <a href="" class="nav-link">This Month</a>
            </nav>--%>
          </div><!-- card-header -->
          <div class="table-responsive">
            <table class="table mg-b-0 tx-13">
              <thead>
                <tr class="tx-10">
                  <th class="wd-10p pd-y-5 tx-center">Item</th>
                  <th class="pd-y-5">Item Details</th>
                  <th class="pd-y-5 tx-right">Sold</th>
                  <th class="pd-y-5 tx-center">Location</th>
                  <th class="pd-y-5">Gain</th>
                  <th class="pd-y-5 tx-right">Added</th>
                  <th class="pd-y-5 tx-right">Updated</th>
                  <th class="pd-y-5 tx-center">Actions</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="tx-center">
                    <img src="http://via.placeholder.com/800x533" class="wd-55" alt="Image">
                  </td>
                  <td>
                    <a href="" class="tx-inverse tx-medium d-block">The Dothraki Shoes</a>
                    <span class="tx-12 d-block"><span class="square-8 bg-danger mg-r-5 rounded-circle"></span> 20 remaining</span>
                  </td>
                  <td class="valign-middle tx-right">3,345</td>
                  <td class="valign-middle tx-center"><span class="flag-icon flag-icon-ph tx-16"></span></td>
                  <td class="valign-middle"><span class="tx-success"><i class="icon ion-android-arrow-up mg-r-5"></i>33.34%</span> from last week</td>
                  <td class="valign-middle tx-right">10/21/2017</td>
                  <td class="valign-middle tx-right">an hour ago</td>
                  <td class="valign-middle tx-center">
                    <a href="" class="tx-gray-600 tx-24"><i class="icon ion-android-more-horizontal"></i></a>
                  </td>
                </tr>
                
                
              </tbody>
            </table>
          </div><!-- table-responsive -->
          
        </div><!-- card -->
      </div><!-- container -->
    </div><!-- slim-mainpanel -->



</asp:Content>
