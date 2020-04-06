<!-- end::Body -->
<body class="m-page--fluid m--skin- m-content--skin-light2 m-header--fixed m-header--fixed-mobile m-aside-left--enabled m-aside-left--skin-dark m-aside-left--offcanvas m-footer--push m-aside--offcanvas-default"  >
   <!-- begin:: Page -->
   <div class="m-grid m-grid--hor m-grid--root m-page">
      <?php include VIEWS_PATH_BACKEND."/menu.php"; ?>
      <!-- begin::Body -->
      <div class="m-grid__item m-grid__item--fluid m-grid m-grid--ver-desktop m-grid--desktop m-body">
         <?php include VIEWS_PATH_BACKEND."/leftMenu.php"; ?>	
         <div class="m-grid__item m-grid__item--fluid m-wrapper">
            <!-- BEGIN: Subheader -->
            <div class="m-subheader ">
               <div class="d-flex align-items-center">
                  <div class="mr-auto">
                     <h4 class="m-subheader__title m-subheader__title--separator">
                        Language - List
                     </h4>
                  </div>
               </div>
            </div>
            <?php if(isset($error)){ ?>
            <div class="panel-body">
               <div class="form-group has-error">
                  <label for="inputError" class="col-sm-2 control-label col-lg-2"><?php echo $error;?></label>
               </div>
            </div>
            <?php } ?>
            <!-- END: Subheader -->
            <div class="m-content">
               <div class="m-portlet m-portlet--mobile">
                  <div class="m-portlet__body">
                     <!--begin: Search Form -->
                     <div class="m-form m-form--label-align-right m--margin-top-20 m--margin-bottom-30">
                        <div class="row align-items">
                           <div class="col-xl-4 order-1 order-xl-4 m--align-left">
                              <a href="<?php echo BASE_URL_BACKEND;?>/language/add/" class="btn btn-success btn-sm m-btn  m-btn m-btn--icon">
                              <span> <i class="fa fa-plus"></i> <span> ADD</span>
                              </span>
                              </a>
                              
                           </div>
                        </div>
                     </div>
                     <div class="col-md-12 m-form m-form--label-align-right m--margin-top-20 m--margin-bottom-30">
                        <form class="form-inline" role="form" method="post" name="frmSearch" action="<?php echo BASE_URL_BACKEND."/language/view"; ?>">
                           <div class="col-md-3 m--align-left">
                              <select name="searchby" id="search-by" size="1" class="form-control">
                                    <option value="">Choose a search</option>
                                    <option value="language_title" <?php if($searchby == "language_title") { echo "selected"; }?> >Language Title</option>
                            </select>
                           </div>
                           <div class="col-md-3">
                              <input type="text" class="form-control" name="searchkey" placeholder="Keyword" value="<?php if(!empty($searchkey)){echo $searchkey;} ?>">                                                                         
                           </div>
                           <div class="col-md-1">
                              <select name="perpage" id="perpage" size="1" aria-controls="editable-sample" class="form-control xsmall">
                                        <option value="<?php echo PER_PAGE;?>" <?php if($perpage == "10") { echo "selected"; }?>><?php echo PER_PAGE;?></option>
                                        <option value="20" <?php if($perpage == "20") { echo "selected"; }?>>20</option>
                                        <option value="50" <?php if($perpage == "50") { echo "selected"; }?>>50</option>
                                        <option value="100" <?php if($perpage == "100") { echo "selected"; }?>>100</option>
                                </select> 
                           </div>
                           <div class="col-md-2">
                              <input class="btn btn-success btn-sm" name="tbSearch" type="submit" value="Search">&nbsp;
                           </div>
                           <div class="col-md-2">
                              <label>Total : <?php echo $total;?></label>
                            </div>
                        </form>
                     </div>
                     <!--end: Search Form -->
                     <!--begin: Datatable -->
                     <section id="unseen">
                        <table class="table table-bordered table-striped table-condensed">
                           <thead>
                              <tr>
                                <th width="10">No</th>
                                      <th>Language Title</th>
                                      <th width="150">Language Images</th>
                                      <th width="100">Default</th>
                                    <th width="140">Action</th>
                              </tr>
                           </thead>
                           <tbody>
                                  <?php
									if(count($ListLanguage) > 0){
									$no=0;
									foreach($ListLanguage as $language){
										$no++;
								  ?>
								  <tr>
									  <td><?php echo $no;?></td>
									  <td><?php echo $language['language_title'];?></td>
									  <td align="center">
									  <?php if(!empty($language['language_image'])){ ?>
										<img src="<?php echo BASE_URL.$language['language_image']; ?>" style="max-width:400px; padding:5px; border:solid 1px #ccc;">
									  <?php } ?>
									  </td>
									  <td align="center">
									  <?php if($language['language_default'] == 1) {?>
										<a class="btn-outline-success btn-sm" title="Click to Inactive" href="<?php echo BASE_URL_BACKEND."/language/defaultLang/".$language['language_id'];?>"><i class="la la-check-circle"></i></a> &nbsp; 
									  <?php } else { ?>	
										<a class="btn-outline-danger btn-sm" title="Click to Active" href="<?php echo BASE_URL_BACKEND."/language/defaultLang/".$language['language_id'];?>"><i class="la la-power-off"></i></a> &nbsp;
									  <?php } ?>
									  </td>
									  <td  colspan="3">
											<?php if($approve){ ?>
												<?php if($language['language_active_status'] == 1) {?>
												<a class="btn-outline-success btn-sm" title="Click to Inactive" href="<?php echo BASE_URL_BACKEND."/language/active/".$language['language_id'];?>"><i class="la la-check-circle"></i></a> &nbsp; 
												<?php } else { ?>	
													<a class="btn-outline-danger btn-sm" title="Click to Active" href="<?php echo BASE_URL_BACKEND."/language/active/".$language['language_id'];?>"><i class="la la-power-off"></i></a> &nbsp;
												<?php } ?>
											<?php } ?>
											<?php if($edit){ ?>
											<a class="btn-outline-primary btn-sm" title="Click to Edit" href="<?php echo BASE_URL_BACKEND;?>/language/edit/<?php echo $language['language_id'];?>"><i class="la la-edit"></i></a> &nbsp; 
											<?php } ?>
											<?php if($language['language_id'] != 2 && $language['language_id'] != 1){?>
											<?php if($delete){ ?>
											<a class="btn-outline-danger btn-sm" title="Click to Delete" onclick="var answer = confirm('delete <?php echo $language['language_title'];?> ?'); if (answer){window.location = '<?php echo BASE_URL_BACKEND;?>/language/delete/<?php echo $language['language_id'];?>';}"><i class="la la-trash"></i></a>
										    <?php } ?>
											<?php } ?>
									  </td>
								  </tr>
								  <?php } ?>
								  <?php } else {?>
								  <tr>
									<td align="center" colspan="10">Data Not Found</td>
								  </tr>
								  <?php } ?>
                                  </tbody>
                        </table>
                     </section>
                     <?php echo($paging);?>
                     <!--end: Datatable -->
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end:: Body -->
      <?php include VIEWS_PATH_BACKEND."/footer.php"; ?>
   </div>
   <!-- end:: Page -->
   <!--begin::Base Scripts -->
   <script src="<?php echo BACKEND_BASE_URL; ?>/vendors/base/vendors.bundle.js" type="text/javascript"></script>
   <script src="<?php echo BACKEND_BASE_URL; ?>/demo/default/base/scripts.bundle.js" type="text/javascript"></script>
   <!--end::Base Scripts -->   
   <!--begin::Page Vendors -->
   <script src="<?php echo BACKEND_BASE_URL; ?>/demo/default/custom/components/datatables/base/html-table.js" type="text/javascript"></script>
   <!--end::Page Snippets -->
   <script language="javascript">
      $(document).ready(function(){
      $("#doOrder").click(function() {
        var frm = document.formAssignment;   
      var answer = confirm('are you sure want to update order?');
      if(answer){   
      frm.action = '<?php echo BASE_URL_BACKEND;?>/language/doOrder';   
      frm.submit();   
      } else {   
      return false;   
      }  
      });
      });
      
      $(document).ready(function() {   
      $("#perpage").change(function() {   
      var n = $(this).val();   
      frmSearch.submit();   
      }); 
      $("#langid\\[\\]").change(function(e){   
      var val = $(this).val();   
      mystring  = val.split("-");   
      var size = mystring.length; 
      if(size == 3){   
      	window.location = '<?php echo BASE_URL_BACKEND;?>/language/editLang/'+val;   
      } else if(size == 2){   
      	window.location = '<?php echo BASE_URL_BACKEND;?>/language/addLang/'+val;  
      }
      
      });
      
      });
   </script>
</body>
<!-- end::Body -->
</html>