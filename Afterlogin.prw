#Include 'Protheus.ch'

/*/{Protheus.doc} AfterLogin
    Validar a vers�o ou o uso do WebAgent
    @type User Function
    @author Leonardo Bilar
    @since 23/08/2025
    @version 1.0
    /*/
User Function AfterLogin()

    Local aWebAgent := GetWebAgentInfo()
    Local cVersion := '1.0.22'

    If Empty(aWebAgent[1])

        Final('Execute o WebAgent para utilizar o sistema.')

    ElseIf !(aWebAgent[1] == cVersion)

        Final('Utilize a vers�o 1.0.22 do WebAgent.')

    EndIf
    
Return 
