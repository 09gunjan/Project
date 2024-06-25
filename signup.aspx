<%@ Page Title="" Language="VB" MasterPageFile="~/home.master" AutoEventWireup="false" CodeFile="signup.aspx.vb" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="assets/validation.js"></script>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="row">

        <div class="col-sm-6">
            <img class="img-fluid " src="img/1.jpg" />
        </div>
        <div class="col-sm-4">
            <div class="col-sm-12">
                <h4>Signup New Student</h4>
            </div>
            <div class="row">
                <div class="col-sm-4 mb-2">
                    <label class="control-label">
                        Student Name
                    </label>
                </div>
                <div class="col-sm-8 mb-2">

                    <asp:TextBox required onkeypress="return letters(event)" class="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                </div>


                <div class="col-sm-4 mb-2">
                    <label class="control-label">
                        Gender
                    </label>
                </div>
                <div class="col-sm-8 mb-2">

                    <asp:DropDownList CssClass="form-select" ID="DropDownList1" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="col-sm-4 mb-2">
                    <label class="control-label">
                        Date-Of-Birth
                    </label>
                </div>
                <div class="col-sm-8 mb-2">

                    <asp:TextBox required class="form-control" ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
                </div>
                <div class="col-sm-4 mb-2">
                    <label class="control-label">
                        Contact No
                    </label>
                </div>
                <div class="col-sm-8 mb-2">
                    <asp:TextBox required ClientIDMode="Static" onkeypress="return contact(event)" class="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                </div>
                <div class="col-sm-4 mb-2">
                    <label class="control-label">
                        E-mail ID
                    </label>
                </div>
               
                <div class="col-sm-8 mb-2 ">
                    <div class="input-group">
                        <span class="input-group-text" id="Span3"><i class="fa-solid fa-at"></i></span>
                        <asp:TextBox required ID="TextBox4" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
                    </div>
                </div>
               
                <div class="col-sm-4 mb-2">
                    <label class="control-label">
                        User Name
                    </label>
                </div>
                <div class="col-sm-8 mb-2 ">
                    <div class="input-group">
                        <span class="input-group-text" id="Span4"><i class="fa-solid fa-user"></i></span>
                        <asp:TextBox required ID="TextBox5" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-4 mb-2">
                    <label class="control-label">
                        Password
                    </label>
                </div>
                <div class="col-sm-8 mb-2 ">
                    <div class="input-group">
                        <span class="input-group-text" id="Span5"><i class="fa-solid fa-key"></i></span>
                        <asp:TextBox required ID="TextBox6" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-4 mb-2">
                    </div>
                <div class="col-sm-8 mb-2">
                    <asp:Button ID="Button1" CssClass="btn btn-success shadow-none" runat="server" Text="Signup" />
                </div>
            </div>
        </div>
</asp:Content>


