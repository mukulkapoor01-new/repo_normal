if ($env:AddedFilesInPR -match ".gitmodules")
{ echo "submodule was added"
$a = git submodule status
$a.Length
}
else {
echo "no submodule added"
}
