<?php include 'include/vheader.php';?>
            <?php include 'include/headimage.php';?>
         <section>
            <div class="container">
               <div class="row">
                 <?php if($countPage > 0){
                    $i=0;
                    foreach($ListPage as $pg){
                    $map=html_entity_decode(contentValue($pg, 'map'));
                    $i++;  
                    ?>                  
                   <div class="col-lg-6 col-md-12 col-xs-12 text-left">
                       <h3 class="uppercase mb16"><?= html_entity_decode(contentValue($pg, 'title'));?></h3>
                       <p class="lead mb64"><?= html_entity_decode(contentValue($pg, 'desc'));?></p>
                   </div>
                <?php } } ?>
                   <div class="col-lg-6 col-md-12 col-xs-12">
                     <div class="tabbed-content text-tabs">
                        <ul class="tabs">
                            <?php if($countSubPage > 0){
                                $i=0;
                                foreach($ListSubPage as $spg){
                                $i++;  
                                ?>  
                           <li class="<?php if($i==1) echo 'active';?>">
                              <div class="tab-title">
                                 <span><?= html_entity_decode(contentValue($spg, 'title'));?></span>
                              </div>
                           </li>
                            <?php } } ?>
                           
                        </ul>
                        <ul class="content" style="min-height: 120px;">
                           
                             <?php if($countSubPage > 0){
                                $i=0;
                                foreach($ListSubPage as $spg){
                                $i++;  
                                ?>
                            <li class="<?php if($i==1) echo 'active';?>">
                              <div class="tab-content">
                                 <?= html_entity_decode(contentValue($spg, 'desc'));?>
                              </div>
                           </li>
                           <?php } } ?>
                        </ul>
                     </div>
                     <!--end of button tabs-->
                  </div>
                  
               </div>
            </div>
            <div class="container" id="map">
               <div class="row">
                   <div class="col-lg-12 col-md-12 col-xs-12">
                       <?=$map;?>
                   </div>
               </div>
            </div>
            <!--end of container-->
         </section>  
        
<?php include 'include/vfooter.php';?>
        