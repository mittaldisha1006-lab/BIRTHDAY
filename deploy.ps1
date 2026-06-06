param(
    [string]$repoUrl
)

if(-not $repoUrl){
    $repoUrl = Read-Host 'Enter the GitHub repo HTTPS URL (https://github.com/USERNAME/REPO.git)'
}

Write-Host "Initializing git repository (if not already) and pushing to $repoUrl" -ForegroundColor Cyan

if(-not (Test-Path .git)){
    git init
    git add .
    git commit -m "Initial site commit"
    git branch -M main
    git remote add origin $repoUrl
} else {
    git add .
    git commit -m "Update site" -ErrorAction SilentlyContinue
}

git push -u origin main

Write-Host "Push complete. If you enabled GitHub Pages via the workflow, wait a few minutes and open https://USERNAME.github.io/REPO/ (replace USERNAME/REPO)." -ForegroundColor Green
