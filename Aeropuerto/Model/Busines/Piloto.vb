Public Class Piloto
    Private NIFPilot As String
    Private Nom As String
    Private Cognoms As String
    Private Telefon As Integer
    Private Adreça As String
    Private NumAterratges As Integer
    Private NumHoresVol As Double

    Public Sub New(ByVal bNIFPilot, ByVal bNom, ByVal bCognoms, ByVal bTelefon, ByVal bAdreça, ByVal bNumAterratges, ByVal bNumHoresVol)
        NIFPilot = bNIFPilot
        Nom = bNom
        Cognoms = bCognoms
        Telefon = bTelefon
        Adreça = bAdreça
        NumAterratges = bNumAterratges
        NumHoresVol = bNumHoresVol
    End Sub

    Public Sub New()
    End Sub

    Public Property bNIFPilot As String
        Get
            Return NIFPilot
        End Get
        Set(ByVal value As String)
            NIFPilot = value
        End Set
    End Property

    Public Property bNom As String
        Get
            Return Nom
        End Get
        Set(ByVal value As String)
            Nom = value
        End Set
    End Property

    Public Property bCognoms As String
        Get
            Return Cognoms
        End Get
        Set(ByVal value As String)
            Cognoms = value
        End Set
    End Property

    Public Property bTelefon As Integer
        Get
            Return Telefon
        End Get
        Set(ByVal value As Integer)
            Telefon = value
        End Set
    End Property

    Public Property bAdreça As String
        Get
            Return Adreça
        End Get
        Set(ByVal value As String)
            Adreça = value
        End Set
    End Property

    Public Property bNumAterratges As Integer
        Get
            Return NumAterratges
        End Get
        Set(ByVal value As Integer)
            NumAterratges = value
        End Set
    End Property

    Public Property bNumHoresVol As Double
        Get
            Return NumHoresVol
        End Get
        Set(ByVal value As Double)
            NumHoresVol = value
        End Set
    End Property

    Public Function MostraPilot()
        Return NIFPilot & ", " & Nom & ", " & Cognoms & ", " & Telefon & ", " & Adreça & ", " & NumAterratges & ", " & NumHoresVol
    End Function
End Class
