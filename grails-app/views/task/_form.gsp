<%@ page import="firstgrails.Task" %>



<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="task.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	${taskInstance?.date?.toString()}
</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="task.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${taskInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'bug', 'error')} required">
	<label for="bug">
		<g:message code="task.bug.label" default="Bug" />		
	</label>
	<g:textField name="bug" value="${taskInstance?.bug}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="task.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1500" value="${taskInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'duration', 'error')} required">
	<label for="duration">
		<g:message code="task.duration.label" default="Duration" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="duration" min="0" required="" value="${fieldValue(bean: taskInstance, field: 'duration')}"/>
</div>

