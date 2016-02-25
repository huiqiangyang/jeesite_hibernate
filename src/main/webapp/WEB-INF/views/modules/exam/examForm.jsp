<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>试题管理</title>
    <meta name="decorator" content="default"/>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#classify").focus();
        });

    </script>
</head>
<body>
<ul class="nav nav-tabs">
    <li><a href="${ctx}/exam/list">试题列表</a></li>
    <li class="active">
        <a href="${ctx}/exam/form?id=${examine.id}">试题<shiro:hasPermission
                name="exam:teacher:edit">${not empty examine.id?'修改':'添加'}</shiro:hasPermission>
        </a>
    </li>
</ul>
<br/>

<form:form id="inputForm" modelAttribute="examine" action="${ctx}/exam/save" method="post" class="form-horizontal">
    <form:hidden path="id"/>
    <tags:message content="${message}"/>

    <div class="control-group">
        <label class="control-label">试题类型:</label>

        <div class="controls">
            <form:select path="classify">
                <form:options items="${fns:getDictList('exam_type')}" itemLabel="label" itemValue="value"
                              htmlEscape="false"/>
            </form:select>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">题目:</label>

        <div class="controls">
            <form:textarea path="title" htmlEscape="false" cssClass="input-xxlarge" rows="4"
                           required="true"></form:textarea>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">图片:</label>
        <div class="controls">
            <input type="hidden" id="image" name="image" value="${examine.imageSrc}"/>
            <tags:ckfinder input="image" type="thumb" uploadPath="/exam" selectMultiple="false"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">答案:</label>

        <div class="controls">
            <form:textarea path="answer" htmlEscape="false" cssClass="input-xxlarge" required="true"></form:textarea>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">试题说明:</label>

        <div class="controls">
            <form:textarea path="description" htmlEscape="false" cssClass="input-xxlarge"></form:textarea>
        </div>
    </div>
    <div class="form-actions">
        <shiro:hasPermission name="exam:teacher:edit">
            <input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;
        </shiro:hasPermission>
        <input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
    </div>
</form:form>
</body>
</html>