
Imports System.Data.SqlClient
Imports System.Data
Partial Class student_profile_update
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConString").ConnectionString
    Dim db As New SqlConnection(connectionString)
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim s As String

        Dim cv As String = ".\upload\" & FileUpload1.FileName
        Dim img As String = ".\upload\" & FileUpload2.FileName

        FileUpload1.SaveAs(Server.MapPath(".\upload\") & FileUpload1.FileName)
        FileUpload2.SaveAs(Server.MapPath(".\upload\") & FileUpload2.FileName)

        s = "update student set sname='" & TextBox1.Text & "',gender='" & DropDownList1.Text & "',dob='" & TextBox2.Text & "',cno='" & TextBox3.Text & "',email='" & TextBox4.Text & "',sslc='" & TextBox5.Text & "',y1='" & TextBox6.Text & "',p2='" & TextBox7.Text & "',y2='" & TextBox8.Text & "',ug='" & TextBox9.Text & "',y3='" & TextBox10.Text & "',pg='" & TextBox11.Text & "',y4='" & TextBox12.Text & "',skill='" & TextBox13.Text & "',cv='" & cv & "',img='" & img & "' where id=" & Session("id")
        Dim cmd As New SqlCommand(s, db)
        cmd.ExecuteNonQuery()
        Response.Write("<script LANGUAGE='JavaScript' >alert('Update Profile Successfully')</script>")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        db.Open()
        If Page.IsPostBack = False Then
            Dim s As String
            s = "select * from student where id=" & Session("id")
            Dim cmd As New SqlCommand(s, db)
            Dim r As SqlDataReader = cmd.ExecuteReader
            If r.Read() Then
                Try
                    TextBox1.Text = r(1)
                    DropDownList1.Text = r(2)
                    TextBox2.Text = r(3)
                    TextBox3.Text = r(4)
                    TextBox4.Text = r(5)
                    TextBox5.Text = r(6)
                    TextBox6.Text = r(7)
                    TextBox7.Text = r(8)
                    TextBox8.Text = r(9)
                    TextBox9.Text = r(10)
                    TextBox10.Text = r(11)
                    TextBox11.Text = r(12)
                    TextBox12.Text = r(13)
                    TextBox13.Text = r(14)
                Catch ex As Exception

                End Try


            End If
        End If

    End Sub
End Class
