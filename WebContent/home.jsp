<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>유럽 여행</title>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<style>
.container { margin:10px}

#mixedSlider {
  position: relative;
}
#mixedSlider .MS-content {
  white-space: nowrap;
  overflow: hidden;
  margin: 0 5%;
}
#mixedSlider .MS-content .item {
  display: inline-block;
  width: 33.3333%;
  position: relative;
  vertical-align: top;
  overflow: hidden;
  height: 100%;
  white-space: normal;
  padding: 0 10px;
}
@media (max-width: 991px) {
  #mixedSlider .MS-content .item {
    width: 50%;
  }
}
@media (max-width: 767px) {
  #mixedSlider .MS-content .item {
    width: 100%;
  }
}
#mixedSlider .MS-content .item .imgTitle {
  position: relative;
}
#mixedSlider .MS-content .item .imgTitle .blogTitle {
  margin: 0;
  text-align: left;
  letter-spacing: 2px;
  color: #252525;
  font-style: italic;
  position: absolute;
  background-color: rgba(255, 255, 255, 0.5);
  width: 100%;
  bottom: 0;
  font-weight: bold;
  padding: 0 0 2px 10px;
}
#mixedSlider .MS-content .item .imgTitle img {
  height: auto;
  width: 100%;
}
#mixedSlider .MS-content .item p {
  font-size: 16px;
  margin: 2px 10px 0px 5px;
  padding: 0px 0px 10px 0px;
  text-indent: 15px;
}
#mixedSlider .MS-content .item a {
  float: right;
  margin: 0 20px 20px 0;
  font-size: 16px;
  font-style: italic;
  color: rgba(173, 0, 0, 0.82);
  font-weight: bold;
  letter-spacing: 1px;
  transition: linear 0.1s;
}
#mixedSlider .MS-content .item a:hover {
  text-shadow: 0 0 1px grey;
}
#mixedSlider .MS-controls button {
  position: absolute;
  border: none;
  background-color: transparent;
  outline: 0;
  font-size: 50px;
  top: 95px;
  color: rgba(0, 0, 0, 0.4);
  transition: 0.15s linear;
}
#mixedSlider .MS-controls button:hover {
  color: rgba(0, 0, 0, 0.8);
}
@media (max-width: 992px) {
  #mixedSlider .MS-controls button {
    font-size: 30px;
  }
}
@media (max-width: 767px) {
  #mixedSlider .MS-controls button {
    font-size: 20px;
  }
}
#mixedSlider .MS-controls .MS-left {
  left: 0px;
}
@media (max-width: 767px) {
  #mixedSlider .MS-controls .MS-left {
    left: -10px;
  }
}
#mixedSlider .MS-controls .MS-right {
  right: 0px;
}
@media (max-width: 767px) {
  #mixedSlider .MS-controls .MS-right {
    right: -10px;
  }
}

</style>
</head>
<body>
<center>
<div style="width:80%; height:600px">
  <img height="600px" class="mySlides" src="images/england_완성본.png" style="width:100%">
  <img height="600px" class="mySlides" src="images/france_완성본.png" style="width:100%">
  <img height="600px" class="mySlides" src="images/germany_완성본.png" style="width:100%">
  <img height="600px" class="mySlides" src="images/italy_완성본.png" style="width:100%">
  <img height="600px" class="mySlides" src="images/swiss_완성본.png" style="width:100%">
</div>
<div class="container">
<div id="mixedSlider">
                    <div class="MS-content">
                        <div class="item">
                            <div class="imgTitle">
                                <h2 class="blogTitle">Animals</h2>
                                <img src="https://placeimg.com/500/300/animals" alt="" />
                            </div>
                            <p>aaa</p>
                        </div>
                        <div class="item">
                            <div class="imgTitle">
                                <h2 class="blogTitle">Arch</h2>
                                <img src="https://placeimg.com/500/300/arch" alt="" />
                            </div>
                           <p>aaa</p>
                       
                        </div>
                        <div class="item">
                            <div class="imgTitle">
                                <h2 class="blogTitle">Nature</h2>
                                <img src="https://placeimg.com/500/300/nature" alt="" />
                            </div>
                           <p>aaa</p>
                            
                        </div>
                        <div class="item">
                            <div class="imgTitle">
                                <h2 class="blogTitle">People</h2>
                                <img src="https://placeimg.com/500/300/people" alt="" />
                            </div>
                            <p>aaa</p>
                           
                        </div>
                        <div class="item">
                            <div class="imgTitle">
                                <h2 class="blogTitle">Tech</h2>
                                <img src="https://placeimg.com/500/300/tech" alt="" />
                            </div>
                           <p>aaa</p>
                        
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