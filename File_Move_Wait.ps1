##########################################################################################
$source1 = "D:\Temp1"
$destination1 = "D:\Temp"
$filecount1 = "2"
$waitinterval1 = "20"

##########################################################################################
do {
$1 = Get-ChildItem -Path $source1
$2 = $1 | select -First $filecount1
$2|%{
$f = $_.fullname
$f1 = $_.name
write-host 'Moved File: ' $f1  -foregroundcolor white -backgroundcolor green
Move-Item -Path $f -Destination $destination1
}
Write-host "Waiting for next iteration" -foregroundcolor white -backgroundcolor red
Start-Sleep -Seconds $waitinterval1
}
while 
($1.count -gt 0)

##########################################################################################