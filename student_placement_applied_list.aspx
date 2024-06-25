<%@ Page Title="" Language="VB" MasterPageFile="~/student.master" AutoEventWireup="false" CodeFile="student_placement_applied_list.aspx.vb" Inherits="student_placement_applied_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="card mb-12">
            <div class="card-header"><strong>Placement Applied List</strong></div>
                 <asp:Repeater ID="Repeater1" runat="server">

                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
<th>Student Name</th>
<th>Gender</th>
<th>Date-Of-Birth</th>
<th>Contact Number</th>
<th>E-Mail ID</th>
<th>Company Name</th>
<th>Date</th>
<th>Time</th>
<th>Action</th>


                                
                            </tr>
                        </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("id")%>'></asp:Label></td>
                            <td><asp:Label ID="Label2" CssClass="ccc" runat="server" Text='<%# Eval("sname")%>'></asp:Label></td>
                           <td><asp:Label ID="Label3" CssClass="ccc" runat="server" Text='<%# Eval("gender")%>'></asp:Label></td>
                           
                            
                            
                           <td><%# Eval("dob")%></td>
                           
<td><%# Eval("cno")%></td>
<td><%# Eval("email")%></td>

 <td>
                               
                                <asp:LinkButton ID="LinkButton2" CommandName="company" CommandArgument='<%# Eval("id")%>' Text='<%# Eval("cname")%>' runat="server" ForeColor="green" Font-Size="13">
    <%# Eval("cname")%>
                                </asp:LinkButton>
                            </td>                   
                            <td><%# Eval("dt")%></td>
                            <td><%# Eval("tm")%></td>

                            <td>
                               
                                <asp:LinkButton ID="LinkButton1" CommandName="delete" CommandArgument='<%# Eval("id")%>' Text="" runat="server" ForeColor="red" Font-Size="16">
    <i class="fa-solid fa-trash-can"></i>
                                </asp:LinkButton>
                            </td>

                        </tr>
                    </tbody>


                </ItemTemplate>

            </asp:Repeater>
            </table>
                  </div>
</asp:Content>

