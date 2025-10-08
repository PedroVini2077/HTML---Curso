# ============================================
# GITSYNC - CURSO DE HTML (Windows)
# ============================================

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$REPO_PATH = "C:\Users\Pedro\Desktop\HTML - Curso"
Set-Location $REPO_PATH

# Pega o nome da branch atual
$BRANCH = git -C $REPO_PATH branch --show-current

Write-Host "═══════════════════════════════════════" -ForegroundColor Cyan
Write-Host "    GITSYNC - Curso de HTML" -ForegroundColor Cyan
Write-Host "═══════════════════════════════════════`n" -ForegroundColor Cyan

Write-Host "📂 Repositório: " -NoNewline -ForegroundColor Yellow
Write-Host "HTML - Curso"
Write-Host "🌿 Branch atual: " -NoNewline -ForegroundColor Yellow
Write-Host "$BRANCH`n"

Write-Host "🔍 Verificando alterações..." -ForegroundColor Blue
$status = git status --porcelain

if ([string]::IsNullOrEmpty($status)) {
    Write-Host "✓ Nenhuma alteração local detectada`n" -ForegroundColor Green
    
    Write-Host "🔄 Verificando atualizações remotas..." -ForegroundColor Blue
    git fetch origin $BRANCH | Out-Null
    
    $LOCAL = git rev-parse '@'
    $REMOTE = git rev-parse '@{u}'
    
    if ($LOCAL -ne $REMOTE) {
        Write-Host "⚠️  Existem atualizações no GitHub`n" -ForegroundColor Yellow
        $choice = Read-Host "Deseja baixar as atualizações? (s/n)"
        
        if ($choice -eq "s" -or $choice -eq "S") {
            Write-Host "`n⬇️  Baixando atualizações..." -ForegroundColor Blue
            git pull origin $BRANCH
            Write-Host "✓ Atualizado com sucesso!`n" -ForegroundColor Green
        }
    } else {
        Write-Host "✓ Repositório está sincronizado`n" -ForegroundColor Green
    }
    exit
}

Write-Host "✓ Alterações detectadas:`n" -ForegroundColor Green
git status --short

Write-Host "`n📝 Como deseja adicionar os arquivos?" -ForegroundColor Yellow
Write-Host "  1) Adicionar tudo (git add .)"
Write-Host "  2) Adicionar seletivamente"
$addChoice = Read-Host "Escolha (1/2)"

if ($addChoice -eq "2") {
    Write-Host "📋 Adicionando seletivamente..." -ForegroundColor Blue
    git add -i
} else {
    Write-Host "📋 Adicionando todos os arquivos..." -ForegroundColor Blue
    git add .
    Write-Host "✓ Arquivos adicionados`n" -ForegroundColor Green
}

Write-Host "💬 Digite a mensagem do commit (Enter para padrão):" -ForegroundColor Yellow
$commitMsg = Read-Host

if ([string]::IsNullOrEmpty($commitMsg)) {
    $commitMsg = "Update $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
    Write-Host "ℹ️  Usando mensagem padrão: `"$commitMsg`"`n" -ForegroundColor Blue
}

Write-Host "💾 Fazendo commit..." -ForegroundColor Blue
git commit -m "$commitMsg" | Out-Null
Write-Host "✓ Commit realizado`n" -ForegroundColor Green

Write-Host "⬇️  Verificando atualizações remotas antes do push..." -ForegroundColor Blue
git pull origin $BRANCH --rebase | Out-Null

if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Repositório atualizado`n" -ForegroundColor Green
} else {
    Write-Host "⚠️  Pode haver conflitos. Resolva e tente novamente.`n" -ForegroundColor Yellow
    exit
}

Write-Host "⬆️  Enviando para o GitHub..." -ForegroundColor Blue
git push origin $BRANCH | Out-Null
Write-Host "✓ Push realizado com sucesso!`n" -ForegroundColor Green

Write-Host "═══════════════════════════════════════" -ForegroundColor Green
Write-Host "    ✓ Sincronização concluída!" -ForegroundColor Green
Write-Host "═══════════════════════════════════════`n" -ForegroundColor Green
