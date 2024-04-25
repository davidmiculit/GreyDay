<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>GreyDay Landing Page</title>
  <?php 
    require "header.php"; 
    require_once "includes/class_autoloader.php";

    // database initialization
    $dbinit = new InitDB();
    $dbinit->initDbExec();
  ?>
</head>
<body>
  <div class="slider" style="width: 100%; margin: auto; height: 100%;">
    <ul class="slides" style="margin-top: 162px;">
      <li>
        <img src="./static/images/carousel_1.jpg"> 
        <div class="caption center-align">
        </div>
      </li>
      <li>
        <img src="./static/images/carousel_2.jpg"> 
        <div class="caption center-align">
        </div>
      </li>
      <li>
        <img src="./static/images/carousel_3.jpg"> 
        <div class="caption center-align">
        </div>
      </li>
    </ul>
  </div>
  
  <div class="container" style="margin-top: 200px">
    <div class="row">
      <div class="row" style="margin-bottom: 10px">
        <h4 class="underline white-text bold center"> </h4>
      </div>
      <div class="row hoverable">
        <div class="col hoverable">
          <a href="product_catalogue.php?category=0" class="hoverable">
            <div class="selectable-card hoverable" style="width: 300px; margin: 50px; border-radius: 0px;">
                <img class="hoverable" src="static/images/category_1.png"/>
              <h5 class="white-text center bold hoverable">CLOTHING</h5>
            </div>
          </a>
        </div>

        <div class="col">
          <a href="product_catalogue.php?category=2">
            <div class="selectable-card" style="width: 300px; margin: 50px;">
                <img src="./static/images/category_2.png"/>
              <h5 class="white-text center bold">SHOES</h5>
            </div>
          </a>
        </div>

        <div class="col">
          <a href="product_catalogue.php?category=1">
            <div class="selectable-card" style="width: 300px; margin: 50px;">
                <img src="./static/images/category_3.png"/>
              <h5 class="white-text center bold">ACCESSORIES</h5>
            </div>
          </a>
        </div>
      </div>
    </div>
  </div>

  <div class="section" style="margin-top: 100px;">
    <div class="wide-container">
      <h3 class="white-text center">CRAFTED BY URBAN AFICIONADOS FOR STYLE SEEKERS</h3>
      <h5 class="white-text center">
        At <b class="light-blue-text">GreyDay</b> we are a collective of city dwellers and trend enthusiasts, driven by a fervor for streetwear and a love for the classics.
      </h5>
    </div>
  </div>

  <div class="grid" style="margin-top: 20px; margin-bottom: 100px">
    <div class="grid">
      <h1 class="count light-blue-text text-darken-4 bold center">12</h1>
      <h5 class="white-text center">Years Of History</h5>
    </div>
    <div class="grid">
      <h1 class="count light-blue-text text-darken-4 bold center">94621</h1>
      <h5 class="white-text center">Clothes Sold</h5>
    </div>
    <div class="grid">
      <h1 class="count light-blue-text text-darken-4 bold center">191</h1>
      <h5 class="white-text center">Countries Covered</h5>
    </div>
    <div class="grid">
      <h1 class="count light-blue-text text-darken-4 bold center">100</h1>
      <h5 class="white-text center">% Satisfaction guaranteed</h5>
    </div>
</div>

<script type="text/javascript">window.$crisp=[];window.CRISP_WEBSITE_ID="d3d920a3-312e-47f2-9482-586dd4e98ee8";(function(){d=document;s=d.createElement("script");
  s.src="https://client.crisp.chat/l.js";s.async=1;d.getElementsByTagName("head")[0].appendChild(s);})();</script>
  <?php require "footer.php"; ?>
</body>

<script>
  $(document).ready(function(){
    // carousel autoswipe
    $('.slider').slider({full_width: true});

    // counter
    $('.count').each(function () 
    {
      $(this).prop('Counter',0).animate({
        Counter: $(this).text()
      }, {
        duration: 4000,
        easing: 'swing',
        step: function (now) { $(this).text(Math.ceil(now)); }
      });
    });
  });
</script>
</html>