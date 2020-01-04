﻿$packageName = 'tigervnc'
$installerType = 'exe'
$url32 = 'https://bintray.com/tigervnc/stable/download_file?file_path=tigervnc-1.10.1.exe'
$url64 = 'https://bintray.com/tigervnc/stable/download_file?file_path=tigervnc64-1.10.1.exe'
$checksum32 = '0d9e7666d3ead261be6b483e1e01392e7764309703da818055705c5296f279f31708375f6321e2285c65a40247092a390a0e0b1fa14910990037cec24e79265c'
$checksum64 = '9c60d02be8a49ea05b8df482d45f9a12d6c6716896b893e643ce38aba3dc2127f029ba2659394f3b628e6a2cd3ae9e7b2b2d95c246595dfc583c3f54bb4c24d0'
$checksumType = 'sha512'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)

Install-ChocolateyPackage $packageName $installerType $silentArgs $url32 `
    $url64 -ValidExitCodes $validExitCodes -Checksum $checksum32 `
    -ChecksumType $checksumType -Checksum64 $checksum64 `
    -ChecksumType64 $checksumType
