Imports System.Data.SqlClient

Partial Class Registeration

    Inherits System.Web.UI.Page

    Dim conn As SqlConnection
    Dim comm As SqlCommand
    Dim dar As SqlDataReader

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        conn = New SqlConnection("server=172.16.101.82\ltkaushalya;uid=sa;pwd=sa@1234;database=Kaushalya_Main")
        conn.Open()
        comm = New SqlCommand("select * from student_info where student_id='" & txtkaushalyaid.Text & "' ", conn)
        dar = comm.ExecuteReader
        While dar.Read
            txtpassword.Text = dar(7)
            txtname.Text = dar(1)
            txtbranch.Text = dar(2)
            txtemail.Text = dar(6)
            txtinstitutecode.Text = dar(8)

        End While
        conn.Close()

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        conn = New SqlConnection("server=172.16.101.82\ltkaushalya;uid=sa;pwd=sa@1234;database=d19")
        conn.Open()
        comm = New SqlCommand("insert into registration values('" & txtkaushalyaid.Text & "','" & txtpassword.Text & "','" & txtname.Text & "','" & txtaddress.Text & "','" & txtemail.Text & "','" & txtinstitutecode.Text & "','" & txtbranch.Text & "','" & ddexamname.Text & "','" & ddmonth.Text & "','" & ddyear.Text & "','N','')", conn)
        comm.ExecuteNonQuery()
        Label1.Text = "Record Inserted"
        conn.Close()

    End Sub
End Class
