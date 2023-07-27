<?php
	//session_start();
    //include('connect_db.php');
	//$userID = $_SESSION['userID'];
	
	//$url = "localhost:8080/mti/readtext/insertdata.php";
	//$url = "https://chamchix.com/mti/readtext/insertdata.php";
	$url = "https://operasionalmerchant.com/mapping/insertdata.php";
	
	$respon = array();
	$hasil = array();
	
	$data = "";
	
	$line_of_text = "";
	//$file = fopen("doc/test.txt", "r");
	$file = fopen("WR_OPEN_WAREHOUSE.txt", "r");
	$i = 0;
	while (!feof($file)) 
	{
		$line_of_text .= fgets($file);
	}
	
	$rows = explode("\n", $line_of_text);
	fclose($file);
	
	foreach($rows as $valueRow)
	{
		$valueRow = str_replace("\r","",$valueRow);
		$valueRow = str_replace('"','',$valueRow);
		
		set_time_limit(0);
		//echo $valueRow."<br>";
		
		//echo $valueRow."<br>";
		$content = explode("|", $valueRow);
		
		/*foreach($content as $valueContent)
		{
			echo $valueContent."<br>";
		}*/
		
		$hasil["caseid"] = $content[0];
		$hasil["mid"] = $content[1];
		$hasil["tid"] = $content[2];
		$hasil["midbri"] = $content[3];
		$hasil["tidbri"] = $content[4];
		$hasil["midbtn"] = $content[5];
		$hasil["tidbtn"] = $content[6];
		$hasil["midbni"] = $content[7];
		$hasil["tidbni"] = $content[8];
		$hasil["middanamon"] = $content[9];
		$hasil["tiddanamon"] = $content[10];
		$hasil["midastrpay"] = $content[11];
		$hasil["tidastrpay"] = $content[12];
		$hasil["midbsi"] = $content[13];
		$hasil["tidbsi"] = $content[14];
		$hasil["tidreplace"] = $content[15];
		
		$hasil["note"] = $content[16];
		$hasil["merchantname"] = $content[17];
		$hasil["address"] = $content[18];
		$hasil["city"] = $content[19];
		$hasil["vendor"] = $content[20];
		$hasil["vendorupdate"] = $content[21];
		$hasil["terminaltype"] = $content[22];
		$hasil["dongle"] = $content[23];
		$hasil["provider"] = $content[24];
		$hasil["receiptdatewr"] = $content[25];
		$hasil["snedc"] = $content[26];
		$hasil["snsam"] = $content[27];
		$hasil["snsim"] = $content[28];
		$hasil["wr"] = $content[29];
		$hasil["providersimbaru"] = $content[30];
		$hasil["produksambaru"] = $content[31];
		$hasil["type"] = $content[32];
		
		//print_r($hasil);
		
		array_push($respon, $hasil);
		$data = json_encode($respon);
	}
	
	//echo $data."<br>";
	
	//open connection
	$ch = curl_init();

	//set the url, number of POST vars, POST data
	curl_setopt($ch,CURLOPT_URL, $url);
	curl_setopt($ch,CURLOPT_POST, 1);
	//curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST"); 
	curl_setopt($ch,CURLOPT_POSTFIELDS, $data);
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

	//execute post
	$result = curl_exec($ch);

	//close connection
	curl_close($ch);
	
?>
											
											
																				
                            
                                    
    
