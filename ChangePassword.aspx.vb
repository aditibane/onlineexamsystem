Imports System.Data.SqlClient
Partial Class ChangePassword
    Inherits System.Web.UI.Page

    Dim comm As SqlCommand
    Dim conn As SqlConnection


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtkaushalyaid.Text = Session("Kid")
        If txtkaushalyaid.Text = "" Then
            Response.Redirect("login.aspx")
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If txtnewpassword.Text = txtconfirmpassword.Text Then

            conn = New SqlConnection("server=172.16.101.82\ltkaushalya;uid=sa;pwd=sa@1234;database=d19")
            conn.Open()
            comm = New SqlCommand("update registration set password1='" & txtconfirmpassword.Text & "' where kaushalyaid = '" & txtkaushalyaid.Text & "'", conn)
            comm.ExecuteNonQuery()

            conn.Close()

            conn = New SqlConnection("server=172.16.101.82\ltkaushalya;uid=sa;pwd=sa@1234;database=d19")
            conn.Open()
            comm = New SqlCommand("update registration set Update_Flag='Y' where kaushalyaId= '" & txtkaushalyaid.Text & "'", conn)
            comm.ExecuteNonQuery()

            Label1.Text = "Password changed successfully!"
            Response.Redirect("Login.aspx")
        Else
            Label1.Text = "Confirm and new password does not match"
        End If

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        txtoldpassword.Text = ""
        txtnewpassword.Text = ""
        txtconfirmpassword.Text = ""
    End Sub
End Class
