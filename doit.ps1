$jobs = @()

$j = {
	param($write_dir)

	@'
# Windows Embedded Standard 7 Service Pack 1 Evaluation Edition
# http://www.microsoft.com/en-us/download/details.aspx?id=11887
http://download.microsoft.com/download/1/B/5/1B5FDE63-DA91-4A22-A320-91E002DE1326/Standard_7SP1_64bit/Standard%207%20SP1%2064bit%20IBW.part1.exe
http://download.microsoft.com/download/1/B/5/1B5FDE63-DA91-4A22-A320-91E002DE1326/Standard_7SP1_64bit/Standard%207%20SP1%2064bit%20IBW.part2.rar
http://download.microsoft.com/download/1/B/5/1B5FDE63-DA91-4A22-A320-91E002DE1326/Standard_7SP1_64bit/Standard%207%20SP1%2064bit%20IBW.part3.rar
http://download.microsoft.com/download/1/B/5/1B5FDE63-DA91-4A22-A320-91E002DE1326/Standard_7SP1_64bit/Standard%207%20SP1%2064bit%20IBW.part4.rar
http://download.microsoft.com/download/1/B/5/1B5FDE63-DA91-4A22-A320-91E002DE1326/Standard_7SP1_64bit/Standard%207%20SP1%2064bit%20IBW.part5.rar
http://download.microsoft.com/download/1/B/5/1B5FDE63-DA91-4A22-A320-91E002DE1326/Standard_7SP1_64bit/Standard%207%20SP1%2064bit%20IBW.part6.rar
http://download.microsoft.com/download/1/B/5/1B5FDE63-DA91-4A22-A320-91E002DE1326/Standard_7SP1_64bit/Standard%207%20SP1%2064bit%20IBW.part7.rar
'@ | Out-File -encoding ASCII "$write_dir\urls_ws7e_64bit.txt"

	$exe="$write_dir\wget.exe"
	&$exe --quiet --no-check-certificate --timestamping --limit-rate=2m `
	  --directory-prefix=$write_dir --input-file="$write_dir\urls_ws7e_64bit.txt"
	$exe="$write_dir\Standard 7 SP1 64bit IBW.part1.exe"
	&$exe -s -d .
	$exe="$write_dir\7za.exe"
	&$exe x -o"Standard 7 SP1 64bit IBW" "Standard 7 SP1 64bit IBW.iso"
}

$jobs += $j

# Windows Embedded Standard 7 Service Pack 1 Evaluation Edition
$j = {
	param($write_dir)

	@'
# Windows Embedded Standard 7 Service Pack 1 Evaluation Edition
# http://www.microsoft.com/en-us/download/details.aspx?id=11887
http://download.microsoft.com/download/1/B/5/1B5FDE63-DA91-4A22-A320-91E002DE1326/Standard_7SP1_Toolkit/Standard%207%20SP1%20Toolkit.part01.exe
http://download.microsoft.com/download/1/B/5/1B5FDE63-DA91-4A22-A320-91E002DE1326/Standard_7SP1_Toolkit/Standard%207%20SP1%20Toolkit.part02.rar
http://download.microsoft.com/download/1/B/5/1B5FDE63-DA91-4A22-A320-91E002DE1326/Standard_7SP1_Toolkit/Standard%207%20SP1%20Toolkit.part03.rar
http://download.microsoft.com/download/1/B/5/1B5FDE63-DA91-4A22-A320-91E002DE1326/Standard_7SP1_Toolkit/Standard%207%20SP1%20Toolkit.part04.rar
http://download.microsoft.com/download/1/B/5/1B5FDE63-DA91-4A22-A320-91E002DE1326/Standard_7SP1_Toolkit/Standard%207%20SP1%20Toolkit.part05.rar
http://download.microsoft.com/download/1/B/5/1B5FDE63-DA91-4A22-A320-91E002DE1326/Standard_7SP1_Toolkit/Standard%207%20SP1%20Toolkit.part06.rar
http://download.microsoft.com/download/1/B/5/1B5FDE63-DA91-4A22-A320-91E002DE1326/Standard_7SP1_Toolkit/Standard%207%20SP1%20Toolkit.part07.rar
http://download.microsoft.com/download/1/B/5/1B5FDE63-DA91-4A22-A320-91E002DE1326/Standard_7SP1_Toolkit/Standard%207%20SP1%20Toolkit.part08.rar
'@ | Out-File -encoding ASCII "$write_dir\urls_ws7e_toolkit.txt"

	$exe="$write_dir\wget.exe"
	&$exe --quiet --no-check-certificate --timestamping --limit-rate=2m `
	  --directory-prefix=$write_dir --input-file="$write_dir\urls_ws7e_toolkit.txt"
	$exe="$write_dir\Standard 7 SP1 Toolkit.part01.exe"
	&$exe -s -d .
	$exe="$write_dir\7za.exe"
	&$exe x -o"Standard 7 SP1 Toolkit" "Standard 7 SP1 Toolkit.iso"
}

$jobs += $j

