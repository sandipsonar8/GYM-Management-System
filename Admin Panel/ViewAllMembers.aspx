<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Main_Master.Master" AutoEventWireup="true" CodeBehind="ViewAllMembers.aspx.cs" Inherits="GYM_4._1.Admin_Panel.ViewAllMeembers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {            width: 2300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="All_contents" runat="server">
    
    <div>
        <h1>&nbsp;&nbsp; View All Members</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="View Members" Font-Bold="True" Font-Size="Large"></asp:Label> <br /><br /><br />
        <table class="auto-style5" style="background-color: #CCCCCC">
                     <thead>
                        <th style="background-color: #666666">
                          Id
                        </th>
                        <th style="background-color: #666666">
                            Name
                        </th>
                        <th style="background-color: #666666">
                          Contact No
                        </th>
                        <th style="background-color: #666666">
                          Email Id
                        </th>
                        <th style="background-color: #666666">
                          Gender
                        </th>
                        <th style="background-color: #666666">
                          Height
                        </th>
                        <th style="background-color: #666666">
                          Weight
                        </th>
                        <th style="background-color: #666666">
                         Date Of Birth
                        </th>
                         <th style="background-color: #666666">
                         From
                        </th>
                        <th style="background-color: #666666">
                        To
                        </th>
                         <th style="background-color: #666666">
                         Date Of Join
                        </th>
                        <th style="background-color: #666666">
                        Expire Date
                        </th>
                         <th style="background-color: #666666">
                         Number Of Month
                        </th>
                         <th style="background-color: #666666">
                         One Month Fee
                        </th>
                         <th style="background-color: #666666">
                         Total Fee
                        </th>
                         <th style="background-color: #666666">
                         Received Fee
                        </th>
                          <th style="background-color: #666666">
                              Remaining Fee
                            </th>
                         <th style="background-color: #666666">
                          Address
                        </th>
                          <th style="background-color: #666666">City
                          </th>
                          <th style="background-color: #666666">
                         State
                        </th>
                        <th style="background-color: #666666">
                          Update
                        </th>
                        <th style="background-color: #666666">
                          Delete
                        </th>
                         <th style="background-color: #666666">
                          Reciept
                        </th>
                      </thead> 
                      <tbody style="background-color: #C0C0C0">

            <asp:Repeater ID="RepeaterDB" runat="server">

            <HeaderTemplate></HeaderTemplate>

            <ItemTemplate>

                        <tr>
                          <td>
                            <%#Eval("memberid") %>
                          </td>
                          <td>
                            <%#Eval("name") %>
                          </td>
                          <td>
                            <%#Eval("contactno") %>
                          </td>
                          <td>
                            <%#Eval("email") %>
                          </td>
                          <td>
                            <%#Eval("gender") %>
                          </td>
                          <td>
                            <%#Eval("height") %>
                          </td>
                          <td>
                            <%#Eval("weight") %>
                          </td>
                          <td>
                            <%#Eval("d") %>
                          </td>
                         <td>
                            <%#Eval("fromtime") %>
                          </td>
                         <td>
                            <%#Eval("totime") %>
                          </td>
                         <td>
                            <%#Eval("doj") %>
                          </td>
                         <td>
                            <%#Eval("expiredate") %>
                          </td>
                          <td>
                            <%#Eval("month") %>
                          </td>
                         <td>
                            <%#Eval("onemonthfee") %>
                          </td>

                             <td>
                            <%#Eval("totalfee") %>
                          </td>

                             <td>
                            <%#Eval("receivedfee") %>
                          </td>
                            <td>
                                <%# Eval("remainingfee") %>
                            </td>



                         <td>
                            <%#Eval("address") %>
                          </td>
                          <td>
                            <%#Eval("city") %>
                          </td>
                          <td>
                            <%#Eval("state") %>
                          </td>
                        <td>
                            <a href="Update_member_info.aspx?id=<%#Eval("memberid") %>"><img alt="" runat="server" src="../Stock/update.png" height="40" width="40"/></a>
                        </td>
                        <td>
                            <a href="AdminDelete.aspx?type=Member&id=<%#Eval("memberid") %>"><img alt="" runat="server" src="../Stock/delete.png" height="40" width="40"/></a>
                        </td>
                        <td>
                            <a href="Receipt.aspx?type=Member&id=<%#Eval("memberid") %>"><img alt="" runat="server" src="../Stock/bill.png" height="40" width="40"/></a>
                        </td>
                        </tr>

            </ItemTemplate>

            <FooterTemplate></FooterTemplate>

            </asp:Repeater>
         </tbody>
      </table>
    </div>
</asp:Content>
