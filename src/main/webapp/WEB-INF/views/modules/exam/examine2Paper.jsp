<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>题目分配</title>
    <%@include file="/WEB-INF/views/include/treeview.jsp" %>
    <meta name="decorator" content="default"/>
    <script type="text/javascript">

        var classifyTree;// 题目分类树
        var selectedTree;//zTree已选择对象

        // 初始化
        $(document).ready(function () {
            classifyTree = $.fn.zTree.init($("#classify"), setting, classifyNodes);
            selectedTree = $.fn.zTree.init($("#selectedExamine"), setting, selectedNodes);
        });
        //设置
        var setting = {view: {selectedMulti: false, nameIsHTML: true, showTitle: false},
            data: {simpleData: {enable: true}},
            callback: {onClick: treeOnClick}};

        var classifyNodes = [
            <c:forEach items="${fns:getDictList('exam_type')}" var="classify">
            {id: "${classify.value}",
                pId: "0",
                name: "${classify.label}"},
            </c:forEach>
        ];


        var selectedNodes = [
            <c:forEach items="${paper.examineList}" var="examine">
            {id: "${examine.id}",
                pId: "0",
                name:"<font color='red' style='font-weight:bold;'>${fns:abbr(examine.title,20)}</font>"
            },
            </c:forEach>
        ];

        var ids = "${selectIds}".split(",");

        //点击选择项回调
        function treeOnClick(event, treeId, treeNode, clickFlag) {
            //点击分类，动态产生分类对应的试题
            if ("classify" == treeId) {
                $.get("${ctx}/exam/examineNodes?classify=" + treeNode.id, function (examineNodes) {
                    $.fn.zTree.init($("#examine"), setting, examineNodes);
                });
            }
            if ("examine" == treeId) {

                if ($.inArray(String(treeNode.id), ids) < 0) {
                    selectedTree.addNodes(null, treeNode);
                    ids.push(String(treeNode.id));
                }
            }
            if ("selectedExamine" == treeId) {
                    selectedTree.removeNode(treeNode);
                    ids.splice($.inArray(String(treeNode.id), ids), 1);
            }
        }

        function clearAssign() {
            var submit = function (v, h, f) {
                if (v == 'ok') {
                    var tips = "已选题目清除成功！";
                    selectedTree.destroy();
                    console.info(ids)
                    ids =new Array();;
                    top.$.jBox.tip(tips, 'info');
                } else if (v == 'cancel') {
                    // 取消
                    top.$.jBox.tip("取消清除操作！", 'info');
                }
                return true;
            };
            tips = "确定清空试卷【${paper.name}】的所有题目？";
            top.$.jBox.confirm(tips, "清除确认", submit);
        }
    </script>
</head>
<body>
<div id="assignRole" class="row-fluid span12">
    <div class="span3" style="border-right: 1px solid #A8A8A8;">
        <p>题目类型：</p>

        <div id="classify" class="ztree"></div>
    </div>
    <div class="span4">
        <p>待选题目：</p>

        <div id="examine" class="ztree"></div>
    </div>
    <div class="span5" style="padding-left:16px;border-left: 1px solid #A8A8A8;">
        <p>已选题目：</p>

        <div id="selectedExamine" class="ztree"></div>
    </div>
</div>
</body>
</html>
