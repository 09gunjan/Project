
Imports System.Data.SqlClient
Imports System.Data
Partial Class placement_applied_list1
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConString").ConnectionString
    Dim db As New SqlConnection(connectionString)
    

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        db.Open()
        If Page.IsPostBack = False Then
            Dim s As String
            s = "select * from student"
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
                    HyperLink1.NavigateUrl = r(15)

                Catch ex As Exception

                End Try
                Image1.ImageUrl = r(16)

            End If
        End If

    End Sub
End Class
