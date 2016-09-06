﻿$packageName = 'find-and-run-robot.portable'
$url = 'http://www.donationcoder.com/Software/Mouser/findrun/downloads/FindAndRunRobotPortable.zip'
$checksum = '1b2e460710aaaefebaa56ffa922e7b428300fa3a'
$checksumType = 'sha1'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$processName = 'FindAndRunRobot'

Stop-Process -Name $processName -ErrorAction SilentlyContinue

Install-ChocolateyZipPackage $packageName $url $unzipLocation -Checksum $checksum -ChecksumType $checksumType

New-Item -Path $unzipLocation -Name ($processName + '.exe.gui') -ItemType file
