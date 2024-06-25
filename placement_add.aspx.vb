

Imports System.Data.SqlClient
Imports System.Data
Partial Class placement_add
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConString").ConnectionString
    Dim db As New SqlConnection(connectionString)
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim s As String
        s = "insert into placement (title,cname,location,email,cno,pos,pro,date1,sal) values('" & TextBox1.Text & "','" & DropDownList1.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "','" & TextBox7.Text & "','" & TextBox8.Text & "','" & TextBox9.Text & "')"
        Dim cmd As New SqlCommand(s, db)
        cmd.ExecuteNonQuery()
        Response.Write("<script LANGUAGE='JavaScript' >alert('Placement Add Successfully')</script>")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        db.Open()
        If Page.IsPostBack = False Then
            DropDownList1.Items.Clear()
            DropDownList1.Items.Add("-Select-")
            Dim s As String
            s = "select * from company"
            Dim cmd As New SqlCommand(s, db)
            Dim r As SqlDataReader = cmd.ExecuteReader
            While r.Read
                DropDownList1.Items.Add(r(1))
            End While
        End If
    End Sub
End Class
