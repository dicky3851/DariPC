<?php
session_start();
include('header.php');
?>


<!--<link rel="stylesheet" type="text/css" href="css/MainDataTables.css"/>
<script type="text/javascript" src="js/jquery.dataTables.js"></script>-->

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
<link href="../library/bootstrap/css/background.css" rel="stylesheet">

				<link href="datatables/DataTables-1.10.16/css/dataTables.bootstrap.min.css" rel="stylesheet">
    			<link href="datatables/Buttons-1.5.1/css/buttons.bootstrap.min.css" rel="stylesheet">
            
				<script src="datatables/DataTables-1.10.16/js/jquery.dataTables.min.js" type="text/javascript"></script>
				<script src="datatables/DataTables-1.10.16/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
				<script src="datatables/Buttons-1.5.1/js/dataTables.buttons.min.js" type="text/javascript"></script>
				<script src="datatables/Buttons-1.5.1/js/buttons.bootstrap.min.js" type="text/javascript"></script>
				<script src="datatables/JSZip-2.5.0/jszip.min.js" type="text/javascript"></script>
				<!--<script src="datatables/pdfmake-0.1.32/pdfmake.min.js" type="text/javascript"></script>
				<script src="datatables/pdfmake-0.1.32/vfs_fonts.js" type="text/javascript"></script>-->
				<script src="datatables/Buttons-1.5.1/js/buttons.html5.min.js" type="text/javascript"></script>
				<script src="datatables/Buttons-1.5.1/js/buttons.print.min.js" type="text/javascript"></script>
				<script src="datatables/Buttons-1.5.1/js/buttons.colVis.min.js" type="text/javascript"></script>

    

<!--<script type="text/javascript">
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
</script>-->

