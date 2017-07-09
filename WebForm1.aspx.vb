Imports System.Data
Imports System.Data.OleDb
Public Class WebForm1

    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim con As New OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\Users\BETICO\Documents\Visual Studio 2010\Projects\Unidad 3 Paso 6\Unidad 3 Paso 6\Estudiantes.accdb;Persist Security Info = False;")
        Dim conteofilas As Integer
        Dim estadocon As ConnectionState
        estadocon = con.State

        Try
            If con.State = ConnectionState.Closed Then
                con.Open()
            End If

            Dim cmd As New OleDbCommand("insert into Estudiantes(Identificacion,Nombres,Apellidos,Direccion,Telefono,Email,Asignatura_escogida) values('" & TextBox1.Text & "','" & TextBox2.Text.ToUpper & "','" & TextBox3.Text.ToUpper & "','" & TextBox4.Text.ToUpper & "','" & TextBox5.Text & "','" & TextBox6.Text.ToLower & "','" & DropDownList1.SelectedValue & "')", con)
            conteofilas = cmd.ExecuteNonQuery()

            If conteofilas > 0 Then
                MsgBox("Datos guardados correctamente")
            Else
                MsgBox("Sus datos no fueron guardados !!")
                con.Close()
            End If

        Catch ex As Exception

        End Try
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Dim con As New OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\Users\BETICO\Documents\Visual Studio 2010\Projects\Unidad 3 Paso 6\Unidad 3 Paso 6\Estudiantes.accdb;Persist Security Info = False;")
        Dim conteofilas As Integer
        Dim estadocon As ConnectionState
        estadocon = con.State

        Try
            If con.State = ConnectionState.Closed Then
                con.Open()
            End If

            Dim cmd As New OleDbCommand("update  Estudiantes set Identificacion = '" & TextBox1.Text & "', Nombres = '" & TextBox2.Text.ToUpper & "', Apellidos = '" & TextBox3.Text.ToUpper & "', Direccion = '" & TextBox4.Text.ToUpper & "',Telefono = '" & TextBox5.Text & "', Email = '" & TextBox6.Text.ToLower & "',Asignatura_escogida = '" & DropDownList1.SelectedValue & "'WHERE Identificacion=" & TextBox1.Text & " ", con)
            conteofilas = cmd.ExecuteNonQuery()

            If conteofilas > 0 Then
                MsgBox("Datos actualizados correctamente")
            End If

        Catch ex As Exception
        Finally
            If con.State = ConnectionState.Open Then
                con.Close()
            End If
        End Try
    End Sub

    Protected Sub Button3_Click1(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        Dim con As New OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\Users\BETICO\Documents\Visual Studio 2010\Projects\Unidad 3 Paso 6\Unidad 3 Paso 6\Estudiantes.accdb;Persist Security Info = False;")
        Dim conteofilas As Integer
        Dim estadocon As ConnectionState
        estadocon = con.State

        Try
            If con.State = ConnectionState.Closed Then
                con.Open()
            End If

            Dim cmd As New OleDbCommand("delete from Estudiantes where identificacion=" & TextBox1.Text & " ", con)
            conteofilas = cmd.ExecuteNonQuery()

            If conteofilas > 0 Then
                MsgBox("Datos borrados correctamente")
                con.Close()
            End If

        Catch ex As Exception

        End Try
    End Sub
End Class