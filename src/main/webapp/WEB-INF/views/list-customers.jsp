<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<link
  rel="stylesheet"
  href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
  integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
  crossorigin="anonymous"
>

<link type="text/css"
	  rel="stylesheet"
	  href="/resources/css/style.css"
/>
<title>List Customers</title>
</head>
<body>
    <div class="container">
      <div class="row">
        <div class="col">	
        	<div class="jumbotron ">
		          <h1 class="text-center">Welcome to my web customer tracker application!</h1>
		          <p class="text-center font-italic">
		            By: EL GARCE MAHA
		          </p>
        	</div>
        </nav>
      </div>
    </div>
  </div>
	<div class="container">
	  <div class="row">
	    <div class="col">
	        <button type="button" class="btn btn-outline-info"
	           onclick="window.location.href='showFormForAdd';return false;">Add Customer</button>
	    </div>
	  </div>
      <div class="row">
        <div class="col">
				<table class="table table-striped">
				<tr>
					<th scope="col"> First Name </th>
					<th scope="col"> Last Name </th>
					<th scope="col"> Email </th>
					<th scope="col"> Action </th>
				
				</tr>
				
				<!--  loop over and print the customers -->
				<c:forEach var="e" items="${customers}">
				<c:url var="updateLink" value="/customer/showFormForUpdate">
				    <c:param name="customerId" value="${e.id}" />
				</c:url>
<               c:url var="deleteLink" value="/customer/delete">
				    <c:param name="customerId" value="${e.id}" />
				</c:url>
					<tr>
						<td>${e.firstName}</td>
						<td>${e.lastName}</td>
						<td>${e.email}</td>
						<td><button type="button" class="btn btn-outline-info"
                           onclick="window.location.href='${updateLink}';return false;">Update | </button>
                           <button type="button" class="btn btn-outline-info"
                           onclick="RemoveCustomer()">Delete </button>
                           </td>
                           <script>
                                function RemoveCustomer(){
                                  if (confirm("Are you sure you wante to delete this customer?")) {
                                    window.location.href='${deleteLink}';
                                    return true;
                                  } else {
                                    return false;
                                  }
                                }
                           </script>
					</tr>
				</c:forEach>
			
			
				</table>
			</div>
		</div>
	</div>



	<div class="bg-light text-center">
    <div class="container">
      <div class="row">
        <div class="col">
          <ul class="list-inline ">
            <li class="list-inline-item"><a href="#">Github code</a></li>
            <li class="list-inline-item">&middot;</li>
            <li class="list-inline-item"><a href="/customer/list">Back to list</a></li>
          </ul>
        </div>
      </div>
    </div>
	</div>


	  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>