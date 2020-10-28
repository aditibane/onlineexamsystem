Imports System.Data.SqlClient
Partial Class login
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim comm As SqlCommand
    Dim update_flag As String
    Dim dar As SqlDataReader

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("Kid") = txtkaushalyaid.Text
        Session.Timeout = 1

        conn = New SqlConnection("server=172.16.101.82\ltkaushalya;uid=sa;pwd=sa@1234;database=d19")
        conn.Open()
        comm = New SqlCommand("select * from registration where Kaushalyaid='" & txtkaushalyaid.Text & "'", conn)
        dar = comm.ExecuteReader
        While dar.Read
            update_flag = dar(11)
        End While



        conn = New SqlConnection("server=172.16.101.82\ltkaushalya;uid=sa;pwd=sa@1234;database=d19")
        conn.Open()
        comm = New SqlCommand("select * from registration where Kaushalyaid='" & txtkaushalyaid.Text & "' and password1='" & txtpassword.Text & "'", conn)


        Dim n As Integer
        n = comm.ExecuteScalar
        If n >= 1 And update_flag = "Y" Then
            Response.Redirect("StartTest.aspx")
        ElseIf n >= 1 And update_flag = "N" Then
            Response.Redirect("ChangePassword.aspx")
        Else
            Label1.Text = "Username or password invalid"
        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Dim obj As New Random

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        txtotp.Text = ""
        Dim chararray() As Char = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

        Dim i As Integer
        Dim pos As Integer
        For i = 1 To 6
            pos = obj.[Next](i, chararray.Length)
            txtotp.Text = txtotp.Text + chararray.GetValue(pos)
        Next




    End Sub
End Class
