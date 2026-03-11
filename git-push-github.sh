#!/bin/bash

# Script para fazer push do projeto para GitHub via SSH
# Para Linux Mint

cd /home/familia_cjssi/IdeaProjects/JavaCourseNelioAlves

echo "==========================================="
echo "🚀 Integrando projeto com GitHub (SSH)"
echo "==========================================="
echo ""

# Passo 1: Verificar SSH
echo "📋 Passo 1: Verificando SSH..."
if [ -f ~/.ssh/id_ed25519 ]; then
    echo "✅ Chave SSH encontrada!"
else
    echo "⚠️  Chave SSH não encontrada. Gerando..."
    ssh-keygen -t ed25519 -C "seu.email@example.com" -N "" -f ~/.ssh/id_ed25519
    echo "✅ Chave SSH criada!"
fi
echo ""

# Passo 2: Adicionar ao ssh-agent
echo "📋 Passo 2: Iniciando ssh-agent..."
eval "$(ssh-agent -s)" > /dev/null 2>&1
ssh-add ~/.ssh/id_ed25519 > /dev/null 2>&1
echo "✅ SSH agent configurado"
echo ""

# Passo 3: Testar conexão SSH
echo "📋 Passo 3: Testando conexão SSH com GitHub..."
if ssh -T git@github.com 2>&1 | grep -q "successfully authenticated"; then
    echo "✅ Conectado com sucesso ao GitHub!"
else
    echo "⚠️  Atenção: Erro na conexão SSH"
    echo "   Adicione a chave pública ao GitHub:"
    echo ""
    cat ~/.ssh/id_ed25519.pub
    echo ""
    echo "   1. Copie a chave acima"
    echo "   2. Acesse: https://github.com/settings/keys"
    echo "   3. Clique em 'New SSH key' e cole"
    read -p "   Pressione ENTER após adicionar a chave ao GitHub..."
fi
echo ""

# Passo 4: Git add
echo "📋 Passo 4: Adicionando arquivos..."
git add .
echo "✅ Arquivos adicionados"
echo ""

# Passo 5: Git commit
echo "📋 Passo 5: Criando commit inicial..."
git commit -m "Initial commit: Java Course - Nelio Alves - Projeto base com estrutura OOP"
echo "✅ Commit criado"
echo ""

# Passo 6: Remover remote anterior se existir
echo "📋 Passo 6: Configurando repositório remoto..."
git remote remove origin 2>/dev/null
git remote add origin git@github.com:Eduardo-Silva-Carlos/JavaCourseNelioAlves.git
echo "✅ Remote origin configurado"
echo ""

# Passo 7: Renomear branch
echo "📋 Passo 7: Renomeando branch para 'main'..."
git branch -M main
echo "✅ Branch renomeada"
echo ""

# Passo 8: Push
echo "📋 Passo 8: Fazendo push para GitHub..."
git push -u origin main
if [ $? -eq 0 ]; then
    echo "✅ Push realizado com sucesso!"
    echo ""
    echo "==========================================="
    echo "✨ Projeto integrado com sucesso!"
    echo "==========================================="
    echo ""
    echo "🎉 Seu repositório está em:"
    echo "   https://github.com/Eduardo-Silva-Carlos/JavaCourseNelioAlves"
    echo ""
else
    echo "❌ Erro no push"
    echo "   Verifique a chave SSH ou o repositório no GitHub"
fi
