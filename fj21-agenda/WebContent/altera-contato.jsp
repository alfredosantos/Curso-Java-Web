<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<!DOCTYPE html>
<html>
<head>
	<link href="css/jquery.css" rel="stylesheet">
	<script src="js/jquery.js"> </script>
	<script src="js/jquery-ui.js"> </script>	
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:import url="cabecalho.jsp" />
	<h1>Altera Contatos</h1>
	<hr/>
	<form action="mvc" method="POST">
		<input type="hidden" name="logica" value="AlteraContatoLogic"/>
		<input type="hidden" name="id" value="${contato.id}"/><br>
		<input type="text" name="nome" value="${contato.nome}"/><br>
		<input type="text" name="email" value="${contato.email}"/><br>
		<input type="text" name="endereco" value="${contato.endereco}"/><br>
		<fmt:formatDate value="${contato.dataNascimento.time}" 
			pattern="dd/MM/yyyy" var="data"/>
		<input type="text" name="dataNascimento" value="${data}"/><br>
		<input type="submit" value="Gravar"/>
	</form>
<c:import url="rodape.jsp" />
</body>
</html>