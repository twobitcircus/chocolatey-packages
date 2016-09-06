﻿$packageName = 'find-and-run-robot.install'
$installerType = 'exe'
$url = 'http://www.donationcoder.com/Software/Mouser/findrun/downloads/FindAndRunRobotSetup.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)
$checksum = 'dad0038ed8b3d9a024f20a1fa2e3a42facee1033'
$checksumType = 'sha1'

Install-ChocolateyPackage $packageName $installerType $silentArgs $url `
    -validExitCodes $validExitCodes -Checksum $checksum -ChecksumType $checksumType
