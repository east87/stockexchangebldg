<?php include 'include/vheader.php';?>
    
        <?php include 'include/headimage.php';?>
<style type="text/css">
.page-title-1,.page-title-2{margin-top:55px}@media all and (max-width:767px){.page-title-1,.page-title-2{margin-top:11.3%;min-height:170px;max-height:175px}}@media all and (max-width:500px){.page-title-1,.page-title-2{margin-top:55px;min-height:170px;max-height:175px}}
</style>
               <section>
            <div class="container">
               <div class="row">
                 <?php if($countPage > 0){
                    $i=0;
                    foreach($ListPage as $pg){
                    $i++;  
                    ?>                  
                  <div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 text-center">
                             <h3 class="uppercase mb16"><?= html_entity_decode(contentValue($pg, 'title'));?></h3>
                             <p class="lead mb64"><?= html_entity_decode(contentValue($pg, 'desc'));?></p>
                          </div>
                <?php } } ?>
               </div>
               <div class="row">
                  <div class="col-container row col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-1 text-center">
                     <?php if($countSubPage > 0){
                                $i=0;
                                foreach($ListSubPage as $spg){
                                $i++;  
                                ?>  
                      <div class="col-sm-6 col-xs-6 facility">
                        <div class="feature feature-3 feature-4">
                           <div class="left">
                               <i class="icon-lg">
                                <img alt="<?= html_entity_decode(contentValue($spg, 'title'));?>" class="image-xs inline-block mb16" src="<?= html_entity_decode(contentValue($spg, 'images'));?>">
                                </i>
                           </div>
                           <div class="right">
                              <h5 class="uppercase mb16 text-center-xs text-left"><?= html_entity_decode(contentValue($spg, 'title'));?></h5>
                           </div>
                        </div>
                        <!--end of feature-->
                     </div>
                      <?php } } ?>
                      
                  </div>
               </div>
            </div>
            <!--end of container-->
         </section>
        
<?php include 'include/vfooter.php';?>
        