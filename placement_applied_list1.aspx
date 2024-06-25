<%@ Page Title="" Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="placement_applied_list1.aspx.vb" Inherits="placement_applied_list1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="card mb-12">
        <div class="card-header"><strong>Student Profile Details</strong></div>
        <div class="container">
            <div class="row mt-2">
                <div class="col-sm-6">
                    <div class="row">
                        <div class="col-sm-4 mb-2">
                            Student Name
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" ReadOnly></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Gender
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:DropDownList ID="DropDownList1" CssClass="form-select" runat="server" ReadOnly>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Date-Of-Birth
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" ReadOnly></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Contact Number
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" ReadOnly></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            E-Mail ID
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" ReadOnly></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            SSLC %
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" ReadOnly></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Year of Passing
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" ReadOnly></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            HSC %
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" ReadOnly></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Year of Passing
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" ReadOnly></asp:TextBox>
                        </div>
                        
                        

                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="row">
                        <div class="col-sm-4 mb-2">
                            UG %
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" ReadOnly></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Year of Passing
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" ReadOnly></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            PG %
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server" ReadOnly></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Year of Passing
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox ID="TextBox12" CssClass="form-control" runat="server" ReadOnly></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Skill
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:TextBox ID="TextBox13" CssClass="form-control" runat="server" ReadOnly></asp:TextBox>
                        </div>
                        <div class="col-sm-4 mb-2">
                            Resume Link
                        </div>
                        <div class="col-sm-8 mb-2">
                            <asp:HyperLink ID="HyperLink1" runat="server">Click CV</asp:HyperLink>
                        </div>
                        <div class="col-sm-4 mb-2">
                            <asp:Image ID="Image1" runat="server" Width="100" />
                        </div>
                        <div class="col-sm-8 mb-2">
                            
                        </div>
                       
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>

