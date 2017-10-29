<%
	
		Dim oSOAP
	Set oSOAP = Server.CreateObject("MSSOAP.SOAPClient30")

	usuario = Request.Form("Usuario")
	senha = Request.Form("Senha")


	stop
%>