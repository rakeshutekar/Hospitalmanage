<!DOCTYPE html>
<html>
<head>
	<title>Cloud Nine Hospital</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat|Oswald" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="hosp2.css">
  <style type="text/css">

    
    h1{
      text-align: center;
      color: forestgreen;
      margin:30px 0 50px;
    }
    .gallery img{
      width: 350px;
      padding: 5px;

    }
    .gallery img:hover{
      transform: scale(1.1);
    }
    .gallery{
      margin-left: 50px;
    }
    .yo{
      width: 1400px;
      background-color: lightgrey;
      height: 40px;
      margin-top: 10px;
      margin-bottom: 10px;
      text-align: center;
      padding: 5px;
      font-weight: bold;
      font-size: 20px;
    }
  </style>
</head>
<body>



<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    <a class="navbar-brand" href="index.php" style="color: blue;"> Cloud Nine Hospital</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
       <li class="active"><a href="index.php">Home</a></li>
         <li><a href="aboutus.php">About US</a></li>
         <li><a href="gallery.php">Gallery</a></li>
          <li><a href="locateus.php">Locate us</a></li>
              <li><a href="contact.php">Contact us</a></li>


        
      </ul>
      
       
      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>



<div class="container">
<div class="gallery">
  <div class="yo">Infrastructure
  </div>
  <a href="img/hospital.jpg" data-lightbox="mygallery" data-title="Reception"><img src="img/hospita_50.jpg"></a>
  <a href="img/recep.jpg" data-lightbox="mygallery" data-title="Reception"><img src="img/recep_50.jpg"></a>
  <a href="img/sit.jpg" data-lightbox="mygallery" data-title="Siting area"><img src="img/sit_50.jpg"></a>
  <a href="img/cafe.jpg" data-lightbox="mygallery" data-title="Cafeteria"><img src="img/cafe_50.jpg"></a>
  <div class="yo">Facilities
  </div>
  <a href="img/fac.jpg" data-lightbox="mygallery" data-title="Facilities"><img src="img/fac_50.jpg"></a>
  <a href="img/fac1.jpg" data-lightbox="mygallery" data-title="Facilities"><img src="img/fac1_50.jpg"></a>
  <a href="img/fac2.jpg" data-lightbox="mygallery" data-title="Facilities"><img src="img/fac2_50.jpg"></a>
  <a href="img/fac3.jpg" data-lightbox="mygallery" data-title="Facilities"><img src="img/fac3_50.jpg"></a>

  


  
</div>
</div>
   
    



<?php include('footer.php');?>


<script src="https://code.jquery.com/jquery-2.1.4.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>