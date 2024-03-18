<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Main_Master.Master" AutoEventWireup="true" CodeBehind="ViewAllTrainers.aspx.cs" Inherits="GYM_4._1.Admin_Panel.ViewAllTrainers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="All_contents" runat="server">
    <h1>&nbsp;&nbsp; View All Trainers</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="View Trainers" Font-Bold="True" Font-Size="Large"></asp:Label> <br /><br /><br />
    <div class="card-body">
                  <div class="table-responsive">
                    <table class="table">
                      <thead class=" text-primary">
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
                          Salary
                        </th>
                        <th style="background-color: #666666">
                         Date Of Birth
                        </th>
                        <th style="background-color: #666666">
                            Address
                        </th>
                        <th style="background-color: #666666">
                         City
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
                      </thead>
                      <tbody style="background-color: #C0C0C0">

            <asp:Repeater ID="RepeaterDB" runat="server">

            <HeaderTemplate></HeaderTemplate>

            <ItemTemplate>

                        <tr>
                          <td>
                            <%#Eval("trainerid") %>
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
                            <%#Eval("salary") %>
                          </td>
                          <td>
                            <%#Eval("d") %>
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
                            <a href="Update_trainer_info.aspx?id=<%#Eval("trainerid") %>"><img alt="" runat="server" src="../Stock/update.png" height="40" width="40"/></a>
                        </td>
                        <td>
                            <a href="AdminDelete.aspx?type=Trainer&id=<%#Eval("trainerid") %>"><img alt="" runat="server" src="../Stock/delete.png" height="40" width="40"/></a>
                        </td>
                        </tr>

            </ItemTemplate>

            <FooterTemplate></FooterTemplate>

            </asp:Repeater>

                       </tbody>
                    </table>
                  </div>
                </div>
</asp:Content>
