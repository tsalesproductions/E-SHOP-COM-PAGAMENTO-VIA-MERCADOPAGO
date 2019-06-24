<?php include_once("lib/includes.php"); $website = new website();?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <base href="<?php echo base_href;?>">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">

     <!--JS -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery.maskedinput/1.4.1/jquery.maskedinput.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/97bdcc5c17.js"></script>
    <script src="js/script.js"></script>
    <title><?php echo titulo;?></title>
  </head>
  <body>

    <nav id="nav" class="navbar navbar-expand-lg navbar-light">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="inicio">Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="sobre">Sobre</a>
          </li>
        </ul>
      </div>
      <div class="float-right">
        <?php website::website_navLogin();?>
      </div>
    </nav>

    <div id="content">
      <div class="row">
        <div class="col-sm-3 bg">
        <?php website::website_categorias();?>

          <div class="content-left-menu">
            <div class="title-content-left-menu">Contato</div>
            <div class="content">
              <ul>
                <li class="email"><a href="mailto:<?php echo contato_email;?>"><?php echo contato_email;?></a></li>
                <li class="phone"><a href="#"><?php echo contato_telefone;?></a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-sm-9">
          <?php website::website_paginacao();?>
      </div>
    </div>
    <footer><?php echo titulo;?> <span class="float-right">Criado por Thiago Sales @ Tutoriais e Informática</span></footer>

   
  </body>
</html>