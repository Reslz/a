	<%
	String path = request.getContextPath();
	String basePath =  path+"/";
// 	String basePath ="dev-vcct.cloud.health.ge.com/ewarehousenew/";
	
	//String uploadPath = "uploadFiles/file/";
	String weixinPath = request.getScheme() + "://"
		+ request.getServerName()
		+ path + "/";
	%>
	<base href="<%=basePath%>">
