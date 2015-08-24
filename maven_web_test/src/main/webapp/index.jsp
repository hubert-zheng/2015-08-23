<%@page import="java.util.ArrayList"%>
<%@page import="com.hand.Bean.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>index</title>
    <link rel="stylesheet" type="text/css" href="CSS/style.css">
    <!--<link rel="stylesheet" href="bootstrap.min.css">-->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
	<div>
<div class="logo">8814郑晓彬
    <div class="userenter">
        <button type="button" class="btn btn-default" aria-label="Left Align">
            <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
        </button>
        User
    </div>
</div>


        <!--导航列表-->
  <!--  <div class="toollist list-group col-md-2">
        <button type="button" class="list-group-item">
            <span class="badge">&gt</span>
            Customor管理</button>
        <button type="button" class="list-group-item">
            <span class="badge">&gt</span>
            Film设置
        </button>
    </div>-->
    <div class="toollist col-md-2">
 <ul class="list-group">
  <li class="list-group-item"><span class="badge">&gt</span><a href="index.jsp">Customor管理</a></li>
  <li class="list-group-item"><span class="badge">&gt</span><a href="filmindex.jsp">Film设置</a></li>

</ul>
    </div>

    <div class="container col-md-10">
        <!-- 主体内容 -->
        <div class="usermanagertitle">
            客户管理
        </div>
        <div class="usermanagermain">

            <p class="text-left">客户列表
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="newbtn"><button class="btn btn-primary ">新建</button></span>
            </p>
        </div>
        
        <!-- 主体内容 -->
                    <div class="usertable col-md-12">
                <table class="table table-bordered col-md-12">
                    <th>操作</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Address</th>
                    <th>Email</th>
                    <th>Customerid</th>
                    <th>lastupdate</th>
                    <%
                    ArrayList<Customer> cuslist =(ArrayList)request.getAttribute("cuslist"); 
                    
                    for(int i = 0 ; i < cuslist.size();i++){
                    
                    %>
                    <tr>
                        <td class="col-md-1"><a>编辑</a>|<a>删除</a></td>
                        <td class="col-md-1"><%=cuslist.get(i).getFirst_Name()%></td>
                        <td class="col-md-1"><%=cuslist.get(i).getLast_Name()%></td>
                        <td class="col-md-3"><%=cuslist.get(i).getAddress() %></td>
                        <td class="col-md-3"><%=cuslist.get(i).getEmail() %></td>
                        <td class="col-md-1"><%=cuslist.get(i).getCustomer_id() %></td>
                        <td class="col-md-1"><%=cuslist.get(i).getLastUpdate() %></td>
                    </tr>
                    <%	
					}
					%>
                </table>
                <!-- 分页 -->
                <div class="fenye">
                    <ul class="pagination">
                    <%
					String paging = (String)request.getAttribute("paging");
                    int countpage = Integer.valueOf(paging)/10;
					%>
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <%for(int i=1;i<countpage;i++){ %>
                        <li><a id="paging<%=i%>" href="#"><%=i%></a></li>
                         <% }%>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                       
                    </ul>
                    
                </div>
            </div>
        
    </div>
</div>
<script src="JS/jquery-2.1.4.min.js"></script>
<script src="JS/bootstrap.min.js"></script>
<script src="JS/jquery-ui.min.js"></script>
<script src="JS/jPaginator-min.js"></script>
<script src="JS/myjs.js"></script>
</body>
</html>