#!/usr/bin/bash
#Business Central Container - Basisskript
# Windows PowerShell 5.1 als Administrator ausführen
Import-Module BcContainerHelper
$containerName = "MyContainer2"
$country       = "de"
$bcType        = "Sandbox"
$bcVersion     = "28"   # Beispiel: gewünschte Haupt-/Minor-Version eintragen
$credential = Get-Credential
$artifactUrl = Get-BcArtifactUrl `
    -Type $bcType `
    -Country $country `
    -Version $bcVersion `
    -Select Latest
if (-not $artifactUrl) {
    throw "Kein passendes Business-Central-Artifact gefunden."
}
Write-Host "Verwendetes Artifact:"
Write-Host $artifactUrl
New-BcContainer `
    -accept_eula `
    -containerName $containerName `
    -artifactUrl $artifactUrl `
    -credential $credential `
    -auth UserPassword `
    -updateHosts
Write-Host ""
Write-Host "Containerstatus:"
docker ps --filter "name=$containerName"
