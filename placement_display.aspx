<%@ Page Title="" Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="placement_display.aspx.vb" Inherits="placement_display" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="card mb-12">
            <div class="card-header"><strong>Placement Details</strong></div>
                 <asp:Repeater ID="Repeater1" runat="server">

                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
<th>Job Title</th>
<th>Company Name</th>
<th>Location</th>
<th>E-Mail</th>
<th>Contact Number</th>
<th>Position</th>
<th>Job Profile</th>
<th>Date of Drive</th>
<th>Salary Per Month</th>


                                
                            </tr>
                        </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("id")%>'></asp:Label></td>
                            <td><asp:Label ID="Label2" CssClass="ccc" runat="server" Text='<%# Eval("title")%>'></asp:Label></td>
                           
                            <td><%# Eval("cname")%></td>
                           
                           <td><%# Eval("location")%></td>
                           
<td><%# Eval("email")%></td>
<td><%# Eval("cno")%></td>
<td><%# Eval("pos")%></td>
<td><%# Eval("pro")%></td>
<td><%# Eval("date1")%></td>
<td><%# Eval("sal")%></td>

                     
                            
                            <td>
                               
                                <asp:LinkButton ID="LinkButton1" CommandName="delete" CommandArgument='<%# Eval("id")%>' Text="" runat="server" ForeColor="red" Font-Size="18">
    <i class="fa-solid fa-trash"></i>
                                </asp:LinkButton>
                            </td>

                        </tr>
                    </tbody>


                </ItemTemplate>

            </asp:Repeater>
            </table>
                  </div>
</asp:Content>

