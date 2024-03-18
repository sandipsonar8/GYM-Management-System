<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Receipt.aspx.cs" Inherits="GYM_4._1.Admin_Panel.Receipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function printpage() {
            var getpanel = document.getElementById("<%= print.ClientID%>");
            var MainWindow = window.open('', '', 'height=40', 'width=500');
            
            MainWindow.document.write(getpanel.innerHTML);
            MainWindow.document.close();
            setTimeout(function () {
                MainWindow.print();
            }, 500);
            return false;
        }
    </script>
    
    <style type="text/css">
        .auto-style1 {
            width: 251px;
        }
        .auto-style2 {
            width: 304px;
        }
        .auto-style3 {
            width: 306px;
        }
        </style>
    
</head>
<body>
    
    <form id="form1" align="center" runat="server"> 
        
  <link href="../Boostrap/css/bootstrap.min.css" rel="stylesheet" />
    <table>
        <tr>
            <td></td>
            <td> <asp:Panel ID="print" runat="server"> <div class="card" >
     
                <div class="card-header card-header-primary">
                    
                  <h4 class="card-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Image ID="Image1" runat="server" Height="115px" ImageUrl="~/Stock/SGymlogo.png" Width="124px" /></h4>
                    <h4 class="card-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fee Receipt</h4>
                  <p class="card-category">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Member Name:  <asp:Label ID="txtName" runat="server"></asp:Label></p>
                </div>
                     <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Your Package and Timeing Details</h3>
                    <div>
                        <table align="center"> 
                            <tr>
                        <td class="auto-style1" align="left">
                            <asp:Label ID="Label7" runat="server" Text="GYM Join Date"></asp:Label>
                        </td>
                        <td align="left">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="LabelDOJ" runat="server"></asp:Label>
                        </td>
                    </tr>
                            <tr >
                        <td class="auto-style1" align="left">
                            <asp:Label ID="Label8" runat="server" Text="Expired Date"></asp:Label>
                        </td>
                        <td align="left">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="LabelExpireDate" runat="server"></asp:Label>
                        </td>
                    </tr>
                            <tr>
                        <td class="auto-style1" align="left">
                            <asp:Label ID="Label9" runat="server" Text="From Time"></asp:Label>
                        </td>
                        <td align="left">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="LabelFrom" runat="server"></asp:Label>
                        </td>
                    </tr>
                            <tr>
                        <td class="auto-style1" align="left">
                            <asp:Label ID="Label10" runat="server" Text="To Time"></asp:Label>
                        </td>
                        <td align="left">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="LabelTo" runat="server"></asp:Label>
                        </td>
                    </tr>
                        </table>
                    </div>
                <br />
               
                    <div>
                        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Your Payment Detail </h2>
                            <table align="center">

                 <tr>
                      <td class="auto-style2" align="left" >Number Of Join Month</td>
                      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="txtMonth" runat="server"></asp:Label></td>
                 </tr>

                <tr>
                      <td class="auto-style2" align="left">One Month Fee</td>
                      <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="txtOneMonthFee" runat="server"></asp:Label></td>
                 </tr>

                <tr>
                      <td class="auto-style2" align="left">Paid Fee</td>
                      <td style="color:green;" class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="txtPaidFee" runat="server"></asp:Label></td>
                 </tr>

                <tr>
                      <td class="auto-style2" align="left">Remaining Fee</td>
                      <td style="color:red;" class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="txtRemainingFee" runat="server"></asp:Label></td>
                 </tr>

                <tr>
                      <td class="auto-style2" align="left">Total Fee</td>
                      <td style="color:blue;" class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="txtTotalFee" runat="server"></asp:Label></td>
                 </tr>

               

              </table>
             
                        <div >
                            <hr />
                             <table aling="center">
                                <tr>
                                     <td class="auto-style3" align="left">
                              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *Fees will not be refund.<br /></p>
                              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *No Extention.</p>
                          </td>
                                     <td>
                                        <p style="color: #000000"><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;For-Sonawane's The Gym&nbsp; </p>
                                    </td>
                                </tr>
                            </table>
                         </div>                   
                    </div>
                    <hr />
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 45,Pitrashwar Colony, Shirpur Mo.9764599000,8888443682.</p>
            </div> </asp:Panel> <br /><asp:Button ID="btnPrint" class="btn btn-success" runat="server" OnClientClick="return printpage();" Text="Print" /> </td>
            <td></td>
        </tr>
    </table>
        
             
    
    </form>
    
</body>
</html>
