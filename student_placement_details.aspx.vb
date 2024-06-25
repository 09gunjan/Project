Imports System.Data.SqlClient
Imports System.Data
Partial Class student_placement_details
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConString").ConnectionString
    Dim db As New SqlConnection(connectionString)
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        db.Open()
        display()

    End Sub


    Protected Sub Repeater1_ItemCommand(source As Object, e As RepeaterCommandEventArgs) Handles Repeater1.ItemCommand
        Dim id As String = e.CommandArgument
        Dim t1, t2 As Label

        Dim s As String
        t1 = e.Item.FindControl("Label1")
        t2 = e.Item.FindControl("Label3")

        Dim tm As String
        tm = Date.Now.ToString("hh:mm:ss")
        Select Case e.CommandName


            Case ("delete")
               

                s = "insert into apply1 (sname,gender,dob,cno,email,cname,cid,sid,dt,tm) values('" & Session("sname") & "','" & Session("gender") & "','" & Session("dob") & "','" & Session("cno") & "','" & Session("email") & "','" & t2.Text & "','" & t1.Text & "','" & Session("id") & "','" & Date.Now.ToString("dd-MM-yyyy") & "','" & Date.Now.ToString("hh:mm") & "')"
                Dim cmd As New SqlCommand(s, db)
                cmd.ExecuteNonQuery()
                Response.Write("<script LANGUAGE='JavaScript'>alert('Placement Apply Successfully')</script>")

        End Select
        display()
    End Sub
    Public Sub display()

        Dim adp As New SqlDataAdapter("select * from placement", db) ' where date1>='" & Date.Now.ToString("dd-MM-yyyy") & "'"
        Dim ds As New DataSet
        'Dim cmd As OleDbCommand

        adp.Fill(ds, "placement")
        Repeater1.DataSource = ds.Tables("placement")
        Repeater1.DataBind()
    End Sub


End Class
