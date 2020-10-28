Imports System.Data.SqlClient
Partial Class StartTest
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim comm As SqlCommand

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        conn = New SqlConnection("server=172.16.101.82\ltkaushalya;uid=sa;pwd=sa@1234;database=d19")
        conn.Open()
        comm = New SqlCommand("delete from AttemptExam", conn)
        comm.ExecuteNonQuery()
        Response.Redirect("ExamAttempt.aspx")
    End Sub

    Protected Sub txtkaushalyaid_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtkaushalyaid.TextChanged

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtkaushalyaid.Text = Session("Kid")
        If txtkaushalyaid.Text = "" Then
            Response.Redirect("login.aspx")
        End If

        Button2.Enabled = False
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        conn = New SqlConnection("server=172.16.101.82\ltkaushalya;uid=sa;pwd=sa@1234;database=d19")
        conn.Open()
        comm = New SqlCommand("delete from AttemptExam", conn)
        comm.ExecuteNonQuery()

        Response.Redirect("ExamAttempt.aspx")
    End Sub

    Protected Sub CheckBox1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox1.CheckedChanged
        If CheckBox1.Checked = True Then
            Button2.Enabled = True
        Else
            Button2.Enabled = False
        End If
    End Sub
End Class
