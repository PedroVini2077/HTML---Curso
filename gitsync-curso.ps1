# ==============================================
# 🔄 Sync-GitCurso.ps1
# Sincroniza o repositório local com o GitHub
# ==============================================

# Caminho do repositório
$repoPath = "C:\Users\Pedro\Desktop\HTML - Curso"

# Cabeçalho estilizado
Write-Host "═══════════════════════════════════════" -ForegroundColor Cyan
Write-Host "      GITSYNC - Curso de HTML" -ForegroundColor Green
Write-Host "═══════════════════════════════════════" -ForegroundColor Cyan
Write-Host ""

# Muda para a pasta do repositório
Set-Location $repoPath

# Verifica a branch atual
$branch = git rev-parse --abbrev-ref HEAD 2>$null
Write-Host "📂 Repositório:" (Split-Path $repoPath -Leaf)
Write-Host "🌿 Branch atual: $branch"
Write-Host ""

# Verifica se há alterações
Write-Host "🔍 Verificando alterações..."
$changes = git status --porcelain

if (-not $changes) {
    Write-Host "✓ Nenhuma alteração detectada." -ForegroundColor Yellow
} else {
    Write-Host "✓ Alterações detectadas:" -ForegroundColor Green
    Write-Host ""
    Write-Host $changes
    Write-Host ""
    
    # Pergunta como adicionar
    $choice = Read-Host "📝 Como deseja adicionar os arquivos? (1=Todos / 2=Seletivo)"
    if ($choice -eq "1") {
        git add . *> $null
        Write-Host "✓ Arquivos adicionados" -ForegroundColor Green
    } else {
        Write-Host "Digite os arquivos que deseja adicionar (ex: index.html style.css):"
        $files = Read-Host
        git add $files *> $null
        Write-Host "✓ Arquivos selecionados adicionados" -ForegroundColor Green
    }

    # Commit
    $commitMsg = Read-Host "💬 Digite a mensagem do commit (Enter para padrão)"
    if (-not $commitMsg) { $commitMsg = "Syncando o PC com o GitHub" }
    git commit -m "$commitMsg" *> $null
    Write-Host "✓ Commit realizado" -ForegroundColor Green
}

# Puxa atualizações remotas
Write-Host ""
Write-Host "⬇️  Atualizando antes do push..." -ForegroundColor Cyan
git pull --rebase *> $null
Write-Host "✓ Repositório atualizado" -ForegroundColor Green

# Envia pro GitHub
Write-Host ""
Write-Host "⬆️  Enviando para o GitHub..." -ForegroundColor Cyan
git push *> $null
Write-Host "✓ Push realizado com sucesso!" -ForegroundColor Green

Write-Host ""
Write-Host "═══════════════════════════════════════" -ForegroundColor Cyan
Write-Host "      ✓ Sincronização concluída!" -ForegroundColor Green
Write-Host "═══════════════════════════════════════" -ForegroundColor Cyan
