<?php
	//session_start();
    include('connect_db.php');
	
	$data = json_decode(file_get_contents('php://input'), true);
	
	//Generate JSON array
	$respon = array();
	$hasil = array();
	
	$queryCD = "delete from apimapping";
	$resultCD = mysql_query($queryCD);
	//echo $queryCD."<br>";
	
	if(is_array($data))
	{
		foreach($data as $result)
		{
			$caseid = $result['caseid'];
			$mid = $result['mid'];
			$tid = $result['tid'];
			$midbri = $result['midbri'];
			$tidbri = $result['tidbri'];
			
			$midbtn = $result['midbtn'];
			$tidbtn = $result['tidbtn'];
			
			$midbni = $result['midbni'];
			$tidbni = $result['tidbni'];
			$middanamon = $result['middanamon'];
			$tiddanamon = $result['tiddanamon'];
			$midastrpay = $result['midastrpay'];
			$tidastrpay = $result['tidastrpay'];
			$midbsi = $result['midbsi'];
			$tidbsi = $result['tidbsi'];
			$tidreplace = $result['tidreplace'];
			
			$note = $result['note'];
			$merchantname = $result['merchantname'];
			$address = $result['address'];
			
			$city = $result['city'];
			$vendor = $result['vendor'];
			$vendorupdate = $result['vendorupdate'];
			
			$terminaltype = $result['terminaltype'];
			$dongle = $result['dongle'];
			$provider = $result['provider'];
			
			$receiptdatewr = $result['receiptdatewr'];
			$snedc = $result['snedc'];
			$snsam = $result['snsam'];
			
			$snsim = $result['snsim'];
			$wr = $result['wr'];
			$providersimbaru = $result['providersimbaru'];
			$produksambaru = $result['produksambaru'];
			$type = $result['type'];
			
			if($caseid <> "CASE ID" && $caseid <> "CASE" && $caseid <> "CASEID")
			{
				//echo "Case id : ".$caseid."<br>";
				//echo "TID : ".$tid."<br>";
				//echo "MID BRI : ".$midbri."<br>";
				
				$queryIE = "insert into apimapping
							(caseid,mid,tid,midbri,tidbri,midbtn,tidbtn,midbni,tidbni,
							middanamon,tiddanamon,midastrpay,tidastrpay,midbsi,tidbsi,tidreplace,
							note,merchantname,address,city,vendor,vendorupdate,terminaltype,dongle,
							provider,receiptdatewr,snedc,snsam,snsim,wr,providersimbaru,produksambaru,type)
							select '".$caseid."','".$mid."','".$tid."','".$midbri."','".$tidbri."','".$midbtn."','".$tidbtn."','".$midbni."','".$tidbni."',
							'".$middanamon."','".$tiddanamon."','".$midastrpay."','".$tidastrpay."','".$midbsi."','".$tidbsi."','".$tidreplace."',
							'".$note."','".$merchantname."','".$address."','".$city."','".$vendor."','".$vendorupdate."','".$terminaltype."','".$dongle."',
							'".$provider."','".$receiptdatewr."','".$snedc."','".$snsam."','".$snsim."','".$wr."','".$providersimbaru."','".$produksambaru."','".$type."'";
				$resultIE = mysql_query($queryIE);
				//echo $queryIE."<br>";
				
				
				//$type = "New Mandiri";
				
				/*$queryED = "insert into asset_mapping
							(uploadDT,uploadBy,type,caseID,mid,tid,tidreplace,mid_bri,tid_bri,
							mid_btn,tid_btn,mid_bni,tid_bni,mid_danamon,tid_danamon,mid_astrapay,tid_astrapay,mid_bsi,tid_bsi,
							note,merchant,address,city,
							vendor,vendorupdate,sn_edc,sn_sam,sn_sim,wr,
							idStatus,statusAsset,
							terminaltype,dongle,provider,datewr,
							provider_sim,produk_sam,
							updateBy,updateDT)
							select now(),0,'".$type."','".$caseID."','".$mid."','".$tid."','".$tidreplace."',
							'".$mid_bri."','".$tid_bri."','".$mid_btn."','".$tid_btn."','".$mid_bni."','".$tid_bni."','".$mid_danamon."','".$tid_danamon."',
							'".$mid_astrapay."','".$tid_astrapay."','".$mid_bsi."','".$tid_bsi."','".$note."','".$merchant."','".$address."','".$city."',
							'".$vendor."','".$vendorupdate."','".$sn_edc."','".$sn_sam."','".$sn_sim."','".$wr."',
							3,'Open Warehouse',
							'".$terminaltype."','".$dongle."','".$provider."',STR_TO_DATE('".$datewr."','%Y%m%d'),
							'".$provider_sim."','".$produksambaru."',
							".$userID.",STR_TO_DATE('".$datewr."','%Y%m%d')";";*/
			}
		}
		
		echo "Data has been proceed<br>";
	}
	else
	{
		echo "Array unrecognized<br>";
	}
	
?>
											
											
																				
                            
                                    
    
