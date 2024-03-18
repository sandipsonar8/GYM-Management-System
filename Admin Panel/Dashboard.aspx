<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Main_Master.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="GYM_4._1.Admin_Panel.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <!-- main css and js file -->
    <link href="../Boostrap/css/bootstrap.min.css" rel="stylesheet" />

    <style type="text/css">
    .auto-style4 {
        height: 26px;
        width: 500px;
    }
    .auto-style5 {
        width: 500px;
    }
    .auto-style9 {
        width: 130px;
    }
        .auto-style10 {
            height: 26px;
            width: 500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="All_contents" runat="server">
    <div>
    <div class="dash">
        <br /><br />
        <h1>Dashboard</h1><br /><br />
    </div>

       <!--  <table class="auto-style1">
            <tr>
                <td><center><h4> Earning Chart </h4>

                   <asp:Chart ID="Chart1" runat="server">
                   
                       <Series>
                           <asp:Series Name="Series1" ChartType="Pie" YValuesPerPoint="4">
                           
                           </asp:Series>
                       </Series>

                       <ChartAreas>
                           <asp:ChartArea Name="ChartArea1">
                               <Area3DStyle Enable3D="True" />
                           </asp:ChartArea>
                       </ChartAreas>

                   </asp:Chart>
                   </center></td>
                </tr>
             </table> -->


        <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style10">
                <div>
                    <table class="auto-style1" style="width: 80%">
                        <tr>
                            <td style="background-color: #CCCCCC;" class="auto-style9">
                                <asp:Image ID="total_memicon" runat="server" ImageUrl="~/Stock/user.png" Height="70px" Width="103px" />
                            </td>
                            <td style="background-color: #CCCCCC;">
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
            <td style="height: 26px">
                <div>
                    <table class="auto-style1" style="width: 80%">
                        <tr>
                            <td style="background-color: #FF9999;" class="auto-style9">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Stock/user.png" Height="70px" Width="103px" />
                            </td>
                            <td style="background-color: #FF9999;">
                                <table class="auto-style1">
                                    <tr>
                                        <td style="height: 26px">
                                            <asp:Label ID="Label1" runat="server" Text="Total trainers" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td >
                                            <asp:Label ID="Print_totaltrainers" runat="server"  Text="print_trainers"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>                          
                        </tr>
                    </table>
                </div>
            </td>
            <td> </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <div>
                    <table class="auto-style1" style="width: 80%">
                        <tr>
                            <td style="background-color: #FFFF99;" class="auto-style9">
                                <asp:Image ID="Image6" runat="server" ImageUrl="~/Stock/dollar.png" Height="70px" Width="103px" />
                            </td>
                            <td style="background-color: #FFFF99;">
                                <table class="auto-style1">
                                    <tr>
                                        <td style="height: 26px">
                                            <asp:Label ID="Label6" runat="server" Text="Total fee" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td >
                                            <asp:Label ID="Print_totalfees" runat="server"  Text="print_fees"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>                          
                        </tr>
                    </table>
     
                </div>
            </td>
            <td style="height: 26px">
                <div>
                    <table class="auto-style1" style="width: 80%">
                        <tr>
                            <td style="background-color: #99CCFF;" class="auto-style9">
                                <asp:Image ID="Image2" runat="server" Height="70px" Width="103px" ImageUrl="~/Stock/paid_fee.png" />
                            </td>
                            <td style="background-color: #99CCFF;">
                                <table class="auto-style1">
                                    <tr>
                                        <td style="height: 26px">
                                            <asp:Label ID="paid_fee" runat="server" Text="Paid fee" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td >
                                            <asp:Label ID="Print_paidfee" runat="server"  Text="print_fees"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
     
                </div>
            </td>
            <td> </td>
        </tr>
        <tr>
            <td class="auto-style5">   <div>
                    <table class="auto-style1" style="width: 80%">
                        <tr>
                            <td style="background-color: #FF99FF;" class="auto-style9">
                                <asp:Image ID="Image3" runat="server" Height="70px" Width="103px" ImageUrl="~/Stock/remaing_fee.png" />
                            </td>
                            <td style="background-color: #FF99FF;">
                                <table class="auto-style1">
                                    <tr>
                                        <td style="height: 26px">
                                            <asp:Label ID="Label4" runat="server" Text="Remaining  fee" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td >
                                            <asp:Label ID="Print_rimainingfee" runat="server"  Text="remaining_fees"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="card-footer">
                                                <a href="ViewAllMembers.aspx?type=remainingfee">View Member List</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>                            
                        </tr>
                    </table>
                </div>
            </td>
            <td class="auto-style5">   <div>
                    <table class="auto-style1" style="width: 80%">
                        <tr>
                            <td style="background-color: #99FFCC;" class="auto-style9">
                                <asp:Image ID="Image5" runat="server" Height="70px" Width="103px" ImageUrl="~/Stock/time-delete.png" />
                            </td>
                            <td style="background-color: #99FFCC;">
                                <table class="auto-style1">
                                    <tr>
                                        <td style="height: 26px; width: 166px;">
                                            <asp:Label ID="Label3" runat="server" Text="Expired membership" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 166px" >
                                            <asp:Label ID="Print_expiredmembers" runat="server"  Text="membership_expired"></asp:Label>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td>
                                            <div class="card-footer">
                                                <a href="ViewAllMembers.aspx?type=expiredate">View Member List</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>     
                </div>
            </td>
            <td>

            </td>
        </tr>

    </table>
 </div> 
</asp:Content>
