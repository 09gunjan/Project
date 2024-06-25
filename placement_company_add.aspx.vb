

Imports System.Data.SqlClient
Imports System.Data
Partial Class placement_company_add
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConString").ConnectionString
    Dim db As New SqlConnection(connectionString)
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim s As String
        s = "insert into company (cname,place,street,pcode,dist,cno,email) values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "','" & TextBox7.Text & "')"
        Dim cmd As New SqlCommand(s, db)
        cmd.ExecuteNonQuery()
        Response.Write("<script LANGUAGE='JavaScript' >alert('Company Add Successfully')</script>")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        db.Open()

    End Sub
End Class
