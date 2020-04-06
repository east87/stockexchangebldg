<?php if($countFoot > 0){
    $i=0;
    foreach($Footer as $ft){
    $i++;  
    ?>        
            <footer class="footer-1 bg-dark">
                <img class="text-center img_foot" accesskey="diamond fji" src="<?= html_entity_decode(contentValue($ft, 'background'));?>">
                <div class="container-fluid bg-footer">
                    <div class="row">
                        <div class="col-md-4 col-sm-4 text-left text-center-xs">
                            <img alt="Logo" class="logo" src="<?= html_entity_decode(contentValue($ft, 'left_logo'));?>" />                            
                        </div>
                        <div class="col-md-4 col-sm-4 text-center">
                            <?= html_entity_decode(contentValue($ft, 'address'));?>
                           
                        </div>
                        <div class="col-md-4 col-sm-4 text-center-xs text-center">
                            <img align=""  alt="icon_Logo_Cushman_red" class="" src="<?= html_entity_decode(contentValue($ft, 'right_logo'));?>" style="width: 70%;">                           
                        </div>                       
                    </div>
                    <!--end of row-->
                    <div class="row">
                        <div class="col-sm-4 col-xs-0 text-center-xs">
                          </div>
                          <div class="col-sm-4 col-xs-12 text-center text-center-xs ">
                            <ul class="ulfooter" data-bullet="">
                                <li><i class="fa fa-envelope-o"></i><a title="<?= html_entity_decode(contentValue($ft, 'email'));?>" href="mailto:<?= html_entity_decode(contentValue($ft, 'email'));?>">&nbsp; <?= html_entity_decode(contentValue($ft, 'email'));?></a></li>
                               <li><i class="fa fa-phone"></i><a title="<?= html_entity_decode(contentValue($ft, 'email'));?>" href="tel:<?= html_entity_decode(contentValue($ft, 'phone'));?>">&nbsp; <?= html_entity_decode(contentValue($ft, 'phone'));?> (Hunting)</a></li>
                               <li><i class="fa fa-fax"></i><a title="<?= html_entity_decode(contentValue($ft, 'fax'));?>" href="tel:<?= html_entity_decode(contentValue($ft, 'fax'));?>">&nbsp; <?= html_entity_decode(contentValue($ft, 'fax'));?></a></li>
                            </ul>  
                         </div>
                                              
                    </div>
                    
                     <div class="col-sm-12 col-xs-12 text-right text-center-xs">
                            <span class="sub">&copy; <?= @date('Y')?> PT. First Jakarta International - All Rights Reserved</span>
                        </div>  
                </div>                
            </footer>  
 <?php } } ?> 
</div>    
<div class="modal-container">
    <a class="btn-modal" id="vtourframe" href="#" title="virtual tour" style="display: none"></a>
                   <?php if($countVtour > 0){
                   $i=0;
                   foreach($Vtour as $vt){
                   $i++;  
                   ?>
                   <div class="foundry_modal text-center" id="foundry_modal">
                         <iframe width="100%" height="100%" src="<?= html_entity_decode(contentValue($vt, 'virtual_url'));?>" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
                   </div>
                   <?php } } ?> 
</div>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
          <script src="<?= FRONTEND_BASE_URL; ?>/js/bootstrap.min.js"></script>
        <script src="<?= FRONTEND_BASE_URL; ?>/js/flickr.js"></script>
        <script src="<?= FRONTEND_BASE_URL; ?>/js/flexslider.min.js"></script>
        <script src="<?= FRONTEND_BASE_URL; ?>/js/lightbox.min.js"></script>
        <script src="<?= FRONTEND_BASE_URL; ?>/js/smooth-scroll.min.js"></script>
        <script src="<?= FRONTEND_BASE_URL; ?>/js/parallax.js"></script>
        <script src="<?= FRONTEND_BASE_URL; ?>/js/scripts.js"></script>
        <script src="https://www.google.com/recaptcha/api.js?onload=myCallBack&render=explicit" async defer></script>
     
          <script src="<?php echo FRONTEND_BASE_URL?>/js/jquery.validate.min.js"></script>
     <script type="text/javascript">
         var recaptcha1;
         var myCallBack = function() {
          	recaptcha1 = grecaptcha.render('recaptcha', {
            		'sitekey' : '<?php echo SITE_KEY;?>', //Replace this with your Site key
            		'theme' : 'light'    
          	});
          
          
         };
         function myFunctionFORM() {
        /* validation */
        jQuery.validator.addMethod("lettersonly", function(value, element) {
            return this.optional(element) || /^[a-z ]+$/i.test(value);
        }, "Letters and spaces only please");
        jQuery.validator.addMethod("correctemail", function(value, element) {
            return this.optional(element) || /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(value);
        }, "Must correct email");
        $("#form-contact").validate({
            rules: {
                contact_enquiry: {
                    required: true
                },
                contact_name: {
                    required: true,
                    minlength: 3,
                    maxlength: 100
                },
                contact_email: {
                    required: true,
                    correctemail: true,
                    email: true
                },
                 contact_phone: {
                    required: true,
                    minlength: 8,
                    maxlength: 15,
                    number: true
                },
                contact_message: {
                    required: true,
                    minlength: 5
                }
            },
            messages: {
                contact_enquiry: "Please select enquiry",
                contact_name: {
                    required: "Please fill your name ",
                    minlength: "Minimum 3 character",
                    maxlength: "Maximum 30 character"
                },
                contact_email: "Please fill your email",
                contact_phone: {
                    required: "Please fill your number phone ",
                    minlength: "Minimum 8 character",
                    maxlength: "Maximum 15 character"
                },
                contact_message: {
                    required: "Please fill your message",
                    minlength: "Minimum 5 character"
                }
            },
            submitHandler: submitContactForm
        });
        /* validation */
    }
    /* form submit */
function submitContactForm() {
    var data = $("#form-contact").serialize();
    
    $.ajax({
        type: 'POST',
        url: '<?php echo BASE_URL;?>/contact/postMsg',
        data: data,
    beforeSend: function() {
     var btnSend = '<span class="input-group-append">Sending</i>';
            $("#btn-submit").html(btnSend);
  }
    }).done(function(result) {
        $("#btn-submit").html("&nbsp;Send Message");
        if (result == 1) {
            $('#contact_name').val('');
            $('#contact_email').val('');
            $('#contact_enquiry').val('');
            $('#contact_phone').val('');
            $('#contact_message').val('');
        $("#id_alert").show();
        setTimeout(function(){  $("#id_alert").hide(); }, 4000);
        } else {

            $('#contact_name').val('');
            $('#contact_email').val('');
            $('#contact_enquiry').val('');
            $('#contact_phone').val('');
            $('#contact_message').val('');
            $('#captcha_error').html('Robot verification failed, please try again.');
        }
    }).fail(function() {
        $('#contact_name').val('');
        $('#contact_email').val('');
        $('#contact_phone').val('');
        $('#contact_phone').val('');
        $('#contact_message').val('');
        $('#captcha_error').html('Robot verification failed, please try again.');
    })

}
      </script> 
          <script>
            jQuery(document).ready(function($){
                jQuery("#vtr_show").click(function(){
                   jQuery("#vtourframe").trigger("click");
                   return false;
                });
                    $('a.scroll-link').click(function(e){
                            e.preventDefault();
                            $id = $(this).attr('href');
                            $('body,html').animate({
                                    scrollTop: $($id).offset().top -20
                            }, 750);
                    });

            });
        </script>
    </body>
</html>