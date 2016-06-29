<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista Contatos</title>
</head>
<body>
<c:import url="cabecalho.jsp" />
<!-- cria o DAO -->

<table border="1">
	<thead>
		<tr bgcolor=#DCDCDC>
			<th>Nome</th>
			<th>Email</th>
			<th>Endereco</th>
			<th>Data Nascimento</th>
			<th>Remover</th>
			<th>Alterar</th>
		</tr>
	</thead>
	<!-- Cria o DAO -->
	<c:forEach var="contato" items="${contatos}">
		<tr>
			<tr bgcolor="#${id.count % 2 == 0 ? '#008B8B' : 'ffffff' }">
			<td>${contato.nome}</td>
			<td>
				<c:choose>
					<c:when test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</c:when>
					<c:otherwise>
						E-mail não informado
					</c:otherwise>
				</c:choose>
			</td>
			<td>${contato.endereco}</td>
			<td>
			<fmt:formatDate value="${contato.dataNascimento.time}"
				pattern="dd/MM/yyyy"/>
			</td>
			<td>
				<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>>
			</td>
			<td>
				<a href="mvc?logica=MostraContatoLogic&id=${contato.id}">Alterar</a>>
			</td>
		</tr>
	</c:forEach>
</table>
<c:import url="rodape.jsp" />
</body>
</html>