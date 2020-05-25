```php
// create curl resource
$ch = curl_init();

// set url
curl_setopt($ch, CURLOPT_URL, "example.com");

//return the transfer as a string
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
//enable headers
curl_setopt($ch, CURLOPT_HEADER, 1);
//get only headers
curl_setopt($ch, CURLOPT_NOBODY, 1);
// $output contains the output string
$output = curl_exec($ch);

// close curl resource to free up system resources
curl_close($ch);

$headers = [];
$output = rtrim($output);
$data = explode("\n",$output);
$headers['status'] = $data[0];
array_shift($data);

foreach($data as $part){

    //some headers will contain ":" character (Location for example), and the part after ":" will be lost, Thanks to @Emanuele
    $middle = explode(":",$part,2);

    //Supress warning message if $middle[1] does not exist, Thanks to @crayons
    if ( !isset($middle[1]) ) { $middle[1] = null; }

    $headers[trim($middle[0])] = trim($middle[1]);
}

// Print all headers as array
echo "<pre>";
print_r($headers);
echo "</pre>";
```

Optional

```php
curl_setopt($curl_exec, CURLOPT_HEADER, true); 
curl_setopt($curl_exec, CURLOPT_NOBODY, true);
```