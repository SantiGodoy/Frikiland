<div class="container">
    <?php
    $articulo = $articulos[0]; ?>
    <br>
    <div class="row">
        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
            <?php
            echo '<img class="img-fluid" alt="Responsive image" src="' .site_url(sprintf("uploads/%s", $articulo['imagen'])) . '">';
            ?>
        </div>
        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
            <div class="media">
                <div class="media-body">
                    <h2 class="mt-2"> <?php echo $articulo['nombre']; ?> </h2>
                    <?php echo $articulo['descripcion']; ?>

                    <div class="media mt-3">
                        <a class="pr-3" href="#">
                        </a>
                        <div class="media-body">
                            <h5 class="mt-0"> <strong><?php echo $articulo['precio'] . "€"; ?></strong></h5>
                            <?php
                                if(isset($_SESSION['isLoggedIn']) and $articulo['stock'] != 0)
                                {
                                    $idArticulo = $articulo['id'];
                                    echo ' <a href="'. site_url("carrito/anadirAlCarrito/$idArticulo") .'" ><button type="button" class="btn btn-success">Añadir al carrito</button></a>';
                                }
                                else if($articulo['stock'] == 0)
                                {
                                    echo '<button type="button" class="btn btn-danger disabled">Añadir al carrito</button>';
                                    echo '<p class="text-danger">No quedan existencias</p>';
                                }
                                else
                                {
                                    echo '<button type="button" class="btn btn-danger disabled">Añadir al carrito</button>';
                                    echo '<p class="text-danger">Para añadir al carrito debes estar registrado e iniciar sesión antes.</p>';
                                }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


