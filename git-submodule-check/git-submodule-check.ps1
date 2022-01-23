if ($env:AddedFilesInPR -match ".gitmodules")
{ echo "submodule was added"
$a = git submodule status
$b = $a.split(" ")[3]
$b
}
else {
echo "no submodule added"
}
