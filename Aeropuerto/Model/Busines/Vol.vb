Public Class Vol
    Private IdVol As Integer
    Private IdAparell As Integer
    Private DataVol As Date
    Private DuradaVol As Double
    Private NIFPilot As String

    Public Sub New(ByVal bIdAparell, ByVal bDataVol, ByVal bDuradaVol, ByVal bNIFPilot)
        IdAparell = bIdAparell
        DataVol = bDataVol
        DuradaVol = bDuradaVol
        NIFPilot = bNIFPilot
    End Sub

    Public Sub New()
    End Sub

    Public Property bIdVol As Integer
        Get
            Return IdVol
        End Get
        Set(ByVal value As Integer)
            IdVol = value
        End Set
    End Property

    Public Property bIdAparell As Integer
        Get
            Return IdAparell
        End Get
        Set(ByVal value As Integer)
            IdAparell = value
        End Set
    End Property

    Public Property bDataVol As Date
        Get
            Return DataVol
        End Get
        Set(ByVal value As Date)
            DataVol = value
        End Set
    End Property

    Public Property bDuradaVol As Double
        Get
            Return DuradaVol
        End Get
        Set(ByVal value As Double)
            DuradaVol = value
        End Set
    End Property

    Public Property bNIFPilot As String
        Get
            Return NIFPilot
        End Get
        Set(ByVal value As String)
            NIFPilot = value
        End Set
    End Property

    Public Function MostraVol() As String
        Return IdAparell & ", " & DataVol & ", " & DuradaVol & ", " & NIFPilot
    End Function
End Class
