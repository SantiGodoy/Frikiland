<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand" href="<?php echo base_url() ?>"> <img height="50px" src="<?php echo base_url();?>assets/img/frikiland.png"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation" style="">
        <span class="navbar-toggler-icon"></span>
    </button>
    
    
    <ul class="navbar-nav ml-auto">
            <?php
            echo '<a class="mr-lg-3" href="'. site_url('carrito'). '"> <img width=40px src="http://localhost/frikiland/assets/img/carrito.png"></a>';
                if(isset($_SESSION['isLoggedIn']) and $_SESSION['isLoggedIn'])
                {
                    echo '<a class="btn btn-secondary mr-lg-3 text-white" href="'. site_url('perfil'). '">El perfil de '.$_SESSION['name'].' <i class="fas fa-user"></i></a>';

                    echo '<a class="btn btn-secondary mt-3 mt-lg-0" href="'. site_url('usuarios/logout'). '">Cerrar sesión <i class="fas fa-sign-out-alt"></i></a>';
                }
                else {
                    echo '<a class="btn btn-secondary mr-lg-3 " href="'. site_url('usuarios/registrarse'). '">¡Regístrate!</i></a>';

                    echo '<a class="btn btn-secondary mt-3 mt-lg-0" href="'. site_url('usuarios/login'). '">Iniciar sesión <i class="fas fa-sign-in-alt"></i></a>';

                }
            ?>
    </ul>

    </div>
</nav>
