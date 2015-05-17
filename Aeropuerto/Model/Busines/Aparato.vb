Public Class Aparato
    Private idAparell As Integer
    Private longitud As Double
    Private Pes As Double
    Private consumHora As Double

    Public Sub New(ByVal tlongitud, ByVal tPes, ByVal tconsumHora)
        longitud = tlongitud
        Pes = tPes
        consumHora = tconsumHora
    End Sub

    Public Sub New()
    End Sub

    Public Property pIdAparell As Integer
        Get
            Return idAparell
        End Get
        Set(ByVal value As Integer)
            idAparell = value
        End Set
    End Property

    Public Property pLongitud As Double
        Get
            Return longitud
        End Get
        Set(ByVal value As Double)
            longitud = value
        End Set
    End Property

    Public Property pPes As Double
        Get
            Return Pes
        End Get
        Set(ByVal value As Double)
            Pes = value
        End Set
    End Property

    Public Property pConsumHora As Double
        Get
            Return consumHora
        End Get
        Set(ByVal value As Double)
            consumHora = value
        End Set
    End Property
    Public Function MostraAparelldeVol()
        Return longitud & ", " & Pes & ", " & consumHora
    End Function

    Public Function CalculaConsum(ByVal duradaVol As Double) As Double
        Return 150 * duradaVol
    End Function

    Public Function CalculaMetresAterratge() As Double
        Return longitud * 70 + (Pes / 1200)
    End Function
End Class
