<%--
  Created by IntelliJ IDEA.
  User: yvettee
  Date: 2017/10/10
  Time: 22:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>ListTree</title>
    <script src="${pageContext.request.contextPath }/js/xtree.js"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/xtree.css">
</head>
<body>
<script type="text/javascript">
    <c:forEach var="c" items="${list}">
    <c:if test='${c.depth==1 }'>
    var tree = new WebFXTree('${c.name}');
    </c:if>

    <c:if test='${c.depth==2 }'>
    var node${c.depth} = new WebFXTreeItem('${c.name}');   //node2
    tree.add(node${c.depth});
    </c:if>

    <c:if test='${c.depth>2 }'>
    var node${c.depth} = new WebFXTreeItem('${c.name}');  //node3
    node${c.depth-1}.add(node${c.depth});    //
    </c:if>
    </c:forEach>
    document.write(tree);
</script>
</body>
</html>
