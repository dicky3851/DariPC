<?php
    include('header.php');
?>

<link rel="stylesheet" type="text/css" href="css/MainDataTables.css"/>
<script type="text/javascript" src="js/jquery.dataTables.js"></script>

<script type="text/javascript">
	jQuery(function($) {
		var listTable = 
			$('#employeeList')
				.dataTable({					
					"columnDefs": [
								{"orderable":false,"targets":[-1]},
								{"width":"20%","targets":[1,3]}
							],
					"language": {
								"lengthMenu": "Display _MENU_ records",
								 "info": "Showing _START_ to _END_ of _TOTAL_ records",
						  },
					});
	});
</script>

<script>
	function validate_form1()
	{	
		if(document.form_1.coa_name.value.length == 0)
		{
			alert('Mohon Input Account Name');
			document.form_1.coa_name.focus();
			return false;
		}
		
		if(document.form_1.coa_code.value.length == 0)
		{
			alert('Mohon Input Account Code');
			document.form_1.coa_code.focus();
			return false;
		}
        
        return true;
    }
	
	function validate_form2()
	{	
		if(document.form_2.account2.value.length == 0)
		{
			alert('Mohon Input Account Name');
			document.form_2.account2.focus();
			return false;
		}
        
        return true;
    }
	
	function validate_form3()
	{	
		if(document.form_3.account3.value.length == 0)
		{
			alert('Mohon Input Account Name');
			document.form_3.account3.focus();
			return false;
		}
        
        return true;
    }
    
    function IsNumeric(sText)
	{
		var ValidChars = "0123456789,.";
		var IsNumber = true;
		var Char;
		for(i=0;i<sText.length&&IsNumber==true;i++)
		{
			Char=sText.charAt(i);
			if(ValidChars.indexOf(Char) == -1)
			{
				IsNumber = false;
			}
		}
		return IsNumber;
	}
	
	function isValidEmail(strEmail)
	{
	  validRegExp = /^[^@]+@[^@]+.[a-z]{2,}$/i;
	  /*strEmail = document.form_1.email.value;*/
					
	   // search email text for regular exp matches
		if (strEmail.search(validRegExp) == -1) 
	   	{
		  return false;
		}
		else
		{ 
			return true;
		} 
	}
