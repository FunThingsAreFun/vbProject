Imports System.Data.SqlClient

Public Class BD

    Dim strConnexio As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Aeropuerto.mdf;Integrated Security=True;User Instance=True"
    Dim con As New SqlConnection(strConnexio)

    Public Property pCon As SqlConnection
        Get
            Return con
        End Get
        Set(ByVal value As SqlConnection)
            con = value
        End Set
    End Property

    Public Sub obrirBD()
        con.Open()
    End Sub

    Public Sub tancarBD()
        If con.State <> ConnectionState.Closed Then
            con.Close()
        End If
    End Sub

    Public Function insertarVuelo(ByVal nIdAparell As Integer, ByVal nDataVol As Date, ByVal nDuradaVol As Double, ByVal nNIFPilot As String)
        Dim command As New SqlCommand()

        command.Parameters.Add(New SqlParameter("@IdAparell", SqlDbType.Int))
        command.Parameters("@IdAparell").Value = nIdAparell

        command.Parameters.Add(New SqlParameter("@DataVol", SqlDbType.Date))
        command.Parameters("@DataVol").Value = nDataVol

        command.Parameters.Add(New SqlParameter("@DuradaVol", SqlDbType.Float))
        command.Parameters("@DuradaVol").Value = nDuradaVol

        command.Parameters.Add(New SqlParameter("@NIFPilot", SqlDbType.Char))
        command.Parameters("@NIFPilot").Value = nNIFPilot

        command.CommandText = "StoredProcedure2"
        command.CommandType = CommandType.StoredProcedure
        command.Connection = Me.con

        Return command.ExecuteScalar
    End Function

    Public Sub insertarPiloto(ByVal NIFPilot As String, ByVal Nom As String, ByVal Cognoms As String, ByVal Telefon As Integer, ByVal Adreça As String, ByVal NumAterratges As Integer, ByVal NumHoresVol As Double)
        Dim command As New SqlCommand()

        command.Parameters.Add(New SqlParameter("@NIFPilot", SqlDbType.Char))
        command.Parameters("@NIFPilot").Value = NIFPilot

        command.Parameters.Add(New SqlParameter("@Nom", SqlDbType.Char))
        command.Parameters("@Nom").Value = Nom

        command.Parameters.Add(New SqlParameter("@Cognoms", SqlDbType.Char))
        command.Parameters("@Cognoms").Value = Cognoms

        command.Parameters.Add(New SqlParameter("@Telefon", SqlDbType.Int))
        command.Parameters("@Telefon").Value = Telefon

        command.Parameters.Add(New SqlParameter("@Adreça", SqlDbType.Char))
        command.Parameters("@Adreça").Value = Adreça

        command.Parameters.Add(New SqlParameter("@NumAterratges", SqlDbType.Int))
        command.Parameters("@NumAterratges").Value = NumAterratges

        command.Parameters.Add(New SqlParameter("@NumHoresVol", SqlDbType.Float))
        command.Parameters("@NumHoresVol").Value = NumHoresVol

        command.CommandText = "StoredProcedure3"
        command.CommandType = CommandType.StoredProcedure
        command.Connection = Me.con

        command.ExecuteNonQuery()
    End Sub

    Public Function instertarAparato(ByVal longitud As Double, ByVal Pes As Double, ByVal consumHora As Double)
        Dim command As New SqlCommand()

        command.Parameters.Add(New SqlParameter("@longitud", SqlDbType.Float))
        command.Parameters("@longitud").Value = longitud

        command.Parameters.Add(New SqlParameter("@Pes", SqlDbType.Float))
        command.Parameters("@Pes").Value = Pes

        command.Parameters.Add(New SqlParameter("@consumHora", SqlDbType.Float))
        command.Parameters("@consumHora").Value = consumHora

        command.CommandText = "StoredProcedure4"
        command.CommandType = CommandType.StoredProcedure
        command.Connection = Me.con

        Return command.ExecuteScalar
    End Function

    Public Function buscarVol(ByVal value As Integer) As Vol
        Dim vol = New Vol()
        Dim command As New SqlCommand()

        command.Parameters.Add(New SqlParameter("@id", SqlDbType.Int))
        command.Parameters("@id").Value = value

        command.CommandText = "StoredProcedure7"
        command.CommandType = CommandType.StoredProcedure
        command.Connection = Me.con
        Dim reader As SqlDataReader = command.ExecuteReader()
        While reader.Read()
            vol = New Vol(reader(1), reader(2), reader(3), reader(4))
            vol.bIdvol = reader(0)
        End While
        reader.Close()
        Return vol
    End Function

    Public Function buscarAparell(ByVal value As Integer) As Aparato
        Dim apa
        Dim command As New SqlCommand()

        command.Parameters.Add(New SqlParameter("@id", SqlDbType.Int))
        command.Parameters("@id").Value = value

        command.CommandText = "StoredProcedure6"
        command.CommandType = CommandType.StoredProcedure
        command.Connection = Me.con
        Dim reader As SqlDataReader = command.ExecuteReader()
        While reader.Read()
            apa = New Aparato(reader(1), reader(2), reader(3))
            apa.pIdAparell = reader(0)
        End While
        reader.Close()
        Return apa
    End Function

    Public Function buscarPilot(ByVal value As String) As Piloto
        Dim pil
        Dim command As New SqlCommand()

        command.Parameters.Add(New SqlParameter("@id", SqlDbType.Char))
        command.Parameters("@id").Value = value

        command.CommandText = "StoredProcedure8"
        command.CommandType = CommandType.StoredProcedure
        command.Connection = Me.con
        Dim reader As SqlDataReader = command.ExecuteReader()
        While reader.Read()
            pil = New Piloto(reader(0), reader(1), reader(2), reader(3), reader(4), reader(5), reader(6))
        End While
        reader.Close()
        Return pil
    End Function
End Class
