
Imports System.Data.SqlClient
Imports System.Data
Partial Class placement_applied_list
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
        Dim l1 As LinkButton
        Dim h1 As HiddenField
        Dim s As String
        t1 = e.Item.FindControl("Label1")
        t2 = e.Item.FindControl("Label3")
        l1 = e.Item.FindControl("LinkButton2")
        h1 = e.Item.FindControl("HiddenField1")

        Dim tm As String
        tm = Date.Now.ToString("hh:mm:ss")
        Select Case e.CommandName
            Case ("student")
                Session("sid") = h1.Value
                Response.Redirect("placement_applied_list1.aspx")
            Case ("company")
                Session("cname") = l1.Text
                Response.Redirect("placement_applied_list2.aspx")
            Case ("delete")


                s = "delete from apply1 where id=" & t1.Text
                Dim cmd As New SqlCommand(s, db)
                cmd.ExecuteNonQuery()
                Response.Write("<script LANGUAGE='JavaScript'>alert('Placement Declained')</script>")

        End Select
        display()
    End Sub
    Public Sub display()

        Dim adp As New SqlDataAdapter("select * from apply1", db)
        Dim ds As New DataSet
        'Dim cmd As OleDbCommand

        adp.Fill(ds, "apply1")
        Repeater1.DataSource = ds.Tables("apply1")
        Repeater1.DataBind()
    End Sub


End Class
