﻿
Imports System.Data.SqlClient
Imports System.Data
Partial Class placement_company_display
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConString").ConnectionString
    Dim db As New SqlConnection(connectionString)
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        db.Open()
        display()

    End Sub


    Protected Sub Repeater1_ItemCommand(source As Object, e As RepeaterCommandEventArgs) Handles Repeater1.ItemCommand
        Dim id As String = e.CommandArgument
        Dim t1 As Label

        Dim s As String
        t1 = e.Item.FindControl("Label1")

        Dim tm As String
        tm = Date.Now.ToString("hh:mm:ss")
        Select Case e.CommandName


            Case ("delete")
                Session("id") = t1.Text
                s = "delete from company where id=" & t1.Text
                Dim cmd As New SqlCommand(s, db)
                cmd.ExecuteNonQuery()
                Response.Write("<script LANGUAGE='JavaScript'>alert('Drop Company Successfully')</script>")

        End Select
        display()
    End Sub
    Public Sub display()

        Dim adp As New SqlDataAdapter("select * from company", db)
        Dim ds As New DataSet
        'Dim cmd As OleDbCommand
        adp.Fill(ds, "company")
        Repeater1.DataSource = ds.Tables("company")
        Repeater1.DataBind()
    End Sub


End Class
