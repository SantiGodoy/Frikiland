<div class="container-fluid">
    <div class="row">
        <div class="col-12 col-lg-2 mt-5">
            <div class="list-group">
                <a href="<?php echo site_url('perfil') ?>" class="list-group-item list-group-item-action">
                    Mi perfil
                </a>
                <a href="<?php echo site_url('perfil/tarjetas') ?>"
                   class="list-group-item list-group-item-action">
                    Tarjetas
                </a>
                <a href="<?php echo site_url('perfil/direcciones') ?>" class="list-group-item list-group-item-action active">
                    Direcciones
                </a>
                <?php
                if(isset($_SESSION['esAdministrador']))
                {?>
                    <a href="<?php echo site_url('perfil/pedidosUsuario/' . $_SESSION['id']) ?>" class="list-group-item list-group-item-action">
                        Pedidos
                    </a>
                <?php }
                ?>
                <?php
                if (isset($_SESSION['esAdministrador']) and $_SESSION['esAdministrador']) {
                    echo sprintf('<a href="%s" class="list-group-item list-group-item-action">', site_url('perfil/articulos'));
                    echo 'Articulos';
                    echo '</a>';

                    echo sprintf('<a href="%s" class="list-group-item list-group-item-action">', site_url('perfil/usuarios'));
                    echo 'Usuarios';
                    echo '</a>';

                    echo sprintf('<a href="%s" class="list-group-item list-group-item-action">', site_url('perfil/pedidos'));
                    echo 'Pedidos pendientes';
                    echo '</a>';
                }
                ?>
            </div>
        </div>
        <div class="col-12 col-lg-10 mt-5">
            <h1>Añadir direccion.</h1>
            <?php

            if (isset($_SESSION['error']))
                echo '<span class="badge badge-danger">Error</span>';
            if (isset($_SESSION['success']))
                echo '<span class="badge badge-success">Cambios realizados correctamente.</span>';


            echo form_open(site_url('perfil/anadirDireccion/'));

            echo '<fieldset>';
            echo '<div class="form-group row">';
            echo '<label for="staticPais" class="col-12 col-form-label">País</label>';
            echo '<div class="col-12">';
                echo '<input type="text"  name="pais" class="form-control" id="staticPais" >';
            echo '</div>';
            echo '</div>';

            echo '<div class="form-group row">';
            echo '<label for="staticProvincia" class="col-12 col-form-label">Provincia</label>';
            echo '<div class="col-12">';
                echo '<input type="text"  name="provincia" class="form-control" id="staticProvincia" >';
            echo '</div>';
            echo '</div>';

            echo '<div class="form-group row">';
            echo '<label for="staticCiudad" class="col-12 col-form-label">Ciudad:</label>';
            echo '<div class="col-12">';
                echo '<input type="text" name="ciudad" class="form-control" id="staticCiudad" >';
            echo '</div>';
            echo '</div>';

            echo '<div class="form-group row">';
            echo '<label for="staticCodigoPostal" class="col-12 col-form-label">Codigo Postal</label>';
            echo '<div class="col-12">';
                echo '<input type="text" name="codigoPostal" class="form-control" id="staticCodigoPostal" >';
            echo '</div>';
            echo '</div>';

            echo '<div class="form-group row">';
            echo '<label for="staticNumero" class="col-12 col-form-label">Número</label>';
            echo '<div class="col-12">';
                echo '<input type="text" name="numero" class="form-control" id="staticNumero" >';
            echo '</div>';
            echo '</div>';

            echo '<div class="form-group row">';
            echo '<label for="staticEscalera" class="col-12 col-form-label">Escalera</label>';
            echo '<div class="col-12">';
                echo '<input type="text" name="escalera" class="form-control" id="staticEscalera" >';
            echo '</div>';
            echo '</div>';

            echo '<div class="form-group row">';
            echo '<label for="staticPiso" class="col-12 col-form-label">Piso</label>';
            echo '<div class="col-12">';
                echo '<input type="text" name="piso" class="form-control" id="staticPiso" >';
            echo '</div>';
            echo '</div>';

            echo '<div class="form-group row">';
            echo '<label for="staticCalle" class="col-12 col-form-label">Calle</label>';
            echo '<div class="col-12">';
                echo '<input type="text" name="calle" class="form-control" id="staticCalle" >';
            echo '</div>';
            echo '</div>';

            echo '<button class="btn float-right btn-primary col-12" type="submit">AÑADIR</button>';
            echo '<a class="btn float-right btn-secondary col-12 mt-3" href="' . site_url('perfil/direcciones') . '">VOLVER ATRÁS</a>';

            echo '</fieldset>';
            echo form_close();
            ?>
        </div>
    </div>
