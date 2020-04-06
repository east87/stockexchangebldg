<?php include 'include/vheader.php';?>
        <?php
        if($countHeader > 0){
        $i=0;
        foreach($ListHeader as $hd){
        $i++;  
        ?>

            <section class="fullscreen cover image-bg">
                <div class="background-image-holder">
                    <img alt="image" class="background-image" src="<?= html_entity_decode(contentValue($hd, 'header_images'));?>" />
                </div>
                <div class="container v-align-transform barlow-text">
                    <div class="row">
                        <div class="col-sm-12 text-uppercase text-center">
                            <h1 class="mb16"><?= html_entity_decode(contentValue($hd, 'header_title'));?></h1>  
                            <h4 class="uppercase mb32"><?= html_entity_decode(contentValue($hd, 'header_sub_title'));?></h4>
                            
                            <!--end of modal video-->
                        </div>
                    </div>
                        <?php if($countVtour > 0){
                                $i=0;
                                foreach($Vtour as $vt){
                                $i++;  
                                ?>
                           <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 text-center" style="top: calc(22vh - 61px);">
                            <div class="modal-container">
                                <a class="btn btn-sm btn-filled btn-rounded mb32 btn-modal" href="#foundry_modal" modal-link="2"><?= html_entity_decode(contentValue($vt, 'virtual_title'));?></a>                              
                                <div class="foundry_modal text-center" id="foundry_modal">
                                      <iframe width="100%" height="100%" src="<?= html_entity_decode(contentValue($vt, 'virtual_url'));?>" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
                                </div>
                               
                            </div> 
                           
                            </div>
                        <?php } } ?> 
                    <!--end of row-->
                </div>
                <!--end of container-->
            </section>
        <?php } } ?> 

            <section class="pt32 pb24" id="place">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 text-center">
                            <h5 class="lead mb64 mb-xs-16">
                                <?php if($countPage > 0){
                                $i=0;
                                foreach($ListPage as $pg){
                                $i++;  
                                ?>
                                <?= html_entity_decode(contentValue($pg, 'desc'));?>
                                <?php } } ?> 
                            </h5>
                        </div>
                    </div>
                    <!--end of row-->
                    <div class="row">
                         <?php if($countSubPage > 0){
                                $i=0;
                                foreach($ListSubPage as $spg){
                                $i++;  
                                ?>  
                         <div class="col-sm-12 pb24">
                            <div class="feature feature-3 p24">
                                <div class="svg_icon left">
                                    <img alt="<?= html_entity_decode(contentValue($spg, 'title'));?>" class="image-xs" src="<?= html_entity_decode(contentValue($spg, 'images'));?>" />
                               
                                </div>
                                <div class="right text-justify pb-xs-32">
                                <h5 class="uppercase mb16 text-center-xs"><?= html_entity_decode(contentValue($spg, 'title'));?></h5>
                                <p><?= html_entity_decode(contentValue($spg, 'desc'));?></p>
                                </div>
                            </div>
                            <!--end of feature-->
                        </div>
                         <?php } } ?> 
                    </div>
                    <!--end of row-->
                </div>
                <!--end of container-->
            </section>
        
<?php include 'include/vfooter.php';?>
        