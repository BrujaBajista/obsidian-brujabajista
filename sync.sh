#!/data/data/com.termux/files/usr/bin/bash

cd /storage/emulated/0/brujabajista || exit 1

git add .

if git diff --cached --quiet; then
  echo "🟡 No hay cambios para subir"
  exit 0
fi

msg="Update notes $(date '+%Y-%m-%d %H:%M')"

git commit -m "$msg"
git push

echo "✅ Obsidian sincronizado"
