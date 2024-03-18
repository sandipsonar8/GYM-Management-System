<%@ Page Title="View Allocation" Language="C#" MasterPageFile="~/Admin Panel/Main_Master.Master" AutoEventWireup="true" CodeBehind="View_Allocate_Trainer.aspx.cs" Inherits="GYM_4._1.Admin_Panel.View_Allocate_Trainer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- main css and js file -->
    <link href="Boostrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Boostrap/js/bootstrap.bundle.min.js"></script>
    <script src="Boostrap/js/bootstrap.min.js"></script>
    
    <style type="text/css">
        .auto-style5 {
            width: 608px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="All_contents" runat="server">
    <div class="ViewAllocateTrainers">
        <h1>&nbsp;&nbsp; View Allocated Trainers To Member</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="View Allocation" Font-Bold="True" Font-Size="Large"></asp:Label> <br /><br /><br />
        <div class="card-body">
                  <div class="table-responsive">
                    <table class="auto-style5">
                      <thead class=" text-primary">
                          <th style="background-color: #666666" >
                              Date of Allo
                          </th>
                        <th style="background-color: #666666">
                            Trainer Email ID
                        </th>
                        <th style="background-color: #666666">
                          Member Email ID
                        </th>
                       
                        <th style="background-color: #666666">
                          Delete
                        </th>
                      </thead>
                      <tbody style="background-color: #C0C0C0">

            <asp:Repeater ID="RepeaterDB" runat="server">

            <HeaderTemplate></HeaderTemplate>

            <ItemTemplate >

                        <tr>
                         <td aling="center">
                             <%#Eval("date") %>
                         </td>
                          <td align="center" >
                            <%#Eval("temail") %>
                          </td>
                          <td align="center" >
                            <%#Eval("memail") %>
                          </td>
                         
                        <td align="center" >
                            <a href="AdminDelete.aspx?tid=<%#Eval("trainerid") %>&mid=<%#Eval("memberid") %>"><img alt="" runat="server" src="../Stock/delete.png" height="40" width="40"/></a>
                        </td>
                        </tr>

            </ItemTemplate>

           <FooterTemplate></FooterTemplate>

            </asp:Repeater>

                       </tbody>
                    </table>
                  </div>
                </div>
        </div>
</asp:Content>
