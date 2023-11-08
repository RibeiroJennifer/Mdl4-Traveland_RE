<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Traveland</title>
  <link rel="shortcut icon" href="assets/img/Favicon.ico" type="image/x-icon">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
    integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="assets/css/index.css">
  <script src="https://kit.fontawesome.com/daaea144c6.js" crossorigin="anonymous"></script>
</head>
<body>
  <header>
    <!-- Barra de navega��o -->
    <nav class="navbar navbar-dark navbar-expand-lg fixed-top shadow-sm navbar-light">
      <a class="navbar-brand" href="#">
        <img id="logo" src="assets/img/logo1.png" alt="logo" href="index.jsp">
      </a>
      <button id="btn-menu" class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Alterna navega��o">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="index.jsp" id="home-menu">In�cio <span class="sr-only">(P�gina atual)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="destinos.jsp" id="destinations-menu">Destinos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="promocoes.jsp" id="promotions-menu">Promo��es</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contato.jsp" id="contact-menu">Contato</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="modal" data-target="#loginModal" style="cursor: pointer">Login/Cadastro</a>
          </li>
        </ul>
      </div>
    </nav>
  </header>

  <main>
    <!-- Carrossel -->
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="d-block w-100" src="assets/img/CasteloTokyo.jpg" alt="Primeiro Slide">
          <div class="carousel-caption d-md-block">
            <h2>Disney T�quio, Jap�o</h2>
            <p>Venha sonhar e explorar o castelo m�gico da Cinderela, localizado na capital do Jap�o, T�quio.</p>
            <button type="button" class="btn btn-primary">Visitar</button>
          </div>
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="assets/img/DisneyParis.jpg" alt="Segundo Slide">
          <div class="carousel-caption d-md-block">
            <h2>Disney Paris, Fran�a </h2>
            <p>Venha sonhar e explorar o castelo m�gico da Bela Adormecida, localizado na capital da Fran�a, Paris.</p>
            <button type="button" class="btn btn-primary">Visitar</button>
          </div>
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="assets/img/OrlandoDisney.jpg" alt="Terceiro Slide">
          <div class="carousel-caption d-md-block">
            <h2>Disney Orlando, EUA</h2>
            <p>Venha sonhar e explorar o castelo m�gico da Cinderela, localizado na cidade da Fl�rida|EUA, Orlando.</p>
            <button type="button" class="btn btn-primary">Visitar</button>
          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Anterior</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Pr�ximo</span>
      </a>
    </div>
    <!-- Destinos mais procurados/Destinos Inicio -->
    <div id="destinations-area">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h3 class="main-title" style="margin-top: 20px; margin-bottom: -10px;">Os destinos mais procurados</h3>
            <hr>
          </div>
          <div class="row">
            <div class="card-deck">
              <div class="card">
                <img class="card-img-top" src="assets/img/DisneyParis.jpg" alt="Imagem de capa do card">
                <div class="card-body text-center">
                  <h5 class="card-title">Disney Paris, Fran�a <br>R$500,00 <br></h5>
                  <p class="card-text">Venha sonhar e explorar o castelo m�gico da Bela Adormecida, localizado na
                    capital da Fran�a, Paris.</p>
                  <button type="button" class="btn btn-secondary">Viajar</button>
                </div>
              </div>
              <div class="card">
                <img class="card-img-top" src="assets/img/OrlandoDisney.jpg" alt="Imagem de capa do card">
                <div class="card-body text-center">
                  <h5 class="card-title">Disney Orlando, EUA <br>R$500,00 <br></h5>
                  <p class="card-text">Venha sonhar e explorar o castelo m�gico da Cinderela, localizado na cidade da
                    Fl�rida|EUA, Orlando.</p>
                  <button type="button" class="btn btn-secondary">Viajar</button>
                </div>
              </div>
              <div class="card">
                <img class="card-img-top" src="assets/img/CasteloHongKongBelaAdormecida.jpg" alt="Imagem de capa do card">
                <div class="card-body text-center">
                  <h5 class="card-title">Disney Hong Kong, China <br>R$500,00 <br></h5>
                  <p class="card-text">Venha sonhar e explorar o castelo m�gico da Bela Adormecida, localizado na cidade
                    da China, Hong Kong.</p>
                  <button type="button" class="btn btn-secondary">Viajar</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Promo��es Inicio -->
    <div id="promotions-area">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h3 class="main-title" style="margin-top: 20px; margin-bottom: -10px;">Promo��es</h3>
            <hr>
          </div>
          <div class="row">
            <div class="card-deck">
              <div class="card">
                <img class="card-img-top" src="assets/img/DisneyParis.jpg" alt="Imagem de capa do card">
                <div class="card-body text-center">
                  <h5 class="card-title">Disney Paris, Fran�a<br>R$500,00 <br>
                    <span class="badge badge-warning">25% OFF</span>
                  </h5>
                  <p class="card-text">Venha sonhar e explorar o castelo m�gico da Bela Adormecida, localizado na
                    capital da Fran�a, Paris.</p>
                  <button type="button" class="btn btn-secondary">Comprar</button>
                </div>
              </div>
              <div class="card">
                <img class="card-img-top" src="assets/img/OrlandoDisney.jpg" alt="Imagem de capa do card">
                <div class="card-body text-center">
                  <h5 class="card-title">Disney Orlando, EUA <br>R$500,00 <br>
                    <span class="badge badge-warning">20% OFF</span>
                  </h5>
                  <p class="card-text">Venha sonhar e explorar o castelo m�gico da Cinderela, localizado na cidade da
                    Fl�rida|EUA, Orlando.</p>
                  <button type="button" class="btn btn-secondary">Comprar</button>
                </div>
              </div>
              <div class="card">
                <img class="card-img-top" src="assets/img/CasteloHongKongBelaAdormecida.jpg" alt="Imagem de capa do card">
                <div class="card-body text-center">
                  <h5 class="card-title">Disney Hong Kong, China <br>R$500,00 <br>
                    <span class="badge badge-warning">50% OFF</span>
                  </h5>
                  <p class="card-text">Venha sonhar e explorar o castelo m�gico da Bela Adormecida, localizado na cidade
                    da China, Hong Kong.</p>
                  <button type="button" class="btn btn-secondary">Comprar</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>

  <!-- Rodap� -->
  <footer>
    <div id="contact-area">
      <div class="container" id="contact-all">
        <div class="row">
          <div class="col-md-12"></div>
          <div class="col-md-4 contact-box">
            <i id="icons" class="fa-solid fa-phone"></i>
            <p id="contactfont"><span class="contact-title" id="contactfont">Ligue para:
              </span> (21)99999-9999</p>
          </div>
          <div class="col-md-4 contact-box">
            <i id="icons" class="fa-solid fa-envelope"></i>
            <p id="contactfont"><span class="contact-title" id="contactfont">Envie um e-mail:
              </span>contato@traveland.com.br</p>
          </div>
          <div class="col-md-4 contact-box">
            <i id="icons" class="fa-solid fa-city"></i>
            <p id="contactfont"><span class="contact-title" id="contactfont">Venha nos conhecer:
              </span>Rua Madrigal, 857 - Madrigal</p>
          </div>
          <div id="copy-area">
            <div class="container">
              <div class="row">
                <div class="col-md-12" id="contactfont">
                  <p id="contactfont">Desenvolvido por Jennifer Ribeiro &copy; 2023</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>


  <!-- Modal de Login -->
  <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="loginModalLabel">Login</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <!-- Formul�rio de login -->
          <form>
            <div class="form-group">
              <label for="email">Email</label>
              <input type="email" class="form-control" id="email" placeholder="Seu email">
            </div>
            <div class="form-group">
              <label for="senha">Senha</label>
              <input type="password" class="form-control" id="senha" placeholder="Sua senha">
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">Login</button>
          <button id="botao-cadastro" type="button" class="btn btn-secondary" data-dismiss="modal" data-toggle="modal"
            data-target="#cadastroModal">
            Cadastro
          </button>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal de Cadastro -->
  <div class="modal fade" id="cadastroModal" tabindex="-1" role="dialog" aria-labelledby="cadastroModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="cadastroModalLabel">Cadastro</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <!-- Formul�rio de cadastro -->
          <form>
            <div class="form-group">
              <label for="Nome">Nome Completo</label>
              <input type="name" class="form-control" id="Nome" placeholder="Nome">
            </div>
            <div class="form-group">
              <label for="cpf">CPF</label>
              <input type="number" class="form-control" id="CPF" placeholder="CPF">
            </div>
            <div class="form-group">
              <label for="email">Email</label>
              <input type="email" class="form-control" id="email" placeholder="Email">
            </div>
            <div class="form-group">
              <label for="password">Senha</label>
              <input type="password" class="form-control" id="senha" placeholder="Senha">
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">Cadastrar</button>
        </div>
      </div>
    </div>
  </div>


</body>

</html>




<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
  integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
  integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
  integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>

</html>