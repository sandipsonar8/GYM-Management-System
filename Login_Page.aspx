<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Page.aspx.cs" Inherits="GYM_4._1.Login_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login page</title>

    <!-- main css and js file -->
    <link href="Boostrap/css/bootstrap.min.css" rel="stylesheet" />
    
    
    <style type="text/css">
        .auto-style1 {
            flex: 1 0 0%;
            height: 36px;
        }
        .auto-style2 {
            height: 86px;
        }
    </style>
</head>
<body style="background-color:#514d4d">
    <form id="form1" runat="server" class="mx-auto" > 
<div class="auto-style2">
    <br />
    <div align="right">
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/AboutUS.aspx" Text="About Us" />   
        &nbsp;<asp:Button ID="Button2" runat="server" PostBackUrl="~/Contact Us.aspx" Text="Contact Us" /> 
        &nbsp;&nbsp;
</div>
    <br />
    <br />
    <br />
</div>
      <div class="container">

          <div class="row mx-auto">
              <div class="col-md-6 mx-auto">
                  <div class="card bg-gradient" style="left: 0px; top: 0px">
                      <div class="card-body">

                          <div class="row">
                              <div class="col">
                                <center>
                                    <asp:Image width="250px" ID="Image1" src="Stock/SGymlogo.png"  runat="server" />                                 
                                </center>
                              </div>
                          </div>

                          <div class="row">
                              <hr />
                          </div>
                          
                          <div class="row">
                              <div class="col">
                                <center>
                                  <h3>Log In</h3>
                                </center>
                              </div>
                          </div>

                          <div class="row">
                              <div class="col">
                                <center>
                                  <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Email Id</asp:Label>
                                </center>
                              </div>
                          </div>

                          <div class="row">
                              <div class="col">
                                  <div class="form-group">
                                    <center>
                                        <asp:TextBox ID="UserName" CssClass="form-control" placeholder="Email ID" runat="server" Width="400px" Height="30px"></asp:TextBox>
                                    </center>
                                   </div>
                              </div>
                          </div>

                          <div class="row">
                              <div class="col">
                               <center>
                                 <asp:Label ID="PasswordLabel"  runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                </center>
                              </div>
                          </div>

                          <div class="row">
                              <div class="auto-style1">
                                <div class="form-group">
                                  <center>
                                  <asp:TextBox ID="Password" CssClass="form-control" placeholder="Password" runat="server" TextMode="Password" Width="400px" Height="30px"></asp:TextBox> 
                                  </center>
                                </div>
                              </div>
                          </div>

                          <div class="row">
                              <div class="col">
                                <center>
                                 <asp:Button ID="LoginButton" CssClass="btn btn-success" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" OnClick="LoginButton_Click" Width="247px" Height="43px" />
                                </center>
                              </div>
                          </div>
                      
                      </div>
                  </div>

              </div>

          </div>

      </div>  
    </form>
</body>
</html>
