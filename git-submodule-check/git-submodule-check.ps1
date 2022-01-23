$a = git submodule status
if ($a -eq $null)
{ echo "submodule was added"
$a | foreach-object {
$_.split(" ")[1]
}}
else {
echo "no submodule added"
}
