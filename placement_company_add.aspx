<%@ Page Title="" Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="placement_company_add.aspx.vb" Inherits="placement_company_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="card mb-12">
        <div class="card-header"><strong>Add New Company</strong></div>
        <div class="container">
            <div class="row mt-2">
                <div class="col-sm-6">
                    <div class="row">
                        <div class="col-sm-4 mb-2">
                            Company Name
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Place
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Street
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Pincode
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            District
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Contact No
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            E-Mail Id
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server"></asp:TextBox>
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

