<%@ Page Title="Add New Member" Language="C#" MasterPageFile="~/Admin Panel/Main_Master.Master" AutoEventWireup="true" CodeBehind="Add_new_member.aspx.cs" Inherits="GYM_4._1.Admin_Panel.Add_new_member" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="All_contents" runat="server"> 
    <link href="../Boostrap/css/bootstrap.min.css" rel="stylesheet" />
   
    <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Add New Member</h4>
                  <p class="card-category">Complete Your Member Profile</p>
                </div>
                <div class="card-body">
                    <div class="row">
                      <div class="col-md-8">
                        <div class="form-group">
                          <label class="bmd-label-floating">Name <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="tbName" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="tbName" CssClass="form-control" runat="server" placeholder="Full name"></asp:TextBox>
                        
                        </div>
                        <div class="form-group">
                          <label class="bmd-label-floating">Contact No   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="tbContactno" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="tbContactno" CssClass="form-control" runat="server" placeholder="Contact number" MaxLength="10"></asp:TextBox>
                        </div>
                         <div class="form-group">
                          <label class="bmd-label-floating">Email address <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="tbEmail" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="tbEmail" CssClass="form-control" runat="server" placeholder="Email address" ></asp:TextBox>
                        </div>
                          <br>
                        <div class="form-group">
                            <label class="bmd-label-floating">Gender<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="genderList" ForeColor="Red"></asp:RequiredFieldValidator></label>
                            <asp:DropDownList CssClass="form-control" ID="genderList" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                          <label class="bmd-label-floating">Height</label>
                          <asp:TextBox ID="tbHeight" CssClass="form-control" runat="server" placeholder="Height"></asp:TextBox>
                       
                        </div>
                      
                        <div class="form-group">
                          <label class="bmd-label-floating">Weight</label>
                          <asp:TextBox ID="tbWeight" CssClass="form-control" runat="server" placeholder="Weight" ></asp:TextBox>
                       
                        </div>
                        
                        <div class="form-group">
                          <label class="bmd-label-floating">Date Of Birth<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="tbDOB" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="tbDOB" CssClass="form-control" runat="server" placeholder="Date of birth" ></asp:TextBox>
                       
                        </div>

                        <div class="form-group">
                          <label class="bmd-label-floating">City<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="tbCity" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="tbCity" CssClass="form-control" runat="server" placeholder="City" ></asp:TextBox>
                        
                        </div>

                        <div class="form-group">
                          <label class="bmd-label-floating">State<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="tbState" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="tbState" runat="server" placeholder="State" class="form-control"></asp:TextBox>
                        
                        </div>

                        <div class="form-group">
                          <label class="bmd-label-floating">Address<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ControlToValidate="tbAddress" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="tbAddress" runat="server" placeholder="Full Address" class="form-control" Rows="4" TextMode="MultiLine"></asp:TextBox>
                       
                        </div>

                        <div class="form-group">
                          
                          <label class="bmd-label-floating">From (Select Time)<asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="*" ControlToValidate="tbFrom_time" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="tbFrom_time" runat="server" placeholder="In time" class="form-control" TextMode="Time"></asp:TextBox>
                        
                        </div>

                         <div class="form-group">
                          <label class="bmd-label-floating">To (Select Time)<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="*" ControlToValidate="tbTo_time" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="tbTo_time" runat="server" placeholder="Out time" class="form-control" TextMode="Time"></asp:TextBox>
                        
                        </div>

                        <div class="form-group">
                          <label class="bmd-label-floating">Number Of Training Month<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*" ControlToValidate="tbNumberOfTrainingMonth" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="tbNumberOfTrainingMonth" CssClass="form-control" runat="server" placeholder="Number of training month" ></asp:TextBox>
                        
                        </div>

                        <div class="form-group">
                          <label class="bmd-label-floating">One Month Fee<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*" ControlToValidate="tbOneMonthFee" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="tbOneMonthFee" runat="server" placeholder="One month fee" class="form-control" TextMode="Number"></asp:TextBox>
                        
                        </div>

                        <div class="form-group">
                          <label class="bmd-label-floating">Total Fee<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*" ControlToValidate="tbTotalFee" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="tbTotalFee" runat="server" placeholder="Total fee" class="form-control" TextMode="Number"></asp:TextBox>
                        
                        </div>

                        <div class="form-group">
                          <label class="bmd-label-floating">Received Fee<asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="*" ControlToValidate="tbRecivedFee" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="tbRecivedFee" runat="server" placeholder="Received fees" class="form-control" TextMode="Number"></asp:TextBox>
                       
                        </div>

                        <div class="form-group">
                          <label class="bmd-label-floating">Password<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ControlToValidate="tbPassword" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="tbPassword" runat="server" placeholder="Password" class="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                      </div>
                    <div>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSubmit" class="btn btn-success" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </div>
              </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</asp:Content>
