<div class="container-fluid mt-3">
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
                <a href="<?php echo site_url('perfil/direcciones') ?>" class="list-group-item list-group-item-action">
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
                    echo sprintf('<a href="%s" class="list-group-item list-group-item-action active">', site_url('perfil/articulos'));
                    echo 'Articulos';
                    echo '</a>';

                    echo sprintf('<a href="%s" class="list-group-item list-group-item-action ">', site_url('perfil/usuarios'));
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
            <h1>Añadir artículo.</h1>
            <?php
            echo form_open_multipart('articulos/nuevoArticulo');
            echo '<fieldset>';
            echo '<div class="form-group row">';
            echo '<label for="staticNombre" class="col-12 col-form-label">Nombre</label>';
            echo '<div class="col-12">';
            echo '<input type="text"  name="nombre" class="form-control" id="staticNombre">';
            echo '</div>';
            echo '</div>';

            echo form_textarea(array('type' => 'text',
                'class' => 'form-control col-12',
                'name' => 'descripcion',
                'aria-describedby'=> "fileHelp"));

            echo '<div class="form-group row">';
            echo '<label for="precio" class="col-12 col-form-label">Precio</label>';
            echo '<div class="col-12">';
            echo '<input type="precio" name="precio" class="form-control" id="precio">';
            echo '</div>';
            echo '</div>';

            echo '<div class="form-group row">';
            echo '<label for="stock" class="col-12 col-form-label">Stock</label>';
            echo '<div class="col-12">';
            echo '<input type="text" name="stock" class="form-control" id="stock">';
            echo '</div>';
            echo '</div>';

            echo '<div class="form-group row">';
            echo '<label for="imagen" class="col-12 col-form-label">Imagen(dejar en blanco si no desea modificar la foto)</label>';
            echo '<input type="file" class="col-12 form-control-file" name="userfile" id="imagen">';
            echo '</div>';

            echo '<button class="btn float-right btn-primary col-12 mt-2" type="submit">NUEVO ARTICULO</button>';
            echo '</fieldset>';
            echo form_close();
            ?>


        </div>
    </div>
</div>