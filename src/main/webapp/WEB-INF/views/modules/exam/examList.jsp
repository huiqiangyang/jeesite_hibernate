<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>试题管理</title>
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
                top.$.jBox.confirm("确认要导出试题吗？", "系统提示", function (v, h, f) {
                            if (v == "ok") {
                                $("#searchForm").attr("action", "${ctx}/exam/export").submit();
                            }
                        },
                        {
                            buttonsFocus: 1
                        });
                top.$('.jbox-body .jbox-icon').css('top', '55px');
            });

            $("#btnImport").click(function () {
                $.jBox($("#importBox").html(), {title: "导入数据", buttons: {"关闭": true},
                    bottomText: "导入文件不能超过5M，仅允许导入“xls”或“xlsx”格式文件！"});
            });
        });

        function page(n, s) {
            $("#pageNo").val(n);
            $("#pageSize").val(s);
            $("#searchForm").attr("action", "${ctx}/exam/").submit();
            return false;
        }
    </script>
</head>
<body>
<div id="importBox" class="hide">
    <form id="importForm" action="${ctx}/exam/import" method="post" enctype="multipart/form-data"
          style="padding-left:20px;text-align:center;" class="form-search" onsubmit="loading('正在导入，请稍等...');"><br/>
        <input id="uploadFile" name="file" type="file" style="width:330px"/><br/><br/>　　
        <input id="btnImportSubmit" class="btn btn-primary" type="submit" value="   导    入   "/>
        <a href="${ctx}/exam/import/template">下载模板</a>
    </form>
</div>

<ul class="nav nav-tabs">
    <li class="active"><a href="${ctx}/exam">试题列表</a></li>
    <shiro:hasPermission name="exam:teacher:edit">
        <li><a href="${ctx}/exam/form">试题添加</a></li>
    </shiro:hasPermission>
</ul>

<form:form id="searchForm" modelAttribute="examine" action="${ctx}/exam/" method="post" class="breadcrumb form-search">
    <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
    <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
    <input id="orderBy" name="orderBy" type="hidden" value="${page.orderBy}"/>

    <div style="margin-top:8px;">
        <label>试题类型：</label>
        <form:select path="classify">
            <form:option value="0" label="全部题型" htmlEscape="false"/>
            <form:options items="${fns:getDictList('exam_type')}" itemLabel="label" itemValue="value"
                          htmlEscape="false"/>
        </form:select>
        <label>创建开始：</label>
        <input id="createDateStart" name="createDateStart" type="text" readonly="readonly" maxlength="20"
               class="input-small Wdate" value="<fmt:formatDate value="${examine.createDateStart}" pattern="yyyy-MM-dd"/>"
               onclick="WdatePicker({dateFmt:'yyyy-MM-dd'});"/>

        <label>创建结束：</label>
        <input id="createDateEnd" name="createDateEnd" type="text" readonly="readonly" maxlength="20"
               class="input-small Wdate" value="<fmt:formatDate value="${examine.createDateEnd}" pattern="yyyy-MM-dd"/>"
               onclick="WdatePicker({dateFmt:'yyyy-MM-dd'});"/>　　
        &nbsp;<input id="btnSubmit" class="btn btn-primary" type="submit" value="查询" onclick="return page();"/>
        &nbsp;<input id="btnExport" class="btn btn-primary" type="button" value="导出"/>
        &nbsp;<input id="btnImport" class="btn btn-primary" type="button" value="导入"/>
    </div>
</form:form>

<tags:message content="${message}"/>
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <tr>
        <th class="sort classify">试题类型</th>
        <th>题目</th>
        <th>答案</th>
        <th>图片</th>
        <th class="sort createBy">发布者</th>
        <th class="sort updateDate">更新时间</th>
        <shiro:hasPermission name="exam:teacher:edit">
            <th>操作</th>
        </shiro:hasPermission></tr>
    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="examine">
        <tr>
            <td>${examine.classifyDictLabel}</td>
            <td><a href="${ctx}/exam/form?id=${examine.id}">${fns:abbr(examine.title, 34)}</a></td>
            <td><abbr title="${examine.answer}" class="initialism">${fns:abbr(examine.answer,30)}</abbr></td>
            <td><a href="${examine.imageSrc}" target="_blank">${fns:abbr(examine.imageSrc,30)}</a></td>
            <td>${examine.createBy.name}</td>
            <td><fmt:formatDate value="${examine.updateDate}" type="both"/></td>
            <shiro:hasPermission name="exam:teacher:edit">
                <td>
                    <a href="${ctx}/exam/form?id=${examine.id}">修改</a>
                    <a href="${ctx}/exam/delete?id=${examine.id}" onclick="return confirmx('确认要删除该题目吗？', this.href)">删除</a>
                </td>
            </shiro:hasPermission>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="pagination">${page}</div>
</body>
</html>