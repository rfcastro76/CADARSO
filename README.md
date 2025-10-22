# CADARSO

Proyecto educativo "Vibecoding" para equipos IT hispanohablantes. Contiene material de formación, notebooks y ejemplos prácticos orientados a automatización, documentación y APIs.

Contenido principal
- `Clase 1 - Introduccion al Vibecoding y ejemplos SQL/` — guiones, setup y recursos del primer módulo.
- `Clase 2 - Casos de Uso Practicos/` — ejemplos prácticos (documentación, scripts, materiales de apoyo).
- `test_apis_marketing.ipynb` — notebook demo de integraciones de marketing.
- `.github/` — instrucciones para Copilot y plantillas (actualizadas).

Cómo subir este proyecto a GitHub
1. Abre PowerShell y sitúate en la carpeta del proyecto:

```powershell
cd "c:/Users/rfcastro.GRUPOCADARSO/Desktop/GITHUB/CADARSO"
```

2. Inicializa, añade y commitea (si aún no está):

```powershell
git init
git add .
git commit -m "chore(init): primer commit del proyecto CADARSO"
```

3. Crea el repo remoto (web o `gh`) y empuja:

```powershell
# Opción web
git remote add origin https://github.com/<tu-usuario>/CADARSO.git
git branch -M main
git push -u origin main

# Opción gh (si tienes gh instalado)
gh auth login
gh repo create <tu-usuario>/CADARSO --public --source=. --remote=origin --push
```

Consideraciones
- No comites archivos con secretos; usa variables de entorno (ej. `OPENAI_API_KEY`).
- Si subes notebooks, revisa que no contengan claves o datos sensibles.

Licencia
Indica aquí la licencia si quieres (por defecto: MIT, Apache, etc.).
