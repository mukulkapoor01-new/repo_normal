if ($env:AddedFilesInPR -match ".gitmodules")
{ echo "submodule was added"
foreach($i in $env:AddedFilesInPR) {
echo $i 
}}
else {
echo "no submodule added"
}
