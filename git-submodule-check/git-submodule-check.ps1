if ($env:AddedFilesInPR -match ".gitmodules")
{ echo "submodule was added"
function getHeaders {

    $githubToken = "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"
    if ($null -eq $githubToken) {
        throw 'You must set $env:GITHUB_PAT to a PAT.  The PAT must be able to change team repo permissions'
    }
    
    $base64Token = [System.Convert]::ToBase64String([char[]]$githubToken);

    $headers = @{
        Authorization = 'Basic {0}' -f $base64Token;  
        Accept = 'application/vnd.github.v3+json';
    };

    return $headers
}

$api = "https://api.github.com/repos/${github.repository}/pulls/${github.event.pull_request.number}/files"
$response = Invoke-WebRequest -Headers $(getHeaders) -Uri $api -Method GET
else {
echo "no submodule added"
}
