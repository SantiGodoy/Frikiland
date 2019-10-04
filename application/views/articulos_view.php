<div class="container-fluid">
    <div class="jumbotron d-none d-sm-none d-md-block">
        <h1 class="display-3">¡Bienvenidos a Frikiland!</h1>
        <p class="lead">Web dedicada a la venta de merchandising de series, películas, videojuegos... ¡Todo lo que necesitas!</p>
    </div>
</div>
<br>
<div class="container">
    <div class="row">
        <?php
        foreach ($articulos as $articulo)
        {
            echo '<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12">';
            echo '<div class="card border-secondary mb-3">';
            echo sprintf('<div class="card-header"> <a href="'. site_url('articulos/articulo/%s').'"> %s</a> </div>', $articulo['id'], $articulo['nombre'] );
            echo '<img class="img-thumbnail" src="' . site_url(sprintf("uploads/%s", $articulo['imagen'])) . '">';
            echo '<div class="card-header">';
            echo "<h4 class='card-header'>" . $articulo['precio'] . "€ </h4>";
            echo "<p class='card-text  text-truncate'>" . $articulo['descripcion'] . " </p>";
            if($articulo['stock'] == 0)
                echo "<p class='text-danger'>¡Agotado!</p>";
            echo '</div>';
            echo '</div>';
            echo "</div>";
        }
        ?>
    </div>
    <center>
    Puedes subscribirte a nuestro newsletter para recibir novedades y ofertas!
        <p class="lead">
            <a class="btn btn-primary btn-lg" href="newsletter" role="button">¡Quiero subscribirme!</a>
        </p>
    </center>
</div>