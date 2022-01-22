if ($env:AddedFilesInPR -match ".gitmodules")
{ echo "submodule was added"
}
else {
echo "no submodule added"
}
