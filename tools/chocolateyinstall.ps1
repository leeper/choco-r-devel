$packageName= 'r-devel'
$url        = 'https://cran.r-project.org/bin/windows/base/R-devel-win.exe'
$silent     = '/VERYSILENT'

Install-ChocolateyPackage $packageName 'exe' $silent $url
