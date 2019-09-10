<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>Motley Event</title>
	<link rel="stylesheet" type="text/css" href="css/fixed.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="bootstrap-4.1.3-dist/css/bootstrap.min.css">
</head>
<body id ="bod" data-spy="scroll" data-target="#navbarResponsive">
<!--- Start home section -->
<div id="home">
	<!-- start navigation--> 
	<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
		<a class="navbar-brand" href="index.html"><img src="css/images/logofinal1.png" height="50px" width="50px"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li " class="nav-item">
					<a class="nav-link" href="#home">Home</a>		
				</li>
				<li class="nav-item">
					<a  class="nav-link" href="#events">Events</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#about">About</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#client">Clients</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#contact">Contact</a>
				</li>
				<li class="nav-item">
				<%try{
				request.getSession();
				Cookie clientCookies[] = request.getCookies(); 
				String User="Login";
				String URL="login.html";
				for( int i = 0; i < clientCookies.length; i++)     
				{ 
					if(clientCookies[i].getName().equals("Log") && clientCookies[i].getValue().length() == 7){
						String Login = (String)session.getAttribute("Login");
						if(Login.equals("True")){
							 User = "Logout"+"	"+"  "+(String)session.getAttribute("name");
							 URL = "LogOut.jsp";
						}
				 		        
				     }    

				}
				
				%>
				    <a class="nav-link" href=<%=URL%>><%=User %></a>
				</li>
			</ul>
		</div>
	</nav>
	<!-- end navigation-->
<%  }
				catch (Exception e){
					request.getSession();
					Cookie clientCookies[] = request.getCookies();
					//Cookie c=new Cookie("Log",""); 
					//c.setMaxAge(0);
					//response.addCookie(c);
					response.sendRedirect("index.jsp");
				}
				%>
	<!-- start landing page-->
	<div class="row dark-main text-center">
	<div class="landing">
		<div class="home-wrap">
			<div class="home-inner">
			</div>
		</div>
	</div>
	
	<div  class="caption text-center">

		<h1 >Welcome to Motley</h1>
		<h3>Because in your dreams, every detail matters.</h3>
		
	</div>
</div>
</div>
	
	<!-- end landing page-->
	
</div>
<!--- end home section -->


<!--- Start events section -->
<div id="events" class="offset">
<!--- Start jumbotron -->
<div class="jumbotron">
<!--- Start narrow -->
<div class="narrow text-center">

<div class="col-12">
	<h3 class="heading">Events</h3>
	<div class="heading-underline"></div>
</div>

<!--- Start row -->
<div class="row text-center">
	<div class="col-md-4">
		<div class="feature">
			<img src="css/images/wedding.jpg">
			<h3>Wedding</h3>
			<p>Excited about your big day? Here we are to make it more special with every idea coming alive.</p>
		</div>
	</div>
	<div class="col-md-4">
		<div class="feature">
			<img src="css/images/corporate.jpg">
			<h3>Corporate meets</h3>
			<p>Don't be worried we will provide Corporate affairs with luxury!</p>
		</div>
	</div>
	<div class="col-md-4">
		<div class="feature">
			<img src="css/images/birthday.jpg">
			<h3>Birthday Parties</h3>
			<p>You’re older today than yesterday but younger than tomorrow. So why not do a bash? Book a Birthday with us.
</p>
		</div>
	</div>		
</div>
<!--- end row -->


<!--- Start row -->
<div class="row text-center">
	<div class="col-md-4">
		<div class="feature">
			<img src="css/images/sporting.jpg">
			<h3>Sporting Events</h3>
			<p>Planning for a sports Event? Don't be worried we are here at your service. A team above all. Above all a team.
</p>
		</div>
	</div>
	<div class="col-md-4">
		<div class="feature">
			<img src="css/images/art.jpg">
			<h3>Art and culture Events</h3>
			<p>No matter if it's your first dance music performance you just stay focussed, rest leave it on us.</p>
		</div>
	</div>
	<div class="col-md-4">
		<div class="feature">
			<img src="css/images/promotional.jpg">
			<h3>Promotional Events</h3>
			<p>Waiting for the right ambience and right venue? No worries just contact us and be stress free.</p>
		</div>
	</div>		
</div>
<!--- end row -->

<!--- Start row -->
<div class="row text-center">
	<div class="col-md-4">
		<div class="feature">
			<img src="css/images/festival.jpg">
			<h3>Festival Celebrations</h3>
			<p>Festivals are meant to be relaxed with your loved ones. With us be a guest in your own party.</p>
		</div>
	</div>
	<div class="col-md-4">
		<div class="feature">
			<img src="css/images/fund.jpg">
			<h3>Fund Raising Events</h3>
			<p>You make a difference, we make it easier! Allow us to be at your service.
</p>
		</div>
	</div>
	<div class="col-md-4">
		<div class="feature">
			<img src="css/images/garden.jpg">
			<h3>Garden Parties</h3>
			<p>Want your gathering calm and quiet! Here we are with the most peaceful set up for all your affairs.</p>
		</div>
	</div>		
</div>
<div class="row text-center">
	<div class="col-md-12">
		<a class="btn btn-outline-light btn-lg" href="enquire.html">Enquire Now</a>
	</div>
</div>
<!--- end row -->


</div>
<!--- end narrow-->

