<?php include 'include/vheader.php';?>
    
        <?php include 'include/headimage.php';?>
        
               <section>
            <div class="container">
               <div class="row">
                 <?php if($countPage > 0){
                    $i=0;
                    foreach($ListPage as $pg){
                    $i++;  
                    ?>                  
                  <div class="col-md-8 col-md-offset-2 col-sm-12 text-center">
                             <h3 class="uppercase mb16"><?= html_entity_decode(contentValue($pg, 'title'));?></h3>
                             <p class="lead mb64"><?= html_entity_decode(contentValue($pg, 'desc'));?></p>
                          </div>
                <?php } } ?>
                <?php if($countSubPage > 0){
                    $i=0;
                    foreach($ListSubPage as $spg){
                    $i++;  
                    $child=array();
                     foreach ($spg['content'] as $key => $sc) {
                      if($sc['content_child']){
                         $child = $sc['content_child'];
                      }
                     }
                    ?>
                 <div class="col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 text-center">
                     <h3 class="uppercase mb16"><?= html_entity_decode(contentValue($spg, 'title'));?></h3>
                    <div class="row mb64 mb-xs-24">
                        <div class="col-md-12 col-md-offset-0">
                            <img alt="<?= html_entity_decode(contentValue($spg, 'title'));?>" class="cast-shadow" src="<?= html_entity_decode(contentValue($spg, 'images'));?>">
                        </div>
                    </div>
                  </div>
                 
                   <div class="col-md-8 col-md-offset-2 col-sm-12">
                        <?php $j=0;   foreach($child as $pr){ $j++; ?>
                       <a download target="_blank" class="btn btn--lg btn-download" href="<?=html_entity_decode(contentValue($pr, 'file_url'));?>" title="<?=html_entity_decode(contentValue($pr, 'title_download'));?>"><?=html_entity_decode(contentValue($pr, 'title_download'));?></a>                                                 
                       <?php }  ?>   
                   
                    </div>
                    <?php } } ?>
                    
               </div>
               
            </div>
            <!--end of container-->
         </section>
        
<?php include 'include/vfooter.php';?>
        