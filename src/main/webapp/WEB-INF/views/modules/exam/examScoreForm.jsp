<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>${title}</title>
    <meta name="decorator" content="default"/>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#number").focus();

            $("#inputForm").validate({
                submitHandler: function (form) {
                    loading('正在提交，请稍等...');
                    form.submit();
                }
            });
        });

    </script>
</head>
<body>
<ul class="nav nav-tabs">
    <shiro:hasPermission name="exam:teacher:view">
        <li><a href="${ctx}/exam/score/teacher/scores">成绩统计</a></li>
        <li><a href="${ctx}/exam/score/teacher/scoreList">成绩查询</a></li>
    </shiro:hasPermission>
    <shiro:hasAnyPermissions name="exam:teacher:edit">
        <li class="active"><a href="javascript:;void(0)">成绩修改</a></li>
    </shiro:hasAnyPermissions>
</ul>
<br/>

<form:form id="inputForm" modelAttribute="score" action="${ctx}/exam/score/save" method="post" class="form-horizontal">
    <form:hidden path="id"/>
    <tags:message content="${message}"/>

    <div class="control-group">
        <label class="control-label">姓名:</label>

        <div class="controls">
            <form:input path="createBy.name" htmlEscape="false" cssClass="input-medium" required="true"
                        readonly="true"/>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">成绩:</label>

        <div class="controls">
            <form:input path="number" htmlEscape="false" class="input-medium digits" required="true" maxlength="3"/>
            <label class="help-inline">单位：分</label>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">试卷名称:</label>

        <div class="controls">
            <form:input path="paper.name" htmlEscape="false" cssClass="input-medium" required="true" readonly="true"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">考试时间:</label>

        <div class="controls">
            <input id="createDate" type="text" readonly="readonly" maxlength="20"
                   class="input Wdate" value="<fmt:formatDate value="${score.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"/>
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