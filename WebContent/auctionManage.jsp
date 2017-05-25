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
                    <h1 class="page-header">Auction Manage</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Auction List
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Check</th>
                                        <th>Auction ID</th>
                                        <th>Auctioneer ID</th>
                                        <th>Item Name</th>
                                        <th>Start Date</th>
                                        <th>End Date</th>
                                        <th>State</th>
                                        <th>Current Bid</th>
                                        <th>ETC</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:forEach var="auction" items="${list}">
                                    	<tr class="odd gradeX">
	                                        <td><input type="checkbox" name="deleteOption" value="${ auction.auction_id }"></td>
	                                        <td>AUCTION_ITEM-${ auction.auction_id }</td>
	                                        <td>${ auction.auctioneer_id }</td>
	                                        <td>${ auction.item_name }</td>
	                                        <td>${ auction.start_date }</td>
	                                        <td>${ auction.end_date }</td>
	                                        <td>${ auction.state }</td>
	                                        <td>${ auction.current_bid_amount }</td>
	                                        <td>
	                                        	<a class="btn btn-danger" href="auctionItemDelete.do?auction_id=${ auction.auction_id }">Delete</a>
	                                        	<a class="btn btn-warning" href="auctionItemRetrive.do?auction_id=${ auction.auction_id }">Edit</a>
	                                        </td>
                                    	</tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
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
    