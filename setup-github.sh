#!/bin/bash

# Script para integrar o projeto com GitHub

echo "🚀 Iniciando integração com GitHub..."
echo ""

# Verificar se git está configurado
echo "📋 Verificando configuração do Git..."
git config user.email > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "❌ Git não está configurado. Configure com:"
    echo "   git config --global user.name 'Seu Nome'"
    echo "   git config --global user.email 'seu.email@example.com'"
    exit 1
fi

echo "✅ Git configurado"
echo ""

# Adicionar todos os arquivos
echo "📦 Adicionando arquivos ao staging..."
git add .
echo "✅ Arquivos adicionados"
echo ""

# Criar commit inicial
echo "💾 Criando commit inicial..."
git commit -m "Initial commit: Java Course - Nelio Alves

- Projeto base com estrutura OOP
- Pacotes organizados
- README e .gitignore configurados"
echo "✅ Commit criado"
echo ""

# Mostrar instruções para adicionar remote
echo "🔗 Próximas etapas:"
echo ""
echo "1. Crie um novo repositório no GitHub em https://github.com/new"
echo ""
echo "2. Execute um dos comandos abaixo para adicionar o remote:"
echo ""
echo "   Se usar HTTPS (padrão):"
echo "   git remote add origin https://github.com/SEU_USUARIO/JavaCourseNelioAlves.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "   Se usar SSH (mais seguro):"
echo "   git remote add origin git@github.com:SEU_USUARIO/JavaCourseNelioAlves.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "3. Substitua SEU_USUARIO pelo seu nome de usuário do GitHub"
echo ""
echo "✨ Pronto! Seu projeto está preparado para o GitHub!"
