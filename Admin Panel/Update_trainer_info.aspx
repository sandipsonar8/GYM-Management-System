<%@ Page Title="Update Trainer" Language="C#" MasterPageFile="~/Admin Panel/Main_Master.Master" AutoEventWireup="true" CodeBehind="Update_trainer_info.aspx.cs" Inherits="GYM_4._1.Admin_Panel.Update_trainer_info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="All_contents" runat="server">
    <link href="../Boostrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../Boostrap/js/bootstrap.bundle.min.js"></script>
    <script src="../Boostrap/js/bootstrap.min.js"></script>

    <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Update Trainer Info</h4>
                  <p class="card-category">Complete Updation of Trainer Profile</p>
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
                          <label class="bmd-label-floating">Date Of Birth<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="tbDOB" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="tbDOB" CssClass="form-control" runat="server" placeholder="Date of birth" ></asp:TextBox>
                        </div>

                      <!--  <div class="form-group">
                          <label class="bmd-label-floating">Date Of Joining<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="tbDOJ" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="tbDOJ" CssClass="form-control" runat="server" placeholder="Date of Joining" ></asp:TextBox>
                        </div> -->

                        <div class="form-group">
                          <label class="bmd-label-floating">Salary<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="tbSalary" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="tbSalary" runat="server" placeholder="Salary" class="form-control" ></asp:TextBox>
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
                          <label class="bmd-label-floating">Password<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ControlToValidate="tbPassword" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="tbPassword" runat="server" placeholder="Password" class="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <div>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:Button ID="btnUpdate" class="btn btn-danger" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                    </div>
               </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


</asp:Content>
