Imports System.Web
Imports System.Data.SqlClient
Public Class Conexiones
    Public Shared Cnn As SqlClient.SqlConnection 'creamos un evento publico para lograr utilizarlo en otras y que tome como objeto la conexion'
    Public Shared Validar As String = "0"  'simplemente validad'

    Public Shared Sub AbrirConexion() 'procedimientos que se pueden usar en culaquier lado'
        Cnn = New SqlConnection("server=DESKTOP-F6UA494; database=escuela; integrated security=true")

    End Sub

End Class
