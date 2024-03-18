<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/nesteds_mainMaster.master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="GYM_4._1.Dashboard" %>




<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="server">
    <div class="dash">
        <h1>Dashboard</h1><br /><br />
        

    </div>
    <table align="center" class="auto-style1">
        <tr>
            <td style="height: 26px">
                <div>
                    <table class="auto-style1" style="width: 80%">
                        <tr>
                            <td style="width: 97px">
                                <asp:Image ID="total_memicon" runat="server" ImageUrl="~/Stock/user.png" Height="70px" Width="103px" />
                            </td>
                            <td style="width: 223px">
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
                            <td style="width: 97px">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Stock/dollar.png" Height="70px" Width="103px" />
                            </td>
                            <td style="width: 223px">
                                <table class="auto-style1">
                                    <tr>
                                        <td style="height: 26px">
                                            <asp:Label ID="Label1" runat="server" Text="Total fee" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
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
        </tr>
        <tr>
            <td style="height: 26px">
                <div>
                    <table class="auto-style1" style="width: 80%">
                        <tr>
                            <td style="width: 97px">
                                <asp:Image ID="Image2" runat="server" Height="70px" Width="103px" ImageUrl="~/Stock/paid_fee.png" />
                            </td>
                            <td style="width: 223px">
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
            <td style="height: 26px">
                <div>
                    <table class="auto-style1" style="width: 80%">
                        <tr>
                            <td style="width: 97px">
                                <asp:Image ID="Image3" runat="server" Height="70px" Width="103px" ImageUrl="~/Stock/remaing_fee.png" />
                            </td>
                            <td style="width: 223px">
                                <table class="auto-style1">
                                    <tr>
                                        <td style="height: 26px">
                                            <asp:Label ID="Label4" runat="server" Text="Remaining  fee" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td >
                                            <asp:Label ID="print_rimainingfee" runat="server"  Text="remaining_fees"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
     
                </div>
            </td>
        </tr>
        <tr>
            <td>   <div>
                    <table class="auto-style1" style="width: 80%">
                        <tr>
                            <td style="width: 97px">
                                <asp:Image ID="Image4" runat="server" Height="70px" Width="103px" ImageUrl="~/Stock/time-delete.png" />
                            </td>
                            <td style="width: 223px">
                                <table class="auto-style1">
                                    <tr>
                                        <td style="height: 26px; width: 166px;">
                                            <asp:Label ID="Label2" runat="server" Text="Expired membership" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 166px" >
                                            <asp:Label ID="Label3" runat="server"  Text="membership_expired"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
     
                </div></td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