<script>
	function validate_form1()
	{	
		if(document.form_1.investor.value.length == 0)
		{
			alert('Please input Investor Name');
			document.form_1.investor.focus();
			return false;
		}
		if(document.form_1.interest.value.length == 0 || document.form_1.interest.value == "0")
		{
			alert('Please input Interest Rate of Investor');
			document.form_1.{.focus();
				return false;
			}
			if(!IsNumeric(document.form_1.interest.value))
			{
				alert('Please input Interest Rate of Investor with numeric');
				document.form_1.interest.focus();
				return false;
			}
			if(document.form_1.email.value.length == 0)
			{
				alert('Please input Email Address of Investor');
				document.form_1.email.focus();
				return false;
			}
			if(!isValidEmail(document.form_1.email.value))
			{
				alert('Please input valid Email Address of Investor');
				document.form_1.email.focus();
				return false;
			}
			
			return true;
		}
		
		function validate_form1()
		{	
			if(document.form_2.fupload.value.length == 0)
			{
				alert('Please browse file excel upload');
				document.form_2.fupload.focus();
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
	
	<?php
	if(isset($_POST['cmdSubmit']))
	{
		// $date1 = $_POST['date1'];
		// $date2 = $_POST['date2'];
		// $field = $_POST['field'];
		$_SESSION['date1'] = $_POST['date1'];
		$_SESSION['date2'] = $_POST['date2'];
		$_SESSION['field'] = $_POST['field'];
	}
	// elseif(!isset($_POST['cmdSubmit']))
	// {
	// 	// $date1 = date('Y')."-".date('m')."-01";
	// 	// $date2 = date('Y-m-d');
	// 	// $field = "";
	// 	$_SESSION['date1'] = $_POST['date1'];
	// 	$_SESSION['date2'] = $_POST['date2'];
	// 	$_SESSION['field'] = $_POST['field'];
	// }
	?>
	
	<div class="basicFrame backgroundGray">
		<div class="col100 marginAuto textBold marginTop5 marginBottom20 colorBlue2 borderBottomColorGrey2 textUpper paddingBottom5 fontSize11">
			List Data PM
		</div>
		
		<?php
		if(isset($_POST['cmdUpload']))
		{
			$sukses = 0;
			$gagal = 0;
			
			$data = new Spreadsheet_Excel_Reader($_FILES['fupload']['tmp_name']);
			$baris = $data->rowcount($sheet_index=0);
			
			?>
			<div class="col100 backgroundWhite padding15 marginBottom10">
				<div class="col100 marginAuto textBold marginTop5 marginBottom20 colorBlue2 borderBottomColorGrey2 textUpper paddingBottom5">
					Result Process
				</div>
				
				<div class="col100 marginTop20">
					<?php
					for ($i=2; $i<=$baris; $i++)
					{
						$idPm = $data->val($i,1);
						$sts_kunjungan = $data->val($i,8);
						$kategori = $data->val($i,9);
						$sub_kategori = $data->val($i,10);
						$pic_nama = $data->val($i,11);
						$pic_tlp = $data->val($i,12);
						$paper_roll = $data->val($i,13);
						$edc_banklain = $data->val($i,14);
						$tgl_kunjungan = $data->val($i,15);
						$remark = $data->val($i,16);
			
						$sts_kunjungan = strtoupper(str_replace("'","",$sts_kunjungan));
						$kategori = strtoupper(str_replace("'","",$kategori));
						$sub_kategori = strtoupper(str_replace("'","",$sub_kategori));
						$pic_nama = strtoupper(str_replace("'","",$pic_nama));
						$pic_tlp = strtoupper(str_replace("'","",$pic_tlp));
						$paper_roll = strtoupper(str_replace("'","",$paper_roll));
						$edc_banklain = strtoupper(str_replace("'","",$edc_banklain));
						$tgl_kunjungan = strtoupper(str_replace("'","",$tgl_kunjungan));
						$remark = strtoupper(str_replace("'","",$remark));
								//Exce here
						$queryEM = "update data_pm
						set	sts_kunjungan =  '".$sts_kunjungan."',
						kategori = '".$kategori."',
						sub_kategori = '".$sub_kategori."',
						pic_nama = '".$pic_nama."',
						pic_tlp = '".$pic_tlp."',
						remark = '".$remark."',
						paper_roll = '".$paper_roll."',
						edc_banklain = '".$edc_banklain."',
						tgl_kunjungan = '".$tgl_kunjungan."',
						updateDT = now(),
						idStatus = 5,
						updateBy = '".$userID."'
						where idPm = ".$idPm;
						$resultEM = mysql_query($queryEM);
						//echo $queryEM."<br>";
						
						if($resultEM)
						{
							$queryUS = "insert into asset_log
							(idPm,idStatus,remarks,logDT,logDT2,logBy)
							select ".$idPm.",5,'".$remark."',now(),now(),".$userID."";;
							$resultUS = mysql_query($queryUS);
							
							if($resultUS)
							{
								$sukses++;
							}
							else
							{
								$gagal++;
							}
						}
						else
						{
							$gagal++;
						}
					}
					?>
					<div class="col100 textBold marginBottom10">Successfully upload <?php echo $sukses ?> data</div>
					<div class="col100 textBold colorRed marginBottom10">Failed upload <?php echo $gagal ?> data</div>
				</div>
			</div>
			<?php
			
		}
		?>

		

			<div class="col100 backgroundWhite padding15 marginBottom10">
				<div class="col100 marginAuto textBold marginTop5 marginBottom20 colorBlue2 borderBottomColorGrey2 textUpper paddingBottom5">
					Inquiry Parameter
				</div>

				<div class="col100 marginTop20">
					<form name="form_2" action="listdata.php" method="post" onsubmit="return validate_form1()">

						<div class="col15 floatLeft textBold paddingTop5 marginBottom10">Receipt Date WR</div>
						<div class="col15 floatLeft paddingRight20 fontSize09">
							<input type="text" name="date1" id="date1" class="textinputbasic textCenter" value="<?php echo $_SESSION['date1'] ?>">
						</div>
						<div class="col15 floatLeft paddingRight20 fontSize09">
							<input type="text" name="date2" id="date2" class="textinputbasic textCenter" value="<?php echo $_SESSION['date2'] ?>">
						</div>
						<div class="margine10b"></div>

						<div class="col15 floatLeft textBold paddingTop5 marginBottom10">Other Data</div>
						<div class="col40 floatLeft paddingRight20 fontSize09">
							<input type="text" name="field" class="textinputbasic" value="<?php echo $_SESSION['field'] ?>" placeholder="MID or TID or Case ID or WR ID or Merchant">
						</div>
						<div class="margine10b"></div>

						<div class="col15">
							<input type="submit" name="cmdSubmit" value="View Data" class="styleButtonMiddle">
						</div>

						<div class="margine2"></div>
					</form>

				</div>
			</div>

			<div class="col100 backgroundWhite padding15 marginBottom10">
				<div class="col100 marginAuto textBold marginTop5 marginBottom20 colorBlue2 borderBottomColorGrey2 textUpper paddingBottom5">
					Upload Data PM
				</div>

				<div class="col98 marginAuto padding2 borderColorGrey2 marginBottom20">
					<div class="col100 floatLeft textBold linkClick9 colorBlue" onclick="window.open('excelow.php<?php echo "?idVendorC=".$idVendorC ?>','_blank')">Click disini untuk download excel upload Belum terkunjungi</div>

					<div class="margine"></div>
				</div>

				<div class="col98 marginAuto padding2 borderColorGrey2 marginBottom20">
					<form name="form_2" action="listdata.php" method="post" onsubmit="return validate_form2()" enctype="multipart/form-data">

						<div class="col20 floatLeft marginRight10 marginBottom10 marginTop5 textBold">Browse File</div>
						<div class="col40 floatLeft marginRight10 marginBottom10">
							<input type="file" name="fupload" class="textinputbasic fontSize09">
						</div>
						<div class="margine"></div>

						<div class="col100 floatLeft marginBottom10 marginTop20">
							<input type="submit" name="cmdUpload" value="Upload Data" class="styleButtonMiddle">
						</div>
						<div class="margine"></div>
					</form>
				</div>
			</div>
		
										<?php
										if(1 > 0)
										{
											?>
											<div class="col100 backgroundWhite padding15">
												<div class="col98 marginAuto marginBottom20 borderBottomColorGrey2 paddingBottom10">
													<div class="floatLeft col50 marginAuto textBold marginTop5 colorBlue2 textUpper paddingBottom5">
														List Data PM
													</div>

													<div class="floatRight marginRight20 textRight">
														<img src="images/excel-icon.png" class="imgExport" onclick="window.open('excelmapping.php<?php echo "?date1=".$_SESSION['date1']."&date2=".$_SESSION['date2']."&type=Belum Terkunjungi&field=".$_SESSION['field']."&idVendorC=".$idVendorC ?>','_blank')">
													</div>

													<div class="margine"></div>
												</div>

												<?php
												$queryD = "select idPm,MID,TID,feature,mrchnt_name,mrchnt_official,mrchnt_addr,LOB,city,region,vendor,
												install_date,edc_status,mrchnt_type,mbr_bank,segment,sn_edc,provider,sim_sno,conn_type,aom,
												sts_kunjungan,tgl_kunjungan,kategori,sub_kategori,remark,pic_nama,pic_tlp,test_trx,tgl_test,
												paper_roll,edc_banklain,bln_pm
												from data_pm a
												INNER JOIN asset_status b ON a.idStatus = b.idStatus
												where 1 > 0 and a.idStatus IN('3')";

												
												if(!empty($_SESSION['date1']) && $_SESSION['date1'] <> "" && !empty($_SESSION['date2']) && $_SESSION['date2'] <> "")
												{
													$queryD = $queryD." and updateDT between '".$_SESSION['date1']."' and '".$_SESSION['date2']."'";
												}
												
												if($idVendorC <> 0)
												{
													$queryD = $queryD." and vendor = '".$vendorName."'";
												}
												
												if(!empty($_SESSION['field']) || $_SESSION['field'] <> "")
												{
													$queryD = $queryD." and (mid like '%".$_SESSION['field']."%' or tid like '%".$_SESSION['field']."%' or caseID like '%".$_SESSION['field']."%' or wr like '%".$_SESSION['field']."%'
																		or merchant like '%".$_SESSION['field']."%')";
												}

												$batas = 10;
												$halaman = isset($_GET['halaman'])?(int)$_GET['halaman'] : 1;
												$halaman_awal = ($halaman>1) ? ($halaman * $batas) - $batas : 0;	
								
												$previous = $halaman - 1;
												$next = $halaman + 1;
												
												$data =  mysql_query($queryD) or die(mysql_error());
												$jumlah_data =  mysql_num_rows($data);
												$total_halaman = ceil($jumlah_data / $batas);

												$queryD = $queryD." order by idPm ASC limit $halaman_awal, $batas";
												$resultD = mysql_query($queryD) or die(mysql_error());
												$nomor = $halaman_awal+1;
												$numrowD = mysql_num_rows($resultD);
												//echo $queryD."<br>";
												$no = 1;

												echo '<div id="numrows" class="colorBlue2" style="float: right;margin-right: 131px;margin-top: -45px;">Show Data '.$numrowD.' data</div>'
												?>
												<div class="table-responsive">
												<table class="table table-striped table-bordered">
												<thead>
														<tr>
															<th class="content textCenter">MID</th>
															<th class="content textCenter">TID</th>
															<th class="content textCenter">Feature</th>
															<th class="content textCenter">Merchant Name</th>
															<th class="content textCenter">Merchant Address</th>
															<th class="content textCenter">City</th>
															<th class="content textCenter">Vendor</th>
															<th class="content textCenter">Status Kunjungan</th>
															<th class="content textCenter">Tanggal Kunjungan</th>
															<th class="content textCenter">Bulan  Kunjungan</th>
															</tr>
															</thead> 
															<tbody>
														<?php
														while($rowD = mysql_fetch_array($resultD))
														{
															$idPm = $rowD['idPm'];
															?>
															<tr>
																<td class="viewData fontSize085 textCenter linkClick colorBlue" onclick="window.open('datadetail.php<?php echo "?idPm=".$idPm ?>','_blank')">
																	<?php echo $rowD['MID'] ?>
																</td>
																<td class="viewData fontSize085 textCenter"><?php echo $rowD['TID'] ?></td>
																<td class="viewData fontSize085 textCenter"><?php echo $rowD['feature'] ?></td>
																<td class="viewData fontSize085 textCenter"><?php echo $rowD['mrchnt_name'] ?></td>
																<td class="viewData fontSize085"><?php echo $rowD['mrchnt_addr'] ?></td>
																<td class="viewData fontSize085 textCenter"><?php echo $rowD['city'] ?></td>
																<td class="viewData fontSize085 textCenter"><?php echo $rowD['vendor'] ?></td>
																<td class="viewData fontSize085 textCenter"><?php echo $rowD['sts_kunjungan'] ?></td>
																<td class="viewData fontSize085"><?php echo $rowD['tgl_kunjungan'] ?></td>
																<td class="viewData fontSize085 textCenter"><?php echo $rowD['bln_pm'] ?></td>
																</tr>
																<?php
																$no++;
																}
																?> 
																</tbody>
															</table>
															<nav>
																<ul class="pagination justify-content-center">
																	<li class="page-item">
																		<a class="page-link" <?php if($halaman > 1){ echo "href='?halaman=$previous'"; } ?>>Previous</a>
																	</li>
																	<?php 
																	if ($total_halaman >= 10) {
																		for($x=1;$x<=10;$x++){
																			?> 
																			<li class="page-item"><a class="page-link" href="?halaman=<?php echo $x ?>"><?php echo $x; ?></a></li>
																			<?php
																		}
																	} else {
																		for($x=1;$x<=$total_halaman;$x++){
																			?> 
																			<li class="page-item"><a class="page-link" href="?halaman=<?php echo $x ?>"><?php echo $x; ?></a></li>
																			<?php
																		}
																	}
																	
																	?>				
																	<li class="page-item">
																		<a  class="page-link" <?php if($halaman < $total_halaman) { echo "href='?halaman=$next'"; } ?>>Next</a>
																	</li>
																	<li class="page-item">
																		<a  class="page-link" <?php echo "href='?halaman=$total_halaman'"; ?>>Last</a>
																	</li>
																</ul>
															</nav>
														</div>			
												<?php
											}
											?>
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
										$('#date3').datepicker({
											format: "yyyy-mm-dd",
			//endDate: "<?php echo date('d/m/Y') ?>",
			todayBtn: true,
			autoclose: true,
			todayHighlight: true
		});
										$('#date4').datepicker({
											format: "yyyy-mm-dd",
			//endDate: "<?php echo date('d/m/Y') ?>",
			todayBtn: true,
			autoclose: true,
			todayHighlight: true
		});
										$('#date5').datepicker({
											format: "yyyy-mm-dd",
			//endDate: "<?php echo date('d/m/Y') ?>",
			todayBtn: true,
			autoclose: true,
			todayHighlight: true
		});
										$('#date6').datepicker({
											format: "yyyy-mm-dd",
			//endDate: "<?php echo date('d/m/Y') ?>",
			todayBtn: true,
			autoclose: true,
			todayHighlight: true
		});
	</script>
	
	<script>
    $(document).ready(function() {
    var table = $('#employeeList').DataTable( {
        lengthChange: false,
		searching : false
    } );

    table.buttons().container()
        .appendTo( '#employeeList_wrapper .col-sm-6:eq(0)' );
} );
</script>
	<?php
	include('footer.php');
	?>
</body>
</html>