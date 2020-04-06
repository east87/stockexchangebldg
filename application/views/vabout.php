<?php include 'include/vheader.php';?>
   <style type="text/css">
        
        .feature-3 i {
            background: #1689C3;
            display: block;
            width: 80px;
            height: 80px;
            border: 1px solid #1689C3;
            text-align: center;
            line-height: 80px;
            /* color: #1689C3; */
            border-radius: 50%;
            margin: 0 auto;
            margin-bottom: 20px;
            transition: all 0.3s ease;
            -webkit-transition: all 0.3s ease;
            -moz-transition: all 0.3s ease;
        }
       </style>   
        <?php include 'include/headimage.php';?>
        <?php if($countPage > 0){
            $i=0;
            foreach($ListPage as $pg){
            $i++;  
            ?>                  
         <section class="pt40 pb16">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 text-center">
                            <h4 class="uppercase mb16"> <?= html_entity_decode(contentValue($pg, 'title'));?></h4>
                            <p class="lead mb64"> <?= html_entity_decode(contentValue($pg, 'desc'));?></p>
                        </div>
                    </div>
                </div>
                <!--end of container-->
            </section>
        <?php } } ?>
             <section class="pt40 pb16 bg-secondary">
                <div class="container">
                    
                  <div class="row col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1">
                       <?php if($countSubPage > 0){
                                $i=0;
                                foreach($ListSubPage as $spg){
                                $i++;  
                                ?>     
                      <div class="col-sm-12 pb24">
                            <div class="feature feature-3 p24">
                                <div class="col-md-4 left">
                                <i class="icon-sm">
                                    <img alt="<?= html_entity_decode(contentValue($spg, 'title'));?>" class="image-xs inline-block mb16" src="<?= html_entity_decode(contentValue($spg, 'images'));?>">
                                </i>
                                </div>
                                <div class="col-md-8 right text-justify  pb-xs-32">
                               <h5 class="uppercase  text-center-xs"><?= html_entity_decode(contentValue($spg, 'title'));?></h5>
                                <p><?= html_entity_decode(contentValue($spg, 'desc'));?></p>
                                </div>
                            </div>
                            <!--end of feature-->
                        </div>
                      <?php } } ?>
                    </div>
                </div>
                <!--end of container-->
            </section>  
        
<?php include 'include/vfooter.php';?>
        