#!/bin/bash
cd ~/Documents/obsidian-brujabajista

echo "🔄 Iniciando sincronización en Mac..."

# Traer cambios de la nube
git pull --rebase origin main

# Agregar cambios locales
git add .

# Hacer commit solo si hay algo nuevo
if ! git diff-index --quiet HEAD; then
    echo "📝 Guardando cambios de la Mac..."
    git commit -m "Mac sync: $(date +'%Y-%m-%d %H:%M:%S')"
    git push origin main
    echo "🚀 ¡Todo subido a GitHub!"
else
    echo "✅ No hay cambios nuevos en la Mac."
fi
