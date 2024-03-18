<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Main_Master.Master" AutoEventWireup="true" CodeBehind="AllocateTrainer.aspx.cs" Inherits="GYM_4._1.Admin_Panel.AllocateTrainer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #212529;
            background-clip: padding-box;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="All_contents" runat="server">
    <link href="../Boostrap/css/bootstrap.min.css" rel="stylesheet" />

    <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Allocate Trainer</h4>
                  <p class="card-category">Select Trainer And Member</p>
                </div>
                <div class="card-body">
                    <div class="row">
                      <div class="col-md-8">
                        <div class="form-group">
                            <label class="bmd-label-floating">Select Trainer Email Id<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="ddlTrainerEmailId"></asp:RequiredFieldValidator></label>
                            <asp:DropDownList ID="ddlTrainerEmailId" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="email" DataValueField="trainerid">
                            </asp:DropDownList> 
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gymdb %>" SelectCommand="SELECT [trainerid], [email] FROM [TblTrainers]"></asp:SqlDataSource>
                        </div>
                        <div class="form-group">
                            <label class="bmd-label-floating">Select Member Email Id<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="ddlMemberEmailId"></asp:RequiredFieldValidator></label>
                            <asp:DropDownList ID="ddlMemberEmailId" class="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="email" DataValueField="memberid">
                            </asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:gymdb %>" SelectCommand="SELECT [memberid], [email] FROM [TblMembers]"></asp:SqlDataSource>
                        </div>
                        <div>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                            <asp:Button ID="BtnAllocateTrainer" class="btn btn-primary " runat="server" Text="Allocate" OnClick="BtnAllocateTrainer_Click" />
                        </div>
                    </div>
                   </div>
                  </div>
                 </div>
                </div>
               </div>
              </div>
             </div>

</asp:Content>
