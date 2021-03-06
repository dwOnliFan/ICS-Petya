clear

$DownloadDirectory = "c:\temp\downloads"

new-item $DownloadDirectory -ItemType Directory -Force -ErrorAction:SilentlyContinue

$URIList = @(
"http://download.windowsupdate.com/d/csa/csa/secu/2017/02/windowsxp-kb4012598-x86-custom-enu_eceb7d5023bbb23c0dc633e46b9c2f14fa6ee9dd.exe",
"http://download.windowsupdate.com/c/csa/csa/secu/2017/02/windowsserver2003-kb4012598-x86-custom-enu_f617caf6e7ee6f43abe4b386cb1d26b3318693cf.exe",
"http://download.windowsupdate.com/c/msdownload/update/software/secu/2017/05/windows8-rt-kb4012598-x86_a0f1c953a24dd042acc540c59b339f55fb18f594.msu",
"http://download.windowsupdate.com/d/csa/csa/secu/2017/02/windowsserver2003-kb4012598-x64-custom-enu_f24d8723f246145524b9030e4752c96430981211.exe",
"http://download.windowsupdate.com/d/csa/csa/secu/2017/02/windowsserver2003-kb4012598-x64-custom-enu_f24d8723f246145524b9030e4752c96430981211.exe",
"http://download.windowsupdate.com/c/msdownload/update/software/secu/2017/05/windows8-rt-kb4012598-x64_f05841d2e94197c2dca4457f1b895e8f632b7f8e.msu",
"http://download.windowsupdate.com/c/csa/csa/secu/2017/02/windowsxp-kb4012598-x86-embedded-custom-enu_8f2c266f83a7e1b100ddb9acd4a6a3ab5ecd4059.exe",
"http://download.windowsupdate.com/d/msdownload/update/software/secu/2017/02/windowsxp-kb4012598-x86-embedded-enu_9515c11bc77e39695b83cb6f0e41119387580e30.exe",
"http://download.windowsupdate.com/d/msdownload/update/software/secu/2017/02/windows6.0-kb4012598-ia64_83a6f5a70588b27623b11c42f1c8124a25d489de.msu",
"http://download.windowsupdate.com/d/msdownload/update/software/secu/2017/02/windows6.0-kb4012598-x86_13e9b3d77ba5599764c296075a796c16a85c745c.msu",
"http://download.windowsupdate.com/d/msdownload/update/software/secu/2017/02/windows6.0-kb4012598-x64_6a186ba2b2b98b2144b50f88baf33a5fa53b5d76.msu",
"http://download.windowsupdate.com/d/msdownload/update/software/secu/2017/02/windows6.1-kb4012212-x64_2decefaa02e2058dcd965702509a992d8c4e92b3.msu",
"http://download.windowsupdate.com/d/msdownload/update/software/secu/2017/02/windows6.1-kb4012212-x86_6bb04d3971bb58ae4bac44219e7169812914df3f.msu",
"http://download.windowsupdate.com/d/msdownload/update/software/secu/2017/02/windows6.1-kb4012212-x64_2decefaa02e2058dcd965702509a992d8c4e92b3.msu",
"http://download.windowsupdate.com/c/msdownload/update/software/secu/2017/02/windows6.1-kb4012212-ia64_93a42b16dbea87fa04e2b527676a499f9fbba554.msu"
)

$wc = New-Object System.Net.WebClient

foreach($uri in $URIList)
{
	$urisections = $uri.split("/")
	$filename = $DownloadDirectory + "\" + $urisections[$urisections.Length -1]
	Write-Host "Downloading $filename to $DownloadDirectory"
	$wc.DownloadFile($uri,$filename)
}