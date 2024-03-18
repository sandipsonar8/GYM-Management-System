<%@ Page Title="" Language="C#" MasterPageFile="~/Members Panel/Member_Main.Master" AutoEventWireup="true" CodeBehind="PaymentDetails.aspx.cs" Inherits="GYM_4._1.Members_Panel.PaymentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 45px;
        }
        .auto-style6 {
            width: 316px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="All_contents" runat="server">
<!-- main css file -->
    <link href="../Boostrap/css/bootstrap.min.css" rel="stylesheet" />
   
    <div>
        <h2>Your Payment Detail </h2>
        <table class="auto-style6">

                 <tr>
                      <td>Number Of Join Month</td>
                      <td class="auto-style5"><asp:Label ID="txtMonth" runat="server" Text="Label"></asp:Label></td>
                 </tr>

                <tr>
                      <td>One Month Fee</td>
                      <td class="auto-style5"><asp:Label ID="txtOneMonthFee" runat="server" Text="Label"></asp:Label></td>
                 </tr>

                <tr>
                      <td>Paid Fee</td>
                      <td style="color:green;" class="auto-style5"><asp:Label ID="txtPaidFee" runat="server" Text="Label"></asp:Label></td>
                 </tr>

                <tr>
                      <td>Remaining Fee</td>
                      <td style="color:red;" class="auto-style5"><asp:Label ID="txtRemainingFee" runat="server" Text="Label"></asp:Label></td>
                 </tr>

                <tr>
                      <td>Total Fee</td>
                      <td style="color:blue;" class="auto-style5"><asp:Label ID="txtTotalFee" runat="server" Text="Label"></asp:Label></td>
                 </tr>

               

              </table>
    </div>
</asp:Content>
