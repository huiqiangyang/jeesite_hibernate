<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>试卷编辑</title>
    <meta name="decorator" content="default"/>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#name").focus();
        });

        function viewExamine(href) {
            top.$.jBox.open('iframe:' + href, '查看试题', $(top.document).width() - 350, $(top.document).height() - 100, {
                buttons: {"关闭": true},
                loaded: function (h) {
                    $(".jbox-content", top.document).css("overflow-y", "hidden");
                    $(".nav,.form-actions,[class=btn]", h.find("iframe").contents()).hide();
                    $("body", h.find("iframe").contents()).css("margin", "10px");
                }
            });
            return false;
        }

    </script>
</head>
<body>
<ul class="nav nav-tabs">
    <li><a href="${ctx}/exam/paper/list">试卷列表</a></li>
    <li class="active">
        <a href="${ctx}/exam/paper/form?id=${paper.id}">试卷<shiro:hasPermission
                name="exam:teacher:edit">${not empty paper.id?'修改':'添加'}</shiro:hasPermission>
        </a>
    </li>
</ul>
<br/>

<form:form id="inputForm" modelAttribute="paper" action="${ctx}/exam/paper/save" method="post" class="form-horizontal">
    <form:hidden path="id"/>
    <tags:message content="${message}"/>

    <div class="control-group">
        <label class="control-label">试卷名称:</label>

        <div class="controls">
            <form:input path="name" htmlEscape="false" cssClass="input-medium" id="name"/>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">试卷说明:</label>

        <div class="controls">
            <form:textarea path="remarks" htmlEscape="false" cssClass="input-xxlarge"></form:textarea>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">${not empty paper.examineList?'试卷题目:':''}</label>

        <div class="controls">
            <c:forEach items="${paper.examineList}" var="examine">
                <a href="${ctx}/exam/form?id=${examine.id}" onclick="return viewExamine(this.href)" class="btn">
                    <i class="icon-tag"></i>${examine.classifyDictLabel}-${fns:abbr(examine.title,40)}</a>
            </c:forEach>
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