</script>

	<body>
		<div class="header" id="home">
            
			<?php
				include('menu.php');
			?>
			
		</div>
        
		<div class="basicFrame backgroundGray">
			<div class="col100 marginAuto textBold marginTop5 marginBottom20 colorBlue2 borderBottomColorGrey2 textUpper paddingBottom5 fontSize11">
				Data Mapping
			</div>
			
			<div class="col100 backgroundWhite padding20 marginBottom10">
			
			<?php
				if(isset($_POST['cmdUpload']))
				{
					$type = $_POST["type"];
					//$date = $_POST["date"];
													
					$sukses = 0;
					$gagal = 0;
								
					$data = new Spreadsheet_Excel_Reader($_FILES['fupload']['tmp_name']);
					$baris = $data->rowcount($sheet_index=0);
								
					$indexRow = 1;
					$countError = 0;
					$messageError = "";
								
				?>
					<div class="col100 floatLeft padding10 marginRight20 marginBottom20 borderGray">
						<div class="col98 marginAuto">
							<div class="col100 textBold marginTop5 marginBottom20 colorBlue2 borderBottomColorGrey2 textUpper paddingBottom5">
								Result Process
							</div>
							
							<?php
								$flagAllow = 1;
							
								for ($i=2; $i<=$baris; $i++)
								{
									$caseID = $data->val($i,1);
									$mid = $data->val($i,2);
									$tid = $data->val($i,3);
									$mid_bri = $data->val($i,4);
									$tid_bri = $data->val($i,5);
									$mid_btn = $data->val($i,6);
									$tid_btn = $data->val($i,7);
									$mid_bni = $data->val($i,8);
									$tid_bni = $data->val($i,9);
									$mid_danamon = $data->val($i,10);
									$tid_danamon = $data->val($i,11);
									$mid_astrapay = $data->val($i,12);
									$tid_astrapay = $data->val($i,13);
									$mid_bsi = $data->val($i,14);
									$tid_bsi = $data->val($i,15);
									$tidreplace = $data->val($i,16);
									$note = $data->val($i,17);
									$merchant = $data->val($i,18);
									$address = $data->val($i,19);
									$city = $data->val($i,20);
									$vendor = $data->val($i,21);
									$vendorupdate = $data->val($i,22);
									$terminaltype = $data->val($i,23);
									$dongle = $data->val($i,24);
									$provider = $data->val($i,25);
									$datewr = $data->val($i,26);
									$sn_edc = $data->val($i,27);
									$sn_sam = $data->val($i,28);
									$sn_sim = $data->val($i,29);
									$wr = $data->val($i,30);
									$provider_sim = $data->val($i,31);
									$produk_sam = $data->val($i,32);
									
									
									$caseID = strtoupper(str_replace("'","",$caseID));
									$mid = strtoupper(str_replace("'","",$mid));
									$tid = strtoupper(str_replace("'","",$tid));
									$mid_bri = strtoupper(str_replace("'","",$mid_bri));
									$tid_bri = strtoupper(str_replace("'","",$tid_bri));
									$mid_btn = strtoupper(str_replace("'","",$mid_btn));
									$tid_btn = strtoupper(str_replace("'","",$tid_btn));
									$mid_bni = strtoupper(str_replace("'","",$mid_bni));
									$tid_bni = strtoupper(str_replace("'","",$tid_bni));
									$mid_danamon = strtoupper(str_replace("'","",$mid_danamon));
									$tid_danamon = strtoupper(str_replace("'","",$tid_danamon));
									$mid_astrapay = strtoupper(str_replace("'","",$mid_astrapay));
									$tid_astrapay = strtoupper(str_replace("'","",$tid_astrapay));
									$mid_bsi = strtoupper(str_replace("'","",$mid_bsi));
									$tid_bsi = strtoupper(str_replace("'","",$tid_bsi));
									$tidreplace = strtoupper(str_replace("'","",$tidreplace));
									$note = strtoupper(str_replace("'","",$note));
									$merchant = strtoupper(str_replace("'","`",$merchant));
									$address = strtoupper(str_replace("'","",$address));
									$city = strtoupper(str_replace("'","",$city));
									$vendor = strtoupper(str_replace("'","",$vendor));
									$vendorupdate = strtoupper(str_replace("'","",$vendorupdate));
									$terminaltype = strtoupper(str_replace("'","",$terminaltype));
									$dongle = strtoupper(str_replace("'","",$dongle));
									$provider = strtoupper(str_replace("'","",$provider));
									$datewr = strtoupper(str_replace("'","",$datewr));
									$sn_edc = strtoupper(str_replace("'","",$sn_edc));
									$sn_sam = strtoupper(str_replace("'","",$sn_sam));
									$sn_sim = strtoupper(str_replace("'","",$sn_sim));
									$wr = strtoupper(str_replace("'","",$wr));
									$provider_sim = strtoupper(str_replace("'","",$provider_sim));
									$produk_sam = strtoupper(str_replace("'","",$produk_sam));
									
									
									
									
									//Check Duplication
									if($type == "Replace" || $type == "Part" || $type == "Replace Others" || $type == "Part Others")
									{
										//Check CaseID
										if(!empty($caseID) || $caseID <> "")
										{
											//Check Duplication
											if($type == "Part")
											{
												$queryCD = "select idMapping
														from asset_mapping
														where caseID = '".$caseID."' and tid = '".$tid."' and type in ('Replace','Part','Replace Others','Part Others')";
												 //echo $queryCD."<br>";				
											}
											elseif($type == "Replace")
											{
												$queryCD = "select idMapping
														from asset_mapping
														where caseID = '".$caseID."' and type in ('Replace','Part','Replace Others','Part Others')";
												 //echo $queryCD."<br>";				
											}
											elseif($type == "Replace Others")
											{
												$queryCD = "select idMapping
														from asset_mapping
														where caseID = '".$caseID."' and type in ('Replace','Part','Replace Others','Part Others')";
												// echo $queryCD."<br>";				
											}
											elseif($type == "Part Others")
											{
												$queryCD = "select idMapping
														from asset_mapping
														where caseID = '".$caseID."' and type in ('Replace','Part','Replace Others','Part Others')";
												// echo $queryCD."<br>";				
											}
											
											$resultCD = mysql_query($queryCD);
											$numrowCD = mysql_num_rows($resultCD);
											
											if($numrowCD == 0)
											{
												$flagAllow = 1;
											}
											else
											{
												$flagAllow = 0;
												$gagal++;
												$messageError = $messageError."Failed Process on Row ".$indexRow." : Duplicate CaseID |";
											}
										}
										else
										{
											$flagAllow = 0;
											$gagal++;
											$messageError = $messageError."Failed Process on Row ".$indexRow." : CaseID is blank |";
										}
									}
									else
									{
										//Check Date WR
										if(!empty($wr) || $wr <> "")
										{
											//Check Duplication
											$queryCD = "select idMapping
														from asset_mapping
														where wr = '".$wr."' and tid = '".$tid."' and type in ('New Mandiri','New Others')";
											 //echo $queryCD."<br>";			
											$resultCD = mysql_query($queryCD);
											$numrowCD = mysql_num_rows($resultCD);
											
											if($numrowCD == 0)
											{
												$flagAllow = 1;
											}
											else
											{
												$flagAllow = 0;
												$gagal++;
												$messageError = $messageError."Failed Process on Row ".$indexRow." : Duplicate Work Request ID |";
											}
										}
										else
										{
											$flagAllow = 0;
											$gagal++;
											$messageError = $messageError."Failed Process on Row ".$indexRow." : Work request ID is blank |";
										}
									}
									
									if($flagAllow == 1)
									{
										//update table merchant
										$queryCM = "select idVendor from vendor where upper(vendor) = '".$vendor."'";
										$resultCM = mysql_query($queryCM);
										$numrowCM = mysql_num_rows($resultCM);
										// echo $queryCM."<br>";
													
										if($numrowCM == 0)
										{
											$queryIM = "insert into vendor
														(vendor,tidnamedetail)
														select '".$vendor."','".$vendor."'";
																		
											$resultIM = mysql_query($queryIM);
										}
													
										//Insert data
										$queryID = "insert into asset_mapping
													(uploadDT,uploadBy,type,caseID,mid,tid,tidreplace,mid_bri,tid_bri
													,mid_btn,tid_btn,mid_bni,tid_bni,mid_danamon,tid_danamon,mid_astrapay,tid_astrapay,mid_bsi,tid_bsi,
													note,merchant,address,city,
													vendor,vendorupdate,sn_edc,sn_sam,sn_sim,wr,
													idStatus,statusAsset,
													terminaltype,dongle,provider,datewr,
													provider_sim,produk_sam,
													updateBy,updateDT)
													select now(),".$userID.",'".$type."','".$caseID."','".$mid."','".$tid."','".$tidreplace."',
													'".$mid_bri."','".$tid_bri."','".$mid_btn."','".$tid_btn."','".$mid_bni."','".$tid_bni."','".$mid_danamon."','".$tid_danamon."',
													'".$mid_astrapay."','".$tid_astrapay."','".$mid_bsi."','".$tid_bsi."','".$note."','".$merchant."','".$address."','".$city."',
													'".$vendor."','".$vendorupdate."','".$sn_edc."','".$sn_sam."','".$sn_sim."','".$wr."',
													3,'Open Warehouse',
													'".$terminaltype."','".$dongle."','".$provider."',STR_TO_DATE('".$datewr."','%Y%m%d'),
													'".$provider_sim."','".$produk_sam."',
													".$userID.",STR_TO_DATE('".$datewr."','%Y%m%d')";
													
										//echo $queryID."<br>";
										$resultID = mysql_query($queryID) or die(mysql_error());
													
										$idMapping = mysql_insert_id();
													
										if($resultID)
										{
											$queryLD = "insert into asset_log
														(idMapping,idStatus,remarks,logDT,logDT2,logBy,sn_edc,sn_sam,sn_sim,
														provider_sim,produk_sam)
														select ".$idMapping.",3,'Upload Data',now(),now(),".$userID.",'".$sn_edc."','".$sn_sam."','".$sn_sim."',
														'".$provider_sim."','".$produk_sam."'";
											$resultLD = mysql_query($queryLD);
										}
													
										if($resultID)
										{
											$sukses++;
										}
										else
										{
											$gagal++;
											$messageError = $messageError."Failed Process on Row ".$indexRow." |";
										}
									}
									
									$indexRow++;
								}
							?>
							<div class="col100 textBold marginBottom20">Successfully upload Data Mapping : <?php echo $sukses ?> data</div>
							<div class="col100 textBold marginBottom20 colorRed">Failed upload Data Mapping : <?php echo $gagal ?> data</div>
							
						<?php
							$stringError = explode("|",$messageError);
							foreach($stringError as $echoError)
							{
							?>
								<div class="colorRed fontSize09 textBold"><?php echo $echoError ?></div>
								<div class="margine05"></div>
							<?php
							}
						?>
						</div>
					</div>
				<?php
				}
			?>
				
				<div class="col100 floatLeft padding10 marginRight20 borderGray minHeight400">
				
				<?php
					if(1 > 0)
					{
					?>
						<div class="col98 marginAuto textBold marginTop5 marginBottom20 colorBlue2 borderBottomColorGrey2 textUpper paddingBottom5">
							Upload Data
						</div>
						
						<div class="col95 marginAuto padding2 borderColorGrey2 marginBottom20">
							<form name="form_1" action="uploadmaping.php" method="post" onsubmit="return validate_form1()" enctype="multipart/form-data">
							
								<div class="col20 floatLeft marginRight10 marginBottom10 marginTop5 textBold">Browse File</div>
								<div class="col40 floatLeft marginRight10 marginBottom10">
									<input type="file" name="fupload" class="textinputbasic fontSize09">
								</div>
								<div class="margine"></div>
								
								<div class="col20 floatLeft marginRight10 marginBottom10 marginTop5 textBold">Data Type</div>
								<div class="col20 floatLeft marginRight10 marginBottom10">
									<select name="type" class="selectinputbasic paddingTop5 paddingBottom5 fontSize085">
										<option value="Replace">Replace Mandiri</option>
										<option value="Replace Others">Replace Member Bank</option>
										<option value="Part">Part</option>
										<option value="Part Others">Part Member Bank</option>
										<option value="New Mandiri">New Akuisisi Mandiri</option>
										<option value="New Others">New Akuisisi Member Bank</option>
										<option value="Pameran">Pameran</option>
										<option value="migrasi">Migrasi</option>
									</select>
								</div>
								<div class="margine"></div>
								
								<?php
									//$queryLV = "select idVendor,vendor from vendor order by vendor";
									//$resultLV = mysql_query($queryLV);
								?>
								
								<!--<div class="col20 floatLeft marginRight10 marginBottom10 marginTop5 textBold">Vendor</div>
								<div class="col20 floatLeft marginRight10 marginBottom10">
									<select name="idVendor" class="selectinputbasic paddingTop5 paddingBottom5 fontSize085">
									<?php
										while($rowLV = mysql_fetch_array($resultLV))
										{
										?>
											<option value="<?php echo $rowLV['idVendor'] ?>"><?php echo $rowLV['vendor'] ?></option>
										<?php
										}
									?>
									</select>
								</div>
								
								<div class="margine"></div>-->
								
								<!--<div class="col20 floatLeft marginRight10 marginBottom10 marginTop5 textBold">Period</div>
								<div class="col20 floatLeft marginRight10 marginBottom10">
									<input type="text" name="date" id="date1" class="textinputbasic textCenter" value="<?php echo date("Y-m-d") ?>">
								</div>
								<div class="margine"></div>-->
								
								<div class="col100 floatLeft marginBottom10 marginTop20">
									<input type="submit" name="cmdUpload" value="Upload Data" class="styleButtonMiddle">
								</div>
								<div class="margine"></div>
							</form>
						</div>
						
					<?php
					}
				?>
				</div>
				
				<div class="margine"></div>
			</div>
			
			<div class="margine"></div>
		</div>
	</div>
	
<script src="js/chosen.jquery.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<link rel="stylesheet" href="css/chosen.css" />
<link rel="stylesheet" href="css/bootstrap-datepicker.standalone.css" />
	
<script type="text/javascript">
	$('.chosen-select').chosen({allow_single_deselect:true});
    $('#date1').datepicker({
			format: "yyyy-mm-dd",
			//endDate: "<?php echo date('d/m/Y') ?>",
			todayBtn: true,
			autoclose: true,
			todayHighlight: true
		});
	$('#date2').datepicker({
			format: "yyyy-mm-dd",
			//endDate: "<?php echo date('d/m/Y') ?>",
			todayBtn: true,
			autoclose: true,
			todayHighlight: true
		});
</script>
	
	
	<?php
		include('footer.php');
	?>
	</body>
</html>