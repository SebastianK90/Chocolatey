﻿$packageName = 'dexpot'
$installerType = 'EXE'
$url = 'http://dexpot.de/download/dexpot_1614_r2439.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

try {
	Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes
	Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw	
}