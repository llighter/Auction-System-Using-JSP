<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"
    import = "java.util.*"
    %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="ko">

<jsp:include page="head.jsp"></jsp:include>

<body>
    <div id="wrapper">

        <jsp:include page="navigation.jsp"></jsp:include>
		
		<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Auction List</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
            	<c:forEach var="auction" items="${ list }">
	                <div class="col-lg-4">
	                    <div class="panel panel-green">
	                        <div class="panel-heading">
	                            AUCTION_ITEM-${ auction.auction_id }
	                            ${ auction.item_name }
	                        </div>
	                        <div class="panel-body">
	                            <img width="100%" src="./img/${auction.file_name}">
	                        </div>
	                        <div class="panel-footer">
	                           End date: ${ auction.end_date }<br>
	                           Current Bid : ${ auction.current_bid_amount }
	                        </div>
	                    </div>
	                </div>
                </c:forEach>
            </div>
            <!-- /.row -->
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
    