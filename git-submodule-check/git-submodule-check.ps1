#This script checks whether a PR is trying to add a Non-LFS binary file to a repo.
#It relies on environment variable named 'AddedFilesInPR' which comes from the github-action
#triggering it. The value of this variable is a string of all added files in the PR.

if ($env:AddedFilesInPR -match ".gitmodules1") {
        echo "Submodule is added" 
        exit 1
}
else {
     echo "No submodule was added"
}
