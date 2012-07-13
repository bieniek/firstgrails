
<%@ page import="firstgrails.Task" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-task" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>				
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				
				<!--
				<li>
					<g:javascript library="application" />
					<modalbox:modalIncludes />
					
					<modalbox:createLink controller="task" action="listByDay" title="List" width="500">Task lists</modalbox:createLink>
				</li>
				-->
				<li>
					<g:form name="myForm" url="[action:'listByDay',controller:'task']"> 
						<g:select name="task.id"
							  noSelection= "['': 'Select date...']" 
							  from="${Task.list()}" 	
							  onchange="submit()"
							  optionKey="id"
							  optionValue="date"							 
							  />
					</g:form>
				</li>				
			</ul>
		</div>
		<div id="list-task" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="date" title="${message(code: 'task.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'task.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'task.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="duration" title="${message(code: 'task.duration.label', default: 'Duration')}" />
										
						<g:sortableColumn property="bug" title="${message(code: 'task.bug.label', default: 'Bug')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${taskInstanceList}" status="i" var="taskInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${taskInstance.id}">${fieldValue(bean: taskInstance, field: "date")}</g:link></td>
					
						<td>${fieldValue(bean: taskInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: taskInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: taskInstance, field: "duration")}</td>
						
						<td>
							<a href="${firstgrails.Configuration.get(1)?.bugzillaUrl?.replace('%s', fieldValue(bean: taskInstance, field: "bug"))}" target="_blank">
								BZ#${fieldValue(bean: taskInstance, field: "bug")}
							</a>
						</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${taskInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
