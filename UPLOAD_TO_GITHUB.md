# Cómo subir este proyecto a tu cuenta de GitHub

Instrucciones paso a paso (PowerShell). Ejecuta los comandos desde:

```powershell
cd "c:/Users/rfcastro.GRUPOCADARSO/Desktop/GITHUB/CADARSO"
```

1) Inicializar repo (si no existe)

```powershell
git init
git add .
git commit -m "chore(init): primer commit del proyecto CADARSO"
```

2) Crear repo remoto

- Opción web: crea un repositorio nuevo en https://github.com/new con nombre `CADARSO`. Luego añade el remote:

```powershell
git remote add origin https://github.com/<tu-usuario>/CADARSO.git
git branch -M main
git push -u origin main
```

- Opción `gh` (GitHub CLI) - automática:

```powershell
gh auth login
gh repo create <tu-usuario>/CADARSO --public --source=. --remote=origin --push
```

3) Verificar

```powershell
git remote -v
git log --oneline -n 5
```

Notas
- Si no quieres subir los notebooks, deja `*.ipynb` en el `.gitignore` (actualmente está ignorado). Para incluir `test_apis_marketing.ipynb`, elimina `*.ipynb` del `.gitignore` antes de añadir/commit.
- No comites archivos con credenciales. Usa variables de entorno para `OPENAI_API_KEY`.
