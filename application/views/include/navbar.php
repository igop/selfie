<nav class="navbar navbar-default navbar-fixed-top" style = "background-color:rgba(57,112,76,.5);">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a>
            <?php echo anchor("main_controller", "<strong style = 'font-size:35px;'>Selfie</strong>", array("class"=>"navbar-brand")); ?>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><?php echo anchor("main_controller/login", "Login"); ?></li>
                <li><?php echo anchor("main_controller/register", "Register"); ?></li>
            </ul>
        </div>
    </div>
   
</nav>
<div class="navbar-margin"></div>