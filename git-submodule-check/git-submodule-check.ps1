if ($env:AddedFilesInPR -match ".gitmodules")
{ echo "submodule was added"
git submodule status
}
else {
echo "no submodule added"
}
