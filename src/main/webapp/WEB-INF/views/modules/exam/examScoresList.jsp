<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>${title}</title>
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

            $("#btnExport").click(function () {
                top.$.jBox.confirm("确认要导出成绩吗？", "系统提示", function (v, h, f) {
                            if (v == "ok") {
                                $("#searchForm").attr("action", "${ctx}/exam/score/export").submit();
                            }
                        },
                        {
                            buttonsFocus: 1
                        });
                top.$('.jbox-body .jbox-icon').css('top', '55px');
            });
        });

        function page(n, s) {
            $("#pageNo").val(n);
            $("#pageSize").val(s);
            $("#searchForm").attr("action", "${ctx}/exam/score").submit();
            return false;
        }
    </script>
</head>
<body>


<shiro:hasPermission name="exam:teacher:view">
<ul class="nav nav-tabs">
    <li><a href="${ctx}/exam/score/teacher/scores">成绩统计</a></li>
    <li class="active"><a href="${ctx}/exam/score/teacher/scoreList">成绩查询</a></li>
</ul>
</shiro:hasPermission>

<form:form id="searchForm" modelAttribute="score" action="${ctx}/exam/score" method="post" class="breadcrumb form-search">
    <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
    <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
    <input id="orderBy" name="orderBy" type="hidden" value="${page.orderBy}"/>

    <div style="margin-top:8px;">
        <label>姓名：</label>
        <form:input path="createBy.name" class="input-small"  maxlength="20"/>
        <label>试卷：</label>
        &nbsp;<input id="btnSubmit" class="btn btn-primary" type="submit" value="查询" onclick="return page();"/>
        &nbsp;<input id="btnExport" class="btn btn-primary" type="button" value="导出"/>
    </div>
</form:form>

<tags:message content="${message}"/>

<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <tr>
        <th class="sort createBy">学生姓名</th>
        <th class="sort number">成绩</th>
        <th class="sort paper">试卷名称</th>
        <th class="sort createDate">考试时间</th>
        <shiro:hasPermission name="exam:teacher:edit">
            <th>操作</th>
        </shiro:hasPermission></tr>
    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="score">
        <tr>
            <td>${score.createBy.name}</td>
            <td>${score.number}</td>
            <td>${score.paper.name}</td>
            <td><fmt:formatDate value="${score.createDate}" type="both"/></td>
            <shiro:hasPermission name="exam:teacher:edit">
                <td>
                    <a href="${ctx}/exam/score/teacher/form?id=${score.id}">修改</a>
                    <a href="${ctx}/exam/score/delete?id=${score.id}" onclick="return confirmx('确认要删除该成绩吗？', this.href)">删除</a>
                </td>
            </shiro:hasPermission>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="pagination">${page}</div>
</body>
</html>