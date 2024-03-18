<%@ Page Title="" Language="C#" MasterPageFile="~/Members Panel/Member_Main.Master" AutoEventWireup="true" CodeBehind="MemberDashboard.aspx.cs" Inherits="GYM_4._1.Members_Panel.MemberDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 350px;
        }
        .auto-style6 {
            width: 350px;
        }
        .auto-style7 {
            width: 350px;
        }
        .auto-style8 {
            height: 27px;
        }
        .auto-style9 {
            width: 350px;
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="All_contents" runat="server">
<!-- main css file -->
    <link href="../Boostrap/css/bootstrap.min.css" rel="stylesheet" />
     
    <table class="auto-style1">
        <tr>  
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Your Package and Timeing Details" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label4" runat="server" Text="GYM Join Date"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="LabelDOJ" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label5" runat="server" Text="Expired Date"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="LabelExpireDate" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label6" runat="server" Text="From Time"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="LabelFrom" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label7" runat="server" Text="To Time"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="LabelTo" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table><br /><br />
   

    
 <table >

                  <tr>
                      <th align="left" class="auto-style8">Day Name</th>
                      <th align="left" class="auto-style9">Workout Plan</th>
                 </tr>

                 <tr>
                      <td class="auto-style7">Monday</td>
                      <td class="auto-style6"><asp:Label ID="txtMon" runat="server" Text="Label"></asp:Label></td>
                 </tr>

                <tr>
                      <td class="auto-style7">Tuesday</td>
                      <td class="auto-style6"><asp:Label ID="txtTues" runat="server" Text="Label"></asp:Label></td>
                 </tr>

                <tr>
                      <td class="auto-style7">Wednesday</td>
                      <td class="auto-style6"><asp:Label ID="txtWed" runat="server" Text="Label"></asp:Label></td>
                 </tr>

                <tr>
                      <td class="auto-style7">Thursday</td>
                      <td class="auto-style6"><asp:Label ID="txtThu" runat="server" Text="Label"></asp:Label></td>
                 </tr>

                <tr>
                      <td class="auto-style7">Friday</td>
                      <td class="auto-style6"><asp:Label ID="txtFri" runat="server" Text="Label"></asp:Label></td>
                 </tr>

                <tr>
                      <td class="auto-style7">Saturday</td>
                      <td class="auto-style6"><asp:Label ID="txtSatu" runat="server" Text="Label"></asp:Label></td>
                 </tr>

                <tr>
                      <td class="auto-style7">Sunday</td>
                      <td class="auto-style6"><asp:Label ID="txtSun" runat="server" Text="Label"></asp:Label></td>
                 </tr>

              </table><br />
</asp:Content>
