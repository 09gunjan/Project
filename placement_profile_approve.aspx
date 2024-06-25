<%@ Page Title="" Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="placement_profile_approve.aspx.vb" Inherits="placement_profile_approve" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="card mb-12">
            <div class="card-header"><strong>Student Profile Approval</strong></div>
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
                                 <th>Skill</th>
                                 <th>Photo</th>
                                
                                 
                            </tr>
                        </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("id")%>'></asp:Label></td>
                            <td><asp:Label ID="Label2" CssClass="ccc" runat="server" Text='<%# Eval("sname")%>'></asp:Label></td>
                           
                            <td><%# Eval("gender")%></td>
                            <td><%# Eval("dob")%></td>
                           
<td><%# Eval("cno")%></td>

<td><%# Eval("email")%></td>
                            <td><%# Eval("skill")%></td>
<td> <img src="<%# Eval("img")%>" width="100px" alt="Alternate Text" /> </td>
                           <td> <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# Eval("cv")%>' runat="server">CV Link</asp:HyperLink></td>
                            <td>
                                <asp:LinkButton ID="LinkButton2" CommandName="delete" CommandArgument='<%# Eval("id")%>' Text="" runat="server" ForeColor="red" Font-Size="18">
    <%# If(Eval("st").ToString() = "Yes", "<b  style=color:green; font-size:30px;><i class='fa-solid fa-a'></i></b>", "<b style=color:red;font-size: 40px;><i class='fa-solid fa-a'></i></b>")%>
                                </asp:LinkButton>
                            </td>
                     
                            
                            

                        </tr>
                    </tbody>


                </ItemTemplate>

            </asp:Repeater>
            </table>
                  </div>
</asp:Content>

