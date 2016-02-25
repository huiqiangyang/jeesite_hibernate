<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>试卷列表</title>
    <meta name="decorator" content="default"/>
    <%@include file="/WEB-INF/views/include/dialog.jsp" %>
    <style type="text/css">
        .sort {
            color: #0663A2;
            cursor: pointer;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            // 表格排序
            tableSort({callBack: page});
        });

        function page(n, s) {
            $("#pageNo").val(n);
            $("#pageSize").val(s);
            $("#searchForm").attr("action", "${ctx}/exam/paper").submit();
            return false;
        }
    </script>
</head>
<body>

<shiro:hasPermission name="exam:student:view">
    <ul class="nav nav-tabs">
        <li class="active"><a href="${ctx}/exam/paper/stu/list">试卷列表</a></li>
    </ul>
</shiro:hasPermission>

<form:form id="searchForm" modelAttribute="paper" action="${ctx}/exam/paper/stu/list" method="post"
           class="breadcrumb form-search">
    <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
    <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
    <input id="orderBy" name="orderBy" type="hidden" value="${page.orderBy}"/>

    <div style="margin-top:8px;">
        <label>试卷名称：</label>
        <form:input path="name" htmlEscape="false" maxlength="20" cssClass="input-small"/>
        <label>创建开始：</label>
        <input id="createDateStart" name="createDateStart" type="text" readonly="readonly" maxlength="20"
               class="input-small Wdate" value="<fmt:formatDate value="${paper.createDateStart}" pattern="yyyy-MM-dd"/>"
               onclick="WdatePicker({dateFmt:'yyyy-MM-dd'});"/>

        <label>创建结束：</label>
        <input id="createDateEnd" name="createDateEnd" type="text" readonly="readonly" maxlength="20"
               class="input-small Wdate" value="<fmt:formatDate value="${paper.createDateEnd}" pattern="yyyy-MM-dd"/>"
               onclick="WdatePicker({dateFmt:'yyyy-MM-dd'});"/>　　
        &nbsp;<input id="btnSubmit" class="btn btn-primary" type="submit" value="查询" onclick="return page();"/>
    </div>
</form:form>

<tags:message content="${message}"/>
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <tr>
        <th class="sort name">试卷名称</th>
        <th>试卷说明</th>
        <th class="sort createBy">发布者</th>
        <shiro:hasPermission name="exam:student:edit">
            <th>操作</th>
        </shiro:hasPermission>
    </tr>

    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="paper">
        <tr>
            <td><a href="${ctx}/exam/paper/stu/online?id=${paper.id}">${fns:abbr(paper.name, 34)}</a></td>
            <td>${fns:abbr(paper.remarks, 60)}</td>
            <td>${paper.createBy.name}</td>
            <td>
                <shiro:hasPermission name="exam:student:edit">
                    <a href="${ctx}/exam/paper/stu/online?id=${paper.id}">进入考试</a>
                </shiro:hasPermission>
                <shiro:hasPermission name="exam:student:export">
                    <a href="${ctx}/exam/paper/export?id=${paper.id}">导出</a>
                </shiro:hasPermission>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="pagination">${page}</div>
</body>
</html>