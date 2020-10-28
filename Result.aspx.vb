Imports System.Data.SqlClient
Partial Class Result
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim comm As SqlCommand
    Dim dar As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtkaushalyaid.Text = Session("Kid")
        If txtkaushalyaid.Text = "" Then
            Response.Redirect("login.aspx")
        End If

        conn = New SqlConnection("server=172.16.101.82\ltkaushalya;uid=sa;pwd=sa@1234;database=d19")
        conn.Open()
        comm = New SqlCommand("select * from AttemptExam ", conn)
        dar = comm.ExecuteReader
        GridView1.DataSource = dar
        GridView1.DataBind()
        conn.Close()

        conn = New SqlConnection("server=172.16.101.82\ltkaushalya;uid=sa;pwd=sa@1234;database=d19")
        conn.Open()
        comm = New SqlCommand("select sum(marks) from AttemptExam", conn)
        txttotal.Text = comm.ExecuteScalar
        txtpercentage.Text = (txttotal.Text / 5) * 100
        If txtpercentage.Text >= 40 Then
            txtgrade.Text = "PASS"
        Else
            txtgrade.Text = "FAIL"
        End If

    End Sub

    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        If (e.Row.RowType = DataControlRowType.DataRow) Then
            If e.Row.Cells(6).Text = 1 Then
                e.Row.Cells(6).BackColor = System.Drawing.Color.Green
                e.Row.Cells(6).ForeColor = System.Drawing.Color.White
            ElseIf e.Row.Cells(6).Text = 0 Then
                e.Row.Cells(6).BackColor = System.Drawing.Color.Red
                e.Row.Cells(6).ForeColor = System.Drawing.Color.White
            End If
        End If
    End Sub

    
End Class
