<%@ Page Title="" Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="placement_add.aspx.vb" Inherits="placement_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="card mb-12">
        <div class="card-header"><strong>Add New Placement</strong></div>
        <div class="container">
        <div class="row mt-2">
            <div class="col-sm-6">
                <div class="row">
                    <div class="col-sm-4 mb-2">
                        Title
                    </div>
                    <div class="col-sm-8 mb-2">
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
  <div class="col-sm-4 mb-2">
      Company Name
                    </div>
                    <div class="col-sm-8 mb-2">
                        <asp:DropDownList CssClass="form-select" ID="DropDownList1" runat="server"></asp:DropDownList>
                    </div>
  <div class="col-sm-4 mb-2">
      Location
                    </div>
                    <div class="col-sm-8 mb-2">
                         <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
  <div class="col-sm-4 mb-2">
      E-Mail
                    </div>
                    <div class="col-sm-8 mb-2">
                         <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
  <div class="col-sm-4 mb-2">
      Contact No
                    </div>
                    <div class="col-sm-8 mb-2">
                         <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
  <div class="col-sm-4 mb-2">
      Position
                    </div>
                    <div class="col-sm-8 mb-2">
                         <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
  <div class="col-sm-4 mb-2">
      Job Profile
                    </div>
                    <div class="col-sm-8 mb-2">
                         <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
  <div class="col-sm-4 mb-2">
      Date of Drive
                    </div>
                    <div class="col-sm-8 mb-2">
                         <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                    </div>
  <div class="col-sm-4 mb-2">
      Salary Per Month
                    </div>
                    <div class="col-sm-8 mb-2">
                         <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
  <div class="col-sm-4 mb-2">
                    </div>
                    <div class="col-sm-8 mb-2">
                        <asp:Button ID="Button1" runat="server" CssClass="btn-success btn" Text="Save" />
                    </div>
  

                </div>
            </div>
            <div class="col-sm-6">
            </div>

        </div>
    </div>
    </div>
    
</asp:Content>


