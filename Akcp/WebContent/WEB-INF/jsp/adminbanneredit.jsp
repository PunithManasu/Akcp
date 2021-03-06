<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Akhanda Karnatak Cinema Parishat</title>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link href="adminimages/log.ico" rel="shortcut icon">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="admincss/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="admincss/style.css" rel='stylesheet' type='text/css' />
<link href="admincss/style-responsive.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="admincss/font.css" type="text/css"/>
<link href="admincss/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="admincss/morris.css" type="text/css"/>
<!-- calendar -->
<link rel="stylesheet" href="admincss/monthly.css">
<!-- //calendar -->
<!-- //font-awesome icons -->
<script src="adminjs/jquery2.0.3.min.js"></script>
<script src="adminjs/raphael-min.js"></script>
<script src="adminjs/morris.js"></script>
</head>
<body>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="dashboard" class="logo">
        <img src="adminimages/logo.png" alt="webchannel" style="width: 69%; margin-top: -8%;">
		
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->

<div class="top-nav clearfix">
    <!--search & user info start-->
     <ul class="nav pull-right top-menu">
       
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src="adminimages/adminimg.jpg">
                <span class="username">${sessionScope.activeuser}</span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                <li><a href="adminprofile"><i class=" fa fa-suitcase"></i>Profile</a></li>
                <li><a href="adminsetting"><i class="fa fa-cog"></i> Settings</a></li>
                <li><a href="adminlogout"><i class="fa fa-key"></i> Log Out</a></li>
            </ul>
        </li>
        <!-- user login dropdown end -->
       
    </ul>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="dashboard">
                        <i class="fa fa-dashboard"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                
                <li class="sub-menu">
                    <a href="adminbanner">
                        <i class="fa fa-book"></i>
                        <span>Banner</span>
                    </a>
                            </li>
                <li>
                    <a href="adminabout">
                       <i class="fa fa-film" aria-hidden="true"></i>
                        <span>About Us</span>
                    </a>
                </li>	
                <li>
                    <a href="adminhomeaboutus">
                       <i class="fa fa-film" aria-hidden="true"></i>
                        <span>Home About Us Image</span>
                    </a>
                </li>	
				 <li>
                    <a href="adminmemberreg.html">
                        <i class="fa fa-adn" aria-hidden="true"></i>
                        <span>Member Registration</span>
                    </a>
                </li>	
				<li>
                    <a href="adminevents.html">
                        <i class="fa fa-television" aria-hidden="true"></i>
                        <span>Events</span>
                    </a>
                </li>
<li>
                    <a href="admingallery.html">
                         <i class="fa fa-arrow-circle-o-up" aria-hidden="true"></i>
                        <span>Gallery</span>
                    </a>
                </li>	
                <li>
                    <a href="adminteammember.html">
                      <i class="fa fa-users" aria-hidden="true"></i>
                        <span>Team Members</span>
                    </a>
                </li>	
					<li>
                    <a href="adminfeedback.html">
                      <i class="fa fa-comment" aria-hidden="true"></i>
                        <span>Feedback</span>
                    </a>
                </li>             
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
</aside>

<!--main content start-->
<section id="main-content">
	<section class="wrapper">
            <div class="row">
            <div class="col-md-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Banner
                        </header>
                        <div class="panel-body">
                            <div >
                                <form:form action="saveeditbanner"  modelAttribute="editbanner" method="post" enctype="multipart/form-data">
                                <form:hidden path="banner_id"/>
                                
                                <div class="col-md-3">
                                   <label>Upload Banner Image</label>
                                    <input type="file" name="banner_file" id="fileUpload" onchange="Upload();" value="" accept=".jpg,.png,jpeg"  placeholder="File input" >
                                </div>
								 <div class="col-md-5"  >
                                   <form:input path="banner_caption"   style="width: 350px;"/>
                                  
                                </div>
                                <input type="hidden" name="delimage" value="${editbanner.banner_image}">
                                <div class="col-md-3">
                                    <input type="submit" class="btn btn-info" value="Change" style="margin-top:-2%" id="sub" />
                                </div>
                                </form:form>
                            </div>
                        </div>
                    </section>
            </div>
</section>
		
<!-- footer -->
		  <div class="footer">
			<div class="wthree-copyright">
			  <p>� 2018 Akhanda Karnatak Cinema Parishath . All rights reserved | Design by <a href="http://appfonehub.com">Appfone Hub Private Limited.</a></p>
			</div>
		  </div>
  <!-- / footer -->
 </section>
 
</section>
<!--main content end-->
</section>
<script src="adminjs/bootstrap.js"></script>
<script src="adminjs/jquery.dcjqaccordion.2.7.js"></script>
<script src="adminjs/scripts.js"></script>
<script src="adminjs/jquery.slimscroll.js"></script>
<script src="adminjs/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="adminjs/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->	

<script type="text/javascript">
function Upload() {
    //Get reference of FileUpload.
    var fileUpload = document.getElementById("fileUpload");
 
    //Check whether the file is valid Image.
    var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+(.jpg|.png|.gif)$");
    if (regex.test(fileUpload.value.toLowerCase())) {
 
        //Check whether HTML5 is supported.
        if (typeof (fileUpload.files) != "undefined") {
            //Initiate the FileReader object.
            var reader = new FileReader();
            //Read the contents of Image File.
            reader.readAsDataURL(fileUpload.files[0]);
            reader.onload = function (e) {
                //Initiate the JavaScript Image object.
                var image = new Image();
 
                //Set the Base64 string return from FileReader as source.
                image.src = e.target.result;
                       
                //Validate the File Height and Width.
                image.onload = function () {
                    var height = this.height;
                    var width = this.width;
                    if (height == 1114 && width == 1906) {
                    	alert("Uploaded image has valid Height and Width.");
                        
                    }
                    else
                    	{
                    	 alert("Height and Width must be 1906px X 1114px.");
                    	document.getElementById('sub').disabled = true;
          
                    	}
                };
 
            }
        } else {
            alert("This browser does not support HTML5.");
            return false;
        }
    } else {
        alert("Please select a valid Image file.");
        return false;
    }
}
	


</script>

</body>
</html>
