<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet" />
<td>${tarefa.id}</td>
<td>${tarefa.descricao}</td>
<td>Finalizado</td>
<td><fmt:formatDate value="${tarefa.dataFinalizacao.time}" 
		pattern="dd/MM/yyyy" /></td>
<td><a href="mostraTarefa?id=${tarefa.id}">Alterar</a></td>
<td><a href="removeTarefa?id=${tarefa.id}">Remover</a></td>