# Windows Assessment and Deployment Kit (Windows ADK) for Windows 10
# http://msdn.microsoft.com/en-us/library/windows/hardware/hh825494.aspx#InstallingNonNetworked
$j = {
	param($write_dir)

	@'
# Windows Assessment and Deployment Kit (Windows ADK) for Windows 10
http://download.microsoft.com/download/9/A/E/9AE69DD5-BA93-44E0-864E-180F5E700AB4/adk/adksetup.exe
'@ | Out-File -encoding ASCII "$write_dir\urls_adk.txt"

	$exe="$write_dir\wget.exe"
	&$exe --quiet --no-check-certificate --timestamping --limit-rate=2m `
	  --directory-prefix=$write_dir --input-file="$write_dir\urls_adk.txt"
	$exe="$write_dir\adksetup.exe"
	&$exe /quiet /installpath /features +
	&$exe /ceip on /log adksetup.log /quiet /features +
}

$jobs += $j

# Microsoft deployment toolkit
$j = {
	param($write_dir)

	@'
http://download.microsoft.com/download/B/F/5/BF5DF779-ED74-4BEC-A07E-9EB25694C6BB/Whats%20New%20in%20MDT%202013%20Guide.docx
http://download.microsoft.com/download/B/F/5/BF5DF779-ED74-4BEC-A07E-9EB25694C6BB/MDT%202013%20Documentation.zip
http://download.microsoft.com/download/B/F/5/BF5DF779-ED74-4BEC-A07E-9EB25694C6BB/MDT%202013%20Release%20Notes.docx
https://download.microsoft.com/download/3/3/9/339BE62D-B4B8-4956-B58D-73C4685FC492/MicrosoftDeploymentToolkit_x64.msi
https://download.microsoft.com/download/3/3/9/339BE62D-B4B8-4956-B58D-73C4685FC492/MicrosoftDeploymentToolkit_x86.msi
'@ | Out-File -encoding ASCII "$write_dir\urls_mdt.txt"

	$exe="$write_dir\wget.exe"
	&$exe --quiet --no-check-certificate --timestamping --limit-rate=2m `
	  --directory-prefix=$write_dir --input-file="$write_dir\urls_mdt.txt"
	$exe="$write_dir\7za.exe"
	&$exe x -y -o. "MDT 2013 Documentation.zip"
}

$jobs += $j

# customized wedu installer wedu_defaults_install_v1.2.exe
# FIXME: replace this nsis nonsense with powershell
$j = {
	param($write_dir)

	@'
http://installer-bin.streambox.com/wedu_defaults_install_v1.2.exe
'@ | Out-File -encoding ASCII "$write_dir\urls_wedu.txt"

	$exe="$write_dir\wget.exe"
	&$exe --quiet --no-check-certificate --timestamping --limit-rate=2m `
	  --directory-prefix=$write_dir --input-file="$write_dir\urls_wedu.txt"
}

$jobs += $j

$j = {
	param($write_dir)

	@'
http://taylors-bucket.s3.amazonaws.com/win7_pro_oem.iso
'@ | Out-File -encoding ASCII "$write_dir\urls_win7pro.txt"

	$exe="$write_dir\wget.exe"
	&$exe --quiet --no-check-certificate --timestamping --limit-rate=2m `
	  --directory-prefix=$write_dir --input-file="$write_dir\urls_win7pro.txt"
}

$jobs += $j

$j = {
	param($write_dir)

	@'
http://taylors-bucket.s3.amazonaws.com/WS7P_2013-12-09-1641.wim
http://taylors-bucket.s3.amazonaws.com/WS7P_2014-01-01-1045.wim
http://taylors-bucket.s3.amazonaws.com/mdt.7z
'@ | Out-File -encoding ASCII "$write_dir\urls_mdt_taylor_made.txt"

	$exe="$write_dir\wget.exe"
	&$exe --quiet --no-check-certificate --timestamping --limit-rate=2m `
	  --directory-prefix=$write_dir --input-file="$write_dir\urls_mdt_taylor_made.txt"
}

$jobs += $j

# Windows Embedded Standard 7 Service Pack 1 Evaluation Edition
$j = {
	param($write_dir)

	@'
# Windows Embedded Standard 7 Service Pack 1 Evaluation Edition
# http://www.microsoft.com/en-us/download/details.aspx?id=11887
http://download.microsoft.com/download/1/B/5/1B5FDE63-DA91-4A22-A320-91E002DE1326/Standard_7SP1_32bit/Standard%207%20SP1%2032bit%20IBW.part1.exe
http://download.microsoft.com/download/1/B/5/1B5FDE63-DA91-4A22-A320-91E002DE1326/Standard_7SP1_32bit/Standard%207%20SP1%2032bit%20IBW.part2.rar
http://download.microsoft.com/download/1/B/5/1B5FDE63-DA91-4A22-A320-91E002DE1326/Standard_7SP1_32bit/Standard%207%20SP1%2032bit%20IBW.part3.rar
http://download.microsoft.com/download/1/B/5/1B5FDE63-DA91-4A22-A320-91E002DE1326/Standard_7SP1_32bit/Standard%207%20SP1%2032bit%20IBW.part4.rar
http://download.microsoft.com/download/1/B/5/1B5FDE63-DA91-4A22-A320-91E002DE1326/Standard_7SP1_32bit/Standard%207%20SP1%2032bit%20IBW.part5.rar
'@ | Out-File -encoding ASCII "$write_dir\urls_ws7e.txt"

	$exe="$write_dir\wget.exe"
	&$exe --quiet --no-check-certificate --timestamping --limit-rate=2m `
	  --directory-prefix=$write_dir --input-file="$write_dir\urls_ws7e.txt"
	$exe="$write_dir\Standard 7 SP1 32bit IBW.part1.exe"
	&$exe -s -d .
	$exe="$write_dir\7za.exe"
	&$exe x -o"Standard 7 SP1 32bit IBW" "Standard 7 SP1 32bit IBW.iso"
}

$jobs += $j


if(!(test-path wget.exe)){
	(new-object System.Net.WebClient).DownloadFile('http://installer-bin.streambox.com/wget.exe','wget.exe')
}

./wget --quiet --timestamping --no-check-certificate --limit-rate=2m `
  --directory-prefix=. http://installer-bin.streambox.com/7za.exe








$script_dir_base = Split-Path -Parent $MyInvocation.MyCommand.Path
foreach($job in $jobs)
{
	Start-Job $job -Arg $script_dir_base
}
