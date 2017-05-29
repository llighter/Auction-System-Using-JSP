<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"
    import = "java.util.*"
    import = "java.text.*"
    %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	//TODO: minimum date = current date + 1
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
	String today = formatter.format(new java.util.Date());
	System.out.println("[>>>]"+today);
%>
<!DOCTYPE html>
<html lang="ko">

<jsp:include page="head.jsp"></jsp:include>

<body>
	<script>
		function test() {
			alert("[test]"+document.getElementById("end_date").value);
		}
	</script>
    <div id="wrapper">

        <jsp:include page="navigation.jsp"></jsp:include>
		
		<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Register Item</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <form role="form" name="form01" method="POST" action="auctionItemInsert.do" enctype="multipart/form-data">
	            <div class="form-group has-success">
	                <label class="control-label" for="inputSuccess">Item Name</label>
	                <input type="text" class="form-control" name="item_name">
	            </div>
	            <div class="form-group has-success">
	                <label class="control-label" for="current_bid_amount">Start Bid Amount</label>
	                <input type="text" class="form-control" name="current_bid_amount">
	            </div>
				<div class="form-group">
					<label for="end_date">Choose your End date</label><br>
					<input type="date" id="end_date" name="end_date" min="<%=today %>" max="2017-12-31" required>
					<input type="button" id="dateTest" onclick="test()" value="show date">
				</div>
				<div class="form-group">
                    <label>Image Upload</label>
                    <input type="file" name="upload_image" id="upload_image">
                </div>
				<div class="form-group">
					<button type="submit" class="btn btn-success">Insert</button>
				</div>
				
	        </form>
        </div>
        <!-- /#page-wrapper -->
		
    </div>
    	

    <!-- jQuery -->
    <script src="./vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="./vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="./vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="./vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="./vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="./vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="./dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>

</body>

</html>
    