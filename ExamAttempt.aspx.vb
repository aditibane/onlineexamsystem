Imports System.Data.SqlClient
Partial Class ExamAttempt
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim comm As SqlCommand
    Dim dar As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtkaushalyaid.Text = Session("Kid")
        If txtkaushalyaid.Text = "" Then
            Response.Redirect("login.aspx")
        End If

        conn = New SqlConnection("server=172.16.101.82\ltkaushalya;uid=sa;pwd=sa@1234;database=Kaushalya_Vikrant")
        conn.Open()
        comm = New SqlCommand("select * from QuestionMaster where Questionid='" & txtqid.Text & "'", conn)
        dar = comm.ExecuteReader
        While dar.Read
            txtquestion.Text = dar(1)
            RadioButton1.Text = dar(2)
            RadioButton2.Text = dar(3)
            RadioButton3.Text = dar(4)
            RadioButton4.Text = dar(5)
            txtansdatabase.Text = dar(6)
        End While
        conn.Close()

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        RadioButton1.Checked = False
        RadioButton2.Checked = False
        RadioButton3.Checked = False
        RadioButton4.Checked = False


        If txtqid.Text >= 1 And txtqid.Text < 5 Then


            txtqid.Text = txtqid.Text + 1

            conn = New SqlConnection("server=172.16.101.82\ltkaushalya;uid=sa;pwd=sa@1234;database=Kaushalya_Vikrant")
            conn.Open()
            comm = New SqlCommand("select * from QuestionMaster where Questionid='" & txtqid.Text & "'", conn)
            dar = comm.ExecuteReader
            While dar.Read
                txtquestion.Text = dar(1)
                RadioButton1.Text = dar(2)
                RadioButton2.Text = dar(3)
                RadioButton3.Text = dar(4)
                RadioButton4.Text = dar(5)
                txtansdatabase.Text = dar(6)
            End While
            conn.Close()
            Label1.Text = ""
        Else
            Label1.Text = "Last Question"
        End If


    End Sub

    Protected Sub RadioButton1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButton1.CheckedChanged
        txtselected.Text = RadioButton1.Text
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        RadioButton1.Checked = False
        RadioButton2.Checked = False
        RadioButton3.Checked = False
        RadioButton4.Checked = False


        If txtqid.Text > 1 And txtqid.Text <= 5 Then


            txtqid.Text = txtqid.Text - 1

            conn = New SqlConnection("server=172.16.101.82\ltkaushalya;uid=sa;pwd=sa@1234;database=Kaushalya_Vikrant")
            conn.Open()
            comm = New SqlCommand("select * from QuestionMaster where Questionid='" & txtqid.Text & "'", conn)
            dar = comm.ExecuteReader
            While dar.Read
                txtquestion.Text = dar(1)
                RadioButton1.Text = dar(2)
                RadioButton2.Text = dar(3)
                RadioButton3.Text = dar(4)
                RadioButton4.Text = dar(5)
                txtansdatabase.Text = dar(6)
            End While
            conn.Close()
            Label1.Text = ""
        Else
            Label1.Text = "First Question"
        End If

    End Sub

    Protected Sub RadioButton2_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButton2.CheckedChanged
        txtselected.Text = RadioButton2.Text
    End Sub

    Protected Sub RadioButton3_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButton3.CheckedChanged
        txtselected.Text = RadioButton3.Text
    End Sub

    Protected Sub RadioButton4_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButton4.CheckedChanged
        txtselected.Text = RadioButton4.Text
    End Sub

    Protected Sub txtansdatabase_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtansdatabase.TextChanged

    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim m As Integer

        If txtselected.Text = txtansdatabase.Text Then
            m = 1
        Else
            m = 0
        End If

        conn = New SqlConnection("server=172.16.101.82\ltkaushalya;uid=sa;pwd=sa@1234;database=d19")
        conn.Open()
        comm = New SqlCommand("insert into AttemptExam values(" & txtqid.Text & ", '" & txtquestion.Text & "','" & txtselected.Text & "','" & txtansdatabase.Text & "', '" & txtkaushalyaid.Text & "', " & m & ")", conn)
        comm.ExecuteNonQuery()
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Response.Redirect("Result.aspx")
    End Sub
End Class
