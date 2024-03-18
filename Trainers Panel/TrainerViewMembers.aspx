<%@ Page Title="" Language="C#" MasterPageFile="~/Trainers Panel/Trainer_main.Master" AutoEventWireup="true" CodeBehind="TrainerViewMembers.aspx.cs" Inherits="GYM_4._1.Trainers_Panel.TrainerViewMembers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style type="text/css">

     .auto-style5 {
         width: 1319px;
     }

    </style>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="All_contents" runat="server">

    <div>
          <div>
                  <h4>Total Members</h4>
                  <p> Registered Members List</p>
                </div>
          <div >
                  <div>
                    <table class="auto-style5" >
                      <thead>
                        <th style="background-color: #666666"">
                          Id
                        </th>
                        <th style="background-color: #666666"">
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
                        <th style="background-color: #666666" >
                          Weight
                        </th>
                        <th style="background-color: #666666" >
                         Date Of Birth
                        </th>
                        <th style="background-color: #666666" >
                         In time
                        </th>
                          <th style="background-color: #666666" >
                         Out time
                        </th>
                         <th style="background-color: #666666" >
                          Address
                        </th>
                        <th style="background-color: #666666" >
                         City
                        </th>
                        <th style="background-color: #666666" >
                         State
                        </th>
                        <th style="background-color: #666666" >
                         Set Plan
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
                            <%#Eval("dob") %>
                          </td>
                          <td>
                            <%#Eval("fromtime") %>
                          </td>
                        <td>
                            <%#Eval("totime") %>
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
                               <a href="TrainerSetPlan.aspx?id=<%#Eval("memberid") %>"><img runat="server" src="../Stock/set%20plan.png" hight="40" width="40" /></a>
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
