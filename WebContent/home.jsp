<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>유럽 여행</title>
</head>
<body>
<center>
<div style="width:80%; height:400px">
  <img height="600px" class="mySlides" src="images/england.jpg" style="width:100%">
  <img height="600px" class="mySlides" src="images/france.jpg" style="width:100%">
  <img height="600px" class="mySlides" src="images/germany.jpg" style="width:100%">
  <img height="600px" class="mySlides" src="images/italy.jpg" style="width:100%">
  <img height="600px" class="mySlides" src="images/swiss.jpg" style="width:100%">
</div>
<div id="mixedSlider">
                    <div class="MS-content">
                    	<div class="item">
                            <div class="imgTitle">
                                <img src="https://placeimg.com/500/300/animals" alt="" />
                            </div>
                            <div class="imgTitle">
                                <img src="https://placeimg.com/500/300/arch" alt="" />
                            </div>
                        </div>
                        <div class="item">
                            <div class="imgTitle">
                                <img src="https://placeimg.com/500/300/nature" alt="" />
                            </div>
                        </div>
                        <div class="item">
                            <div class="imgTitle">
                                <img src="https://placeimg.com/500/300/people" alt="" />
                            </div>
                        </div>
                        <div class="item">
                            <div class="imgTitle">
                                <img src="https://placeimg.com/500/300/tech" alt="" />
                            </div>
                    </div>
                    <div class="MS-controls">
                        <button class="MS-left"><i class="fa fa-angle-left" aria-hidden="true"></i></button>
                        <button class="MS-right"><i class="fa fa-angle-right" aria-hidden="true"></i></button>
                    </div>
                </div>
</div>

</center>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script> 
<script src="js/multislider.js"></script> 
<script>
$('#mixedSlider').multislider({
	duration: 750,
	interval: 3000
});
</script>
<script src="main.js"></script>
</body>
</html>