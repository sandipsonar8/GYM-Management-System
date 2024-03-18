<%@ Page Title="" Language="C#" MasterPageFile="~/Trainers Panel/Trainer_main.Master" AutoEventWireup="true" CodeBehind="TrainerSetPlan.aspx.cs" Inherits="GYM_4._1.Trainers_Panel.TrainerSetPlan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="All_contents" runat="server">
    <!-- main css file -->
    <link href="../Boostrap/css/bootstrap.min.css" rel="stylesheet" />
    
    <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Set Member Plan</h4>
                  <p class="card-category">Enter Plan Details (About Food Plan, Other Suggestion)</p>
                </div>
                <div class="card-body">
                    <div class="row">
                      <div class="col-md-8">
                        <div class="form-group">
                          <label class="bmd-label-floating">Monday<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtMon" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="txtMon" runat="server" class="form-control"></asp:TextBox>
                        
                        </div>
                        <div class="form-group">
                          <label class="bmd-label-floating">Tuesday<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtTues" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="txtTues" runat="server" class="form-control"></asp:TextBox>
                        
                        </div>

                        <div class="form-group">
                          <label class="bmd-label-floating">Wednesday<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtWed" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="txtWed" runat="server" class="form-control"></asp:TextBox>
                        
                        </div>

                         <div class="form-group">
                          <label class="bmd-label-floating">Thursday<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="txtThu" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="txtThu" runat="server" class="form-control"></asp:TextBox>
                        
                        </div>

                        <div class="form-group">
                          <label class="bmd-label-floating">Friday<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtFri" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="txtFri" runat="server" class="form-control"></asp:TextBox>
                        
                        </div>

                        <div class="form-group">
                          <label class="bmd-label-floating">Saturday<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtSatu" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="txtSatu" runat="server" class="form-control"></asp:TextBox>
                        
                        </div>

                        <div class="form-group">
                          <label class="bmd-label-floating">Sunday<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtSun" ForeColor="Red"></asp:RequiredFieldValidator></label>
                          <asp:TextBox ID="txtSun" runat="server" class="form-control"></asp:TextBox>
                        
                        </div>

                      </div>
                     
                    </div>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSet" runat="server" Text="Set Plan" class="btn btn-primary pull-left" OnClick="btnSet_Click"  />
                    
                    <div class="clearfix"></div>
                
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

</asp:Content>
