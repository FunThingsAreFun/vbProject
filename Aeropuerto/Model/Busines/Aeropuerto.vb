Public Class Aeropuerto
    Private nom As String
    Private aparatosQueVuelan As New ArrayList
    Private pilotos As New ArrayList
    Private vuelos As New ArrayList
    Private bd As New BD

    Public Sub New(ByVal tNom)
        pNom = tNom
    End Sub

    Public Property pNom As String
        Get
            Return nom
        End Get
        Set(ByVal value As String)
            nom = value
        End Set
    End Property

    Public Property pAparatosQueVuelan() As ArrayList
        Get
            Return aparatosQueVuelan
        End Get
        Set(ByVal value As ArrayList)
            aparatosQueVuelan = value
        End Set
    End Property

    Public Property pPilotos() As ArrayList
        Get
            Return pilotos
        End Get
        Set(ByVal value As ArrayList)
            pilotos = value
        End Set
    End Property

    Public Property pVuelos() As ArrayList
        Get
            Return vuelos
        End Get
        Set(ByVal value As ArrayList)
            vuelos = value
        End Set
    End Property

    Public Sub addAparato(ByVal value As Aparato)
        bd.obrirBD()
        value.pIdAparell = bd.instertarAparato(value.pLongitud, value.pPes, value.pConsumHora)
        bd.tancarBD()
        aparatosQueVuelan.Add(value)
    End Sub

    Public Sub addPilotos(ByVal value As Piloto)
        bd.obrirBD()
        bd.insertarPiloto(value.bNIFPilot, value.bNom, value.bCognoms, value.bTelefon, value.bAdreça, value.bNumAterratges, value.bNumHoresVol)
        bd.tancarBD()
        pilotos.Add(value)
    End Sub

    Public Sub addVuelos(ByVal value As Vol)
        bd.obrirBD()
        value.bIdVol = bd.insertarVuelo(value.bIdAparell, value.bDataVol, value.bDuradaVol, value.bNIFPilot)
        bd.tancarBD()
        vuelos.Add(value)
    End Sub

    Public Function calcularCosteVuelo(ByVal value As Integer) As Double
        bd.obrirBD()
        Dim cacharro = bd.buscarAparell(value)
        Dim vuelo = bd.buscarVol(value)
        Dim piloto = bd.buscarPilot(vuelo.bNIFPilot)
        bd.tancarBD()
        Return ((cacharro.CalculaMetresAterratge() * 70) + (cacharro.pPes * 100) - (piloto.bNumAterratges * 0.10000000000000001) + (cacharro.CalculaConsum(vuelo.bDuradaVol) * 30)).ToString
    End Function
End Class
