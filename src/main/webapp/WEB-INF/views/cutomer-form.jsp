<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<title>Update or save</title>
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
  <form:form action="saveCustomer" modelAttribute="customer" method="POST">
    <!-- need to associate this data with customer id -->
    <form:hidden path="id"/>
	<div class="container">
	  <div class="row">
	       <div class="col">
	          <div class="form-group">
                <label >First Name</label>
                <form:input path="firstName" type="text" class="form-control"  placeholder="Enter First Name"/>
              </div>
           </div>
	  </div>
	  <div class="row">
	        <div class="col">
	          <div class="form-group">
                <label >Last Name</label>
                <form:input path="lastName" type="text" class="form-control" placeholder="Enter Last Name"/>
              </div>
            </div>
	  </div>
	  <div class="row">
	        <div class="col">
	          <div class="form-group">
                <label >Email</label>
                <form:input path="email" type="email" class="form-control" aria-describedby="emailHelp" placeholder="Enter Email"/>
              </div>
             </div>
	  </div>
	  <div class="row">
           <div class="col-4 col-lg-4  align-self-center">
                <button type="submit" class="btn btn-success">Save</button>
           </div>
	  </div>
	</div>
  </form:form>



	<div class="bg-light text-center">
    <div class="container">
      <div class="row">
        <div class="col">
          <ul class="list-inline ">
            <li class="list-inline-item"><a href="https://github.com/mahalgarcee/crudapplication-springboot-hibernate-bootsrap">Github code</a></li>
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