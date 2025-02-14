function git-branch-clean-test{ & git branch -vv | Select-String "origin" | Select-String -NotMatch "ahead|behind" | ForEach-Object { ($_ -split '\s+')[1] } | Select-String -NotMatch “development|staging|production” }
# New-Alias -Name s -Value git-branch-clean-test
function git-branch-clean{ & git branch -vv | Select-String "origin" | Select-String -NotMatch "ahead|behind" | ForEach-Object { ($_ -split '\s+')[1] } | Select-String -NotMatch “development|staging|production” | ForEach-Object { git branch -D $_ } }
# New-Alias -Name s -Value git-branch-clean

function git-status { & git status }
# New-Alias -Name s -Value git-status