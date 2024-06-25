
Imports System.Data.SqlClient
Partial Class login_doctor
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConString").ConnectionString
    Dim db As New SqlConnection(connectionString)
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim s As String
       
            s = "select * from student where uname='" & TextBox1.Text & "' and pass='" & TextBox2.Text & "'"
            Dim cmd As New SqlCommand(s, db)
            Dim r As SqlDataReader = cmd.ExecuteReader
            If r.Read Then
                Session("id") = r(0)
                Session("sname") = r(1)
                Session("gender") = r(2)
                Session("dob") = r(3)
                Session("cno") = r(4)
                Session("email") = r(5)



                Response.Redirect("student_profile_update.aspx")
            Else
                Response.Write("<script LANGUAGE='JavaScript'>alert('Invalid Username/Password')</script>")
            End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        db.Open()

    End Sub
End Class
