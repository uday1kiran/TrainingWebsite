<%
//String website_title = "Simplex Learning";
String uri = request.getRequestURI();
String page_name = uri.substring(uri.lastIndexOf("/")+1);
System.out.println("Page Name: "+page_name);
%>

<%@ include file="pageContext_vars.jsp" %>

<header id="header" class="fixed-top">
  <div class="container d-flex align-items-center">
    <h1 class="logo mr-auto"><a href="index.jsp"><%=pageContext.getAttribute("website_title")%></a></h1>
    <!-- Uncomment below if you prefer to use an image logo -->
    <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
    <nav class="nav-menu d-none d-lg-block">
      <ul>
        <li <% if("index.jsp".equals(page_name) || page_name.length()==0) out.print("class=\"active\""); %>><a href="index.jsp">Home</a></li>
        <li <% if("about.jsp".equals(page_name)) out.print("class=\"active\""); %>><a href="about.jsp">About</a></li>
        <li <% if("courses.jsp".equals(page_name)) out.print("class=\"active\""); %>><a href="courses.jsp">Courses</a></li>
        <li <% if("trainers.jsp".equals(page_name)) out.print("class=\"active\""); %>><a href="trainers.jsp">Trainers</a></li>
        <li <% if("events.jsp".equals(page_name)) out.print("class=\"active\""); %>><a href="events.jsp">Events</a></li>
        <li <% if("pricing.jsp".equals(page_name)) out.print("class=\"active\""); %>><a href="pricing.jsp">Pricing</a></li>
        <li class="drop-down"><a href="">Drop Down</a>
          <ul>
            <li><a href="#">Drop Down 1</a></li>
            <li class="drop-down"><a href="#">Deep Drop Down</a>
              <ul>
                <li><a href="#">Deep Drop Down 1</a></li>
                <li><a href="#">Deep Drop Down 2</a></li>
                <li><a href="#">Deep Drop Down 3</a></li>
                <li><a href="#">Deep Drop Down 4</a></li>
                <li><a href="#">Deep Drop Down 5</a></li>
              </ul>
            </li>
            <li><a href="#">Drop Down 2</a></li>
            <li><a href="#">Drop Down 3</a></li>
            <li><a href="#">Drop Down 4</a></li>
          </ul>
        </li>
        <li <% if("contact.jsp".equals(page_name)) out.print("class=\"active\""); %>><a href="contact.jsp">Contact</a></li>
      </ul>
    </nav>
    <!-- .nav-menu -->
    <a href="courses.jsp" class="get-started-btn">Get Started</a> </div>

</header>
