<div class="container">
    <div class="alert alert-dismissible alert-success text-center mt-5">
        El login se ha efectuado con éxito, te redirigiremos a tu cuenta.
    </div>
</div>

<script>
    window.setTimeout(function() {
        window.location.href = '<?php echo site_url('perfil') ?>';
    }, 2000);
</script>
