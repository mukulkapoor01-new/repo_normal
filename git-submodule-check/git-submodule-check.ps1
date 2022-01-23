$IsSubmoduleAdded = git submodule status
if ($IsSubmoduleAdded -ne $null)
{ echo "submodule was added"
$IsSubmoduleAdded | foreach-object {
$_.split(" ")[1]
}}
else {
echo "no submodule added."
}