</div>
<!--- end jumbotron -->	

</div>
<!--- end events section -->


<!--- Start about section -->
<div id="about" class="offset">
<!-- Start fixed background-->
<div class="fixed-background">
<div class="row dark text-center">
	<div class="col-12">
		<h3 class="heading">About Us</h3>
		<div class="heading-underline"></div>
	</div>
	<div class="col-md-12">
		<p>  Success depends on the strength of the team.<br/>
   We, with an awesome pool of talent with proven acumen,<br/>
  all the undertaken projects remain assured that they are in<br/> an experienced hand
  and the output says it all!<br/>
We provide an easy enquire service so that<br/> 
you are leftwith no doubts.<br/>
We focus on your requirements and fulfill them accordingly.<br/>
 You decide what event you want we will be devoted to it.<br/>
 We are improving day by day and giving the best<br/> 
 to our customers. You just think, Motley will make it happen.
 <br/>Still have doubts? Just click on the enquire button<br/> 
 and enquire for your event with direct contact to Motley.</p>
	</div>		

</div><!-- end row dark-->
	<div class="fixed-wrap">
		<div class="fixed">
		</div>
	</div>
</div>
<!-- end fixed background-->
	
</div>
<!--- end about section -->


<!--- Start login section -->
<div id="login">
	
</div>
<!--- end login section -->


<!--- Start client section -->
<div id="client" class="offset">

<!--- Start jumbotron -->
<div class="jumbotron">
<div class="col-12 text-center" >
	<h3 class="heading">Clients</h3>
	<div class="heading-underline"></div>
</div>
<!-- start row-->
<div class="row">
		<div class="col-md-6 clients">
			<div class="row">
				<div class="col-md-4">
					<img src="css/images/w2.jpg">
				</div>
				<div class="col-md-8">
					<blockquote>
						<i class="fas fa-quote-left"></i>
						I see Motley as more of a family than just a company. They have great services. The way they deal with the clients, guests is appreciable. The way they interact with us was very pleasant. What else the client wants?
						<hr class="clients-hr">
						<cite>&#8212;Khusboo</cite>
					</blockquote>
				</div>
			</div>
		</div>
		<div class="col-md-6 clients">
			<div class="row">
				<div class="col-md-4">
					<img src="css/images/jasmine.jpg">
				</div>
				<div class="col-md-8">
					<blockquote>
						<i class="fas fa-quote-left"></i>
						 I got to know about motley through my friend. I did the booking online, it was my marriage and I would be honest that it was everything I had imagined for.I just told them my requirments and they were into it with all the energy and efforts. I loved the ambience created by them and services was great.
						<hr class="clients-hr">
						<cite>&#8212;Jasmine</cite>
					</blockquote>
				</div>
			</div>
		</div>
</div>
<!-- end row -->	
<!-- start row-->
<div class="row">
		<div class="col-md-6 clients">
			<div class="row">
				<div class="col-md-4">
					<img src="css/images/emilin.jpg">
				</div>
				<div class="col-md-8">
					<blockquote>
						<i class="fas fa-quote-left"></i>
						 I was the one who was blown off as I was assigned to organize an event in my company. And I just hopped to the web and got to know about Motley. With no doubts I would recommend it further.They were beyond the expectations.
						<hr class="clients-hr">
						<cite>&#8212;Emilin</cite>
					</blockquote>
				</div>
			</div>
		</div>
		<div class="col-md-6 clients">
			<div class="row">
				<div class="col-md-4">
					<img src="css/images/margot.jpg">
				</div>
				<div class="col-md-8">
					<blockquote>
						<i class="fas fa-quote-left"></i>
						It was my daughter's birthday and last year too I opted for Motley. My experience from last 2yrs has been great and fulfilling. They have great hands on organising the events and ofcouse your expectations too!

						<hr class="clients-hr">
						<cite>&#8212;Margot</cite>
					</blockquote>
				</div>
			</div>
		</div>
</div>
<!-- end row -->
</div><!--end jumbotron-->
<div class="col-12 narrow text-center">
	<p class="lead"> Want to share your experience?</p>
	<a class="btn btn-secondary btn-md" href="feedback.html">Feedback</a>
</div>


</div>
<!--- end client section -->

<!--- Start contact section -->
<div id="contact" class="offset">
<footer>
	<div class="row justify-content-center">
		<div class="col-md-5 text-center">
			<img src="css/images/logofinal1.png">
			<p>
				We are enriched with two years of experience.<br/>
				And with our supporting customers we have reached<br/> 
				to this stage that we come under top ten<br/> 
				Event Management Companies in Delhi.<br/> 
				Contact us for your event and be a part of the family.
			</p>
			<strong>Contact Info</strong>
			<p>+9198663146<br>email@motley.com</p>
			<a href="facebook.com" target="_blank"><i class="fab fa-facebook-square"></i></a>
			<a href="youtube.com" target="_blank"><i class="fab fa-youtube-square"></i></a>
			<a href="instagram.com" target="_blank"><i class="fab fa-instagram"></i></a>
		</div>
		<hr class="socket">
		&copy; Motley Event.
	</div>
</footer>	
</div>
<!--- end contact section -->

<!--- Script sourse file -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="bootstrap-4.1.3-dist/js/bootstrap.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.5.0/js/all.js"></script>
<!--- End of source file -->

</body>
</html>