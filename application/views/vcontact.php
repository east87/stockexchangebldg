<?php include 'include/vheader.php';?>
    
        <?php include 'include/headimage.php';?>
        
         <section>      
        <?php if($countPage > 0){
                    $i=0;
                    foreach($ListPage as $pg){
                    $i++;  
                    ?>                  
                  <section class="p32">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 col-md-6">
                            <h4 class="uppercase"><?= html_entity_decode(contentValue($pg, 'title'));?></h4>
                              <hr>
                           <p>
                            <?= html_entity_decode(contentValue($pg, 'address_title'));?>
                            <br> <a href="location.html#map" title="Indonesian Stock Exchange Building"> <?= html_entity_decode(contentValue($pg, 'address'));?></a>
                           </p>
                            General Enquiries :
                            <br>
                            <p>
                            <a title="<?= html_entity_decode(contentValue($pg, 'general_enquiries_phone'));?>" href="tel:<?= html_entity_decode(contentValue($pg, 'general_enquiries_phone'));?>"><i class="fa fa-phone"></i>&nbsp; <?= html_entity_decode(contentValue($pg, 'general_enquiries_phone'));?></a> 
                            <br />
                            <a title="<?= html_entity_decode(contentValue($pg, 'general_enquiries_email'));?>" href="mailto:<?= html_entity_decode(contentValue($pg, 'general_enquiries_email'));?>"><i class="fa fa-envelope-o"></i>&nbsp; <?= html_entity_decode(contentValue($pg, 'general_enquiries_email'));?></a>
                            </p>
                            Leasing Enquiries :
                             <br>
                            <p>
                            <a title="<?= html_entity_decode(contentValue($pg, 'leasing_enquiries_phone'));?>" href="tel:<?= html_entity_decode(contentValue($pg, 'leasing_enquiries_phone'));?>"><i class="fa fa-phone"></i>&nbsp; <?= html_entity_decode(contentValue($pg, 'leasing_enquiries_phone'));?></a> 
                            <br />
                            <a title="<?= html_entity_decode(contentValue($pg, 'leasing_enquiries_email'));?>" href="mailto:<?= html_entity_decode(contentValue($pg, 'leasing_enquiries_email'));?>"><i class="fa fa-envelope-o"></i>&nbsp; <?= html_entity_decode(contentValue($pg, 'leasing_enquiries_email'));?></a>
                            </p>
                        </div>
                        <div class="col-sm-6 col-md-6">
                             <h4 class="uppercase"><?= html_entity_decode(contentValue($pg, 'title_message'));?></h4>
                             <hr> 
                             <p>
                                <?= html_entity_decode(contentValue($pg, 'sub_title_message'));?> 
                             </p>
                           
                           
                              <form id="form-contact" action="/">
                               <div class="select-option">
                                    <i class="ti-angle-down"></i>
                                    <select id="contact_enquiry" name="contact_enquiry" class="validate-required" >
                                        <option value=""><?= $this->lang->line("choose_enquiry");?></option>
                                        <option value="leasing"> Leasing Enquiry</option>
                                        <option value="general"> General Enquiry</option>
                                    </select>
                                </div>
                                <input type="text" class="validate-required" id="contact_name" name="contact_name" placeholder="<?= $this->lang->line("your_name");?>" />                                
                                <input type="text" class="validate-required validate-email" id="contact_email" name="contact_email" placeholder="<?= $this->lang->line("email-addr");?>" />
                                <input type="text" class="validate-required" id="contact_phone" name="contact_phone" placeholder="<?= $this->lang->line("phone-number");?>" />  
                                <textarea class="validate-required" id="contact_message" name="contact_message" rows="4" placeholder="<?= $this->lang->line("message");?>"></textarea>
                                <div class="col-12">
                                    <div class="col-md-10">
                                        <div id="recaptcha"></div>
                                       <span id='captcha_error' style='color:white;'></span>
                                     </div>
                                </div>
                                <br/>
                                <br/>
                                 <button type="submit" class="btn btn-deep-pink btn-medium margin-15px-top" id="btn-submit" onclick="myFunctionFORM()"><?= $this->lang->line("send");?></button> 
                                <div id="id_alert" class="alert alert-success alert-dismissible" role="alert" style="display:none;">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                                <strong>Message</strong> has been sent!
                            </div>
                            </form>
                            
                        </div>
                    </div>
                    <!--end of row-->
                </div>
                <!--end of container-->
            </section>
        <?php } } ?>
</section>   
<?php include 'include/vfooter.php';?>