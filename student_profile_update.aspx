<%@ Page Title="" Language="VB" MasterPageFile="~/student.master" AutoEventWireup="false" CodeFile="student_profile_update.aspx.vb" Inherits="student_profile_update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="assets/validation.js"></script>
    <script>
        function percent(evt) {

            var charCode = (evt.which) ? evt.which : event.keyCode
            if ((charCode >= 47 && charCode <= 57) || (charCode == 46)) {


                return true;


            }
            else {

                return false;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="card mb-12">
        <div class="card-header"><strong>Update Profile</strong></div>
        <div class="container">
            <div class="row mt-2">
                <div class="col-sm-6">
                    <div class="row">
                        <div class="col-sm-4 mb-2">
                            Student Name
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox required onkeypress="return letters(event)" ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Gender
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:DropDownList ID="DropDownList1" CssClass="form-select" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Date-Of-Birth
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox required ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Contact Number
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox required ClientIDMode="Static" onkeypress="return contact(event)" ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            E-Mail ID
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox required ID="TextBox4" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            SSLC %
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox required onkeypress="return percent(event)" ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Year of Passing
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox  required onkeypress="return number(event)" ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            HSC %
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox required onkeypress="return percent(event)" ID="TextBox7" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Year of Passing
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox required onkeypress="return number(event)" ID="TextBox8" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        
                        

                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="row">
                        <div class="col-sm-4 mb-2">
                            UG %
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox required onkeypress="return percent(event)" ID="TextBox9" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Year of Passing
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox  required onkeypress="return number(event)" ID="TextBox10" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            PG %
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox required onkeypress="return percent(event)" ID="TextBox11" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Year of Passing
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox required ID="TextBox12"  onkeypress="return number(event)" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Skill
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox required ID="TextBox13" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Upload Resume
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:FileUpload required ID="FileUpload1" CssClass="form-f" runat="server" />
                        </div>
                        <div class="col-sm-4 mb-2">
                            Upload Image
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:FileUpload required ID="FileUpload2" runat="server" />
                        </div>
                        <div class="col-sm-4 mb-2">
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:Button ID="Button1" CssClass="btn-success btn" runat="server" Text="Update" />
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>


