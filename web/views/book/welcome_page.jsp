<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mithunshawon
  Date: 11/29/14
  Time: 12:36 PM

--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome to Booksale</title>
    <style>
        .owl-carousel-v1 .item img{
            height:270px;
        }
    </style>
</head>
<body>

<!--=== Search Results ===-->
<div class="container content">
<div class="row">
<!-- Begin Sidebar Menu -->
    <!--jsp:include page="begin_sidebar.jsp"/-->
<!-- End Sidebar Menu -->

<!-- Begin Content -->
    <div class="col-md-12">
    <!-- Recent Works -->
    <div class="owl-carousel-v1 owl-work-v1 margin-bottom-40">
        <div class="headline"><h2 class="pull-left">Latest Books</h2>
            <div class="owl-navigation">
                <div class="customNavigation">
                    <a class="owl-btn prev-v2"><i class="fa fa-angle-left"></i></a>
                    <a class="owl-btn next-v2"><i class="fa fa-angle-right"></i></a>
                </div>
            </div><!--/navigation-->
        </div>

        <div class="owl-slider-v2">
            <c:if test="${requestScope.latestBookList != null}">
                <c:forEach var="book" items="${requestScope.latestBookList}" varStatus="item">
                    <div class="item">
                        <div class="thumbnails thumbnail-style thumbnail-kenburn">
                            <div class="thumbnail-img">
                                <div class="overflow-hidden">
                                    <img class="img-responsive" src="uploads/books/<c:out value="${book.photo}"/>" alt="">
                                </div>
                                <a class="btn-more hover-effect" href="singleBook?bookId=${book.bookId}">Details</a>
                            </div>
                            <div class="caption">
                                <p><c:out value="${book.title}"/></p>
                                <p>Price:৳ <span class="label rounded label-u" ><c:out value="${book.price}"/></span></p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:if>
        </div>
    </div>
<!-- End Recent Works -->
        <!-- Begin Content -->
        <div class="owl-carousel-v1 owl-work-v1 margin-bottom-40">
            <div class="headline"><h2 class="pull-left">Rated Users Books</h2>
                <div class="owl-navigation">
                    <div class="customNavigation">
                        <a class="owl-btn prev-v2"><i class="fa fa-angle-left"></i></a>
                        <a class="owl-btn next-v2"><i class="fa fa-angle-right"></i></a>
                    </div>
                </div><!--/navigation-->
            </div>

            <div class="owl-slider-v2">
                <c:if test="${requestScope.ratedBookList != null}">
                    <c:forEach var="ratedBook" items="${requestScope.ratedBookList}" varStatus="item">
                        <div class="item">
                            <div class="thumbnails thumbnail-style thumbnail-kenburn">
                                <div class="thumbnail-img">
                                    <div class="overflow-hidden">
                                        <img class="img-responsive" src="uploads/books/<c:out value="${ratedBook.photo}"/>" alt="">
                                    </div>
                                    <a class="btn-more hover-effect" href="singleBook?bookId=${ratedBook.bookId}">Details</a>
                                </div>
                                <div class="caption">
                                    <p><c:out value="${ratedBook.title}"/></p>
                                    <p>Price:৳ <span class="label rounded label-u" ><c:out value="${ratedBook.price}"/></span></p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </c:if>
            </div>
        </div>
        <!-- End Content -->

</div>
</div>
</div><!--/container-->
<!--=== End Search Results ===-->
</body>
</html>
