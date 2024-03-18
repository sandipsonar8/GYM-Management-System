<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Trainers Panel/Trainer_main.Master" AutoEventWireup="true" CodeBehind="TrainerDashboard.aspx.cs" Inherits="GYM_4._1.Trainers_Panel.TrainerDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="All_contents" runat="server">
<!-- main css file -->
    <link href="../Boostrap/css/bootstrap.min.css" rel="stylesheet" />

    <div class="dash">
        <br /><br />
        <h1>Trainer Dashboard</h1><br /><br />
 </div>
  
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style4">
                <div>
                    <table class="auto-style1" style="width: 80%">
                        <tr>
                            <td style="background-color: #FFCCCC;" class="auto-style9">
                                <asp:Image ID="total_memicon" runat="server" ImageUrl="~/Stock/user.png" Height="70px" Width="103px" />
                            </td>
                            <td style="background-color: #FFCCCC;">
                                <table class="auto-style1">
                                    <tr>
                                        <td style="height: 26px">
                                            <asp:Label ID="totalmemberlabel" runat="server" Text="Total members" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td >
                                            <asp:Label ID="Print_totalmembers" runat="server"  Text="print_members"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>                    
                    </table>
                </div>
            </td>
            <td></td>
        </tr>
  </table>
</asp:Content>
