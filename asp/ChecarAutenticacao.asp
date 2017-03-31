<!--#include file="JSON.asp"-->
<%
      
    usuario = Session("UsuarioAutenticado")
    senha = Session("SenhaDoUsuarioAutenticado")
    

    set dictResposta = server.createObject("scripting.dictionary")
    
    if (IsEmpty(usuario) or IsEmpty(senha)) then
        dictResposta.Add "sucesso", false
    else
        dictResposta.Add "sucesso", true
    end if

    Set j = new JSON
    Response.Write(j.toJSON("resultado", dictResposta, false))
    stop
%>