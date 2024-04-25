<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>GreyDay - Thank you</title>
  <?php include "header.php"; ?>
</head>
<body>
  <div class="container center-align" style="margin-top: 100px;">
    <div class="rounded-card-parent" style="margin-right: 200px; margin-left: 200px;">
      <div class="rounded-card card-content">
        <h4 class="page-title green-text">Am primit comanda, urmează procesarea acesteia.</h4>
        <p>Îți vom trimite un mail cu numărul comenzii și cu AWB-ul pentru urmărirea coletului.</p>
        <div class="card-action" style='margin-top: 50px'>
          <a class="white-text btn" href="index.php">Pagina Principala</a>
          <a style='margin-left: 20px' class="white-text btn" href='cart.php?member_id=<?php echo($memberID); ?>'>Înapoi la coș</a>
        </div>
      </div>
    </div>
  </div>

</body>
<?php include "footer.php"; ?>
</html>