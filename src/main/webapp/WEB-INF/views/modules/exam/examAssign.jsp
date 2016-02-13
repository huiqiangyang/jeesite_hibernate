<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>题目分配</title>
    <meta name="decorator" content="default"/>
    <script>
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
        <a href="${ctx}/exam/paper/examAssign?id=${paper.id}"><shiro:hasPermission
                name="exam:teacher:edit">试题分配</shiro:hasPermission>
        </a>
    </li>
</ul>
<div class="container-fluid breadcrumb">
    <div class="row-fluid span12">
        <span class="span2">试卷名称: <b>${paper.name}</b></span>
        <span class="span10">试卷说明: ${fns:abbr(paper.remarks,130)}</span>
    </div>
</div>
<tags:message content="${message}"/>
<div class="breadcrumb">
    <form id="assignExamineForm" action="" method="post" class="hide"></form>
    <a id="assignButton" href="javascript:" class="btn btn-primary">分配试题</a>
    <script type="text/javascript">
        $("#assignButton").click(function () {
            top.$.jBox.open("iframe:${ctx}/exam/paper/examine2Paper?id=${paper.id}", "分配试题", 810, $(top.document).height() - 100, {
                buttons: {"确定分配": "ok", "清除已选": "clear", "关闭": true}, bottomText: "通过选择题目类型，然后为列出分类下所有题目。", submit: function (v, h, f) {
                    var ids = h.find("iframe")[0].contentWindow.ids;
                    //nodes = selectedTree.getSelectedNodes();
                    if (v == "ok") {
                        // 删除''的元素
                        if (ids[0] == '') {
                            ids.shift();
                        }

                        if (ids.length==0) {
                            top.$.jBox.tip("未给试卷【${paper.name}】分配新题目！", 'info');
                            return false;
                        }

                        // 执行保存
                        loading('正在提交，请稍等...');
                        var idsArr = "";
                        for (var i = 0; i < ids.length; i++) {
                            idsArr = (idsArr + ids[i]) + (((i + 1) == ids.length) ? '' : ',');
                        }
                        $('#assignExamineForm').attr('action', '${ctx}/exam/paper/assignExamine?id=${paper.id}&idsArr=' + idsArr).submit();
                        return true;
                    } else if (v == "clear") {
                        h.find("iframe")[0].contentWindow.clearAssign();
                        return false;
                    }
                }, loaded: function (h) {
                    $(".jbox-content", top.document).css("overflow-y", "hidden");
                }
            });
        });
    </script>
</div>
<div class="container-fluid breadcrumb">
    <c:forEach items="${paper.examineList}" var="examine">
        <a href="${ctx}/exam/form?id=${examine.id}" onclick="return viewExamine(this.href)" class="btn">
            <i class="icon-tag"></i>${examine.classifyDictLabel}-${fns:abbr(examine.title,40)}</a>
    </c:forEach>
</div>

</body>
</html>
