<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>产品管理</title>
    <meta name="decorator" content="default"/>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#name").focus();
            $("#inputForm").validate();
        });
    </script>
</head>
<body>
<ul class="nav nav-tabs">
    <li><a href="${ctx}/factory/product/">产品列表</a></li>
    <li class="active"><a href="${ctx}/factory/product/form?id=${product.id}">产品<shiro:hasPermission
            name="factory:product:edit">${not empty product.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission
            name="factory:product:edit">查看</shiro:lacksPermission></a></li>
</ul>
<br/>

<form:form id="inputForm" modelAttribute="product" action="${ctx}/factory/product/save" method="post"
           class="form-horizontal">
    <form:hidden path="id"/>
    <tags:message content="${message}"/>
    <div class="control-group">
        <label class="control-label" for="name">名称:</label>

        <div class="controls">
            <form:input path="name" htmlEscape="false" maxlength="200" class="required"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="remarks">备注:</label>

        <div class="controls">
            <form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="200" class="input-xxlarge"/>
        </div>
    </div>
    <div class="form-actions">
        <shiro:hasPermission name="factory:product:edit">
            <input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;
        </shiro:hasPermission>
        <input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
    </div>
</form:form>
</body>
</html>
