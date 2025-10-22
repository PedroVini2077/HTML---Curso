# ==============================================
# 🔄 Sync-GitCurso.ps1 - Curso de HTML
# ==============================================

# Caminho do repositório
$REPO_PATH = "C:\Users\Pedro\Desktop\HTML - Curso"

# Suprimir TODOS os outputs do Git
$env:GIT_REDIRECT_STDERR = '2>&1'

# Cabeçalho estilizado
Write-Host "═══════════════════════════════════════" -ForegroundColor Cyan
Write-Host "      GITSYNC - Curso de HTML" -ForegroundColor Green
Write-Host "═══════════════════════════════════════`n" -ForegroundColor Cyan

# Muda para a pasta do repositório
Set-Location $REPO_PATH

# Branch atual
$BRANCH = (git rev-parse --abbrev-ref HEAD 2>$null).Trim()
Write-Host "📂 Repositório: " -NoNewline -ForegroundColor Yellow
Write-Host (Split-Path $REPO_PATH -Leaf)
Write-Host "🌿 Branch atual: " -NoNewline -ForegroundColor Yellow
Write-Host "$BRANCH`n"

# Verifica alterações locais
Write-Host "🔍 Verificando alterações..." -ForegroundColor Blue
$changes = git status --porcelain 2>$null

if ([string]::IsNullOrEmpty($changes)) {
    Write-Host "✓ Nenhuma alteração local detectada`n" -ForegroundColor Green

    Write-Host "🔄 Verificando atualizações remotas..." -ForegroundColor Blue
    
    # Fetch silencioso
    git fetch origin $BRANCH 2>&1 | Out-Null
    
    # Aguardar fetch completar
    Start-Sleep -Milliseconds 500
    
    # Comparar commits (método mais confiável)
    $LOCAL = (git rev-parse HEAD 2>$null).Trim()
    $REMOTE = (git rev-parse "origin/$BRANCH" 2>$null).Trim()

    if ($LOCAL -ne $REMOTE) {
        Write-Host "⚠️  Existem atualizações no GitHub`n" -ForegroundColor Yellow
        $choice = Read-Host "Deseja baixar as atualizações? (s/n)"

        if ($choice -eq "s" -or $choice -eq "S") {
            Write-Host "`n⬇️  Baixando atualizações..." -ForegroundColor Blue
    
            git pull origin $BRANCH 2>&1 | Out-Null
    
            if ($LASTEXITCODE -eq 0) {
                Write-Host "✓ Atualizado com sucesso!`n" -ForegroundColor Green
            }
            else {
                Write-Host "❌ Erro ao baixar atualizações`n" -ForegroundColor Red
            }
        }
    }
    else {
        Write-Host "✓ Repositório está sincronizado`n" -ForegroundColor Green
    }
    exit
}

Write-Host "✓ Alterações detectadas:`n" -ForegroundColor Green
git status --short 2>$null

# Adição de arquivos
Write-Host "`n📝 Como deseja adicionar os arquivos?" -ForegroundColor Yellow
Write-Host "  1) Adicionar tudo (git add .)"
Write-Host "  2) Adicionar seletivamente"
$addChoice = Read-Host "Escolha (1/2)"

if ($addChoice -eq "2") {
    Write-Host "📋 Adicionando seletivamente..." -ForegroundColor Blue
    git add -i 2>$null
}
else {
    Write-Host "📋 Adicionando todos os arquivos..." -ForegroundColor Blue
    git add . 2>&1 | Out-Null
    Write-Host "✓ Arquivos adicionados`n" -ForegroundColor Green
}

# Commit
Write-Host "💬 Digite a mensagem do commit (Enter para padrão):" -ForegroundColor Yellow
$commitMsg = Read-Host

if ([string]::IsNullOrEmpty($commitMsg)) {
    $commitMsg = "Syncando o PC com o GitHub - $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
    Write-Host "ℹ️  Usando mensagem padrão: `"$commitMsg`"`n" -ForegroundColor Blue
}

Write-Host "💾 Fazendo commit..." -ForegroundColor Blue
git commit -m "$commitMsg" 2>&1 | Out-Null

if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Commit realizado`n" -ForegroundColor Green
}
else {
    Write-Host "❌ Erro no commit`n" -ForegroundColor Red
    exit
}

# Pull antes do push
Write-Host "⬇️  Verificando atualizações remotas antes do push..." -ForegroundColor Blue
git pull origin $BRANCH --rebase 2>&1 | Out-Null

if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Repositório atualizado`n" -ForegroundColor Green
}
else {
    Write-Host "⚠️  Pode haver conflitos. Resolva e tente novamente.`n" -ForegroundColor Yellow
    exit
}

# Push
Write-Host "⬆️  Enviando para o GitHub..." -ForegroundColor Blue
git push origin $BRANCH 2>&1 | Out-Null

if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Push realizado com sucesso!`n" -ForegroundColor Green
}
else {
    Write-Host "❌ Erro no push`n" -ForegroundColor Red
    exit
}

# Finalização
Write-Host "═══════════════════════════════════════" -ForegroundColor Cyan
Write-Host "      ✓ Sincronização concluída!" -ForegroundColor Green
Write-Host "═══════════════════════════════════════`n" -ForegroundColor Cyan