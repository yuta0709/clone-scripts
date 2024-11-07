$SourceFolder = $args[0]

$param1 = Read-Host "--multi-thread-streams"
$param2 = Read-Host "--transfers"
$param3 = Read-Host "--bwlimit"

Write-Host "--multi-thread-streams: $param1"
Write-Host "--transfers: $param2"
Write-Host "--bwlimit: $param3"

$uploadFolder = "mega:${param1}-${param2}-${param3}/"

rclone copy "$SourceFolder" "$uploadFolder" --progress --multi-thread-streams "$param1" --transfers "$param2" --bwlimit "$param3"
