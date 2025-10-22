param(
    [string]$GithubUser,
    [string]$RepoName = "CADARSO",
    [switch]$Private
)

Set-StrictMode -Version Latest

function Cmd-Exists { param($cmd) (Get-Command $cmd -ErrorAction SilentlyContinue) -ne $null }

if (-not (Cmd-Exists git)) {
    Write-Error "git no está instalado o no está en PATH. Instala git antes de continuar."
    exit 1
}

Push-Location (Split-Path -Path $MyInvocation.MyCommand.Path -Parent) | Out-Null
Push-Location .. | Out-Null

if (-not (Test-Path .git)) {
    git init
    git add .
    git commit -m "chore(init): primer commit del proyecto CADARSO"
} else {
    Write-Host "Repositorio git ya inicializado."
}

if (-not $GithubUser) {
    Write-Host "Debes pasar tu usuario de GitHub como primer parámetro. Ej: .\push_to_github.ps1 -GithubUser tu-usuario"
    Pop-Location; Pop-Location
    exit 1
}

$remoteUrl = "https://github.com/$GithubUser/$RepoName.git"

if (git remote get-url origin 2>$null) {
    Write-Host "Remote 'origin' ya existe: $(git remote get-url origin)"
} else {
    if (Cmd-Exists gh) {
        $visibility = if ($Private) { "--private" } else { "--public" }
        gh auth status 2>$null
        if ($LASTEXITCODE -ne 0) {
            Write-Host "No estás autenticado en gh. Ejecuta 'gh auth login' y vuelve a ejecutar este script."
            Pop-Location; Pop-Location
            exit 1
        }
        gh repo create "$GithubUser/$RepoName" $visibility --source=. --remote=origin --push
    } else {
        git remote add origin $remoteUrl
        git branch -M main
        git push -u origin main
    }
}

Write-Host "Hecho. Revisa https://github.com/$GithubUser/$RepoName"

Pop-Location; Pop-Location
