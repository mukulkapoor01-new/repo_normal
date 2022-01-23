if ($env:AddedFilesInPR -match ".gitmodules")
{ echo "submodule was added"
$a = git submodule status
$a | foreach-object {
$_.split(" ")[1]
}}
else {
echo "no submodule added"
}
