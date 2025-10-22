# GitHub Copilot Instructions - CADARSO Project

## Project Overview
This is a **GitHub Copilot training repository** focused on "Vibecoding" (AI-assisted development) for Spanish-speaking IT teams. The project teaches practical AI coding techniques through real-world scenarios for a luxury hotel + watch retail business in Barcelona.

## Architecture & Structure

### Content Organization
- `Clase 1/` - Introduction to Vibecoding with SQL examples and tool setup
- `Clase 2/` - Practical use cases (documentation automation, system scripts)
- `test_apis_marketing.ipynb` - Live demo notebook for multilingual marketing APIs

### Key Learning Patterns
1. **Natural Language → Code**: Transform business requirements into functional scripts
2. **Documentation Generation**: Convert technical code (SAP/ABAP) into user manuals
3. **API Integration**: Build marketing automation with OpenAI APIs
4. **Network Automation**: Create Cisco device management scripts

## Development Workflows

### For Educational Content
- Content files use numbered prefixes (`0. guion.md`, `1. herramientas.md`) for workshop flow
- Markdown files contain both Spanish explanations and executable code examples
- Include real business context (hotel inventory, network infrastructure)

### For Demo Code
- Jupyter notebooks demonstrate live coding sessions
- Use Pydantic models for API data structures (`ProductType`, `ProductSpecs`)
- Include error handling patterns and logging for production-ready examples

## Project-Specific Conventions

### Language & Audience
- **Primary Language**: Spanish (documentation, comments, variable names)
- **Audience**: Mixed technical levels (IT support teams)
- **Business Context**: Dual business model (luxury hospitality + retail)

### Code Patterns
```python
# Follow this structure for API demos
class BusinessSpecificManager:
    ````instructions
    # CADARSO — Copilot instructions (resumen específico)

    ## Visión rápida
    Proyecto educativo centrado en "Vibecoding" (AI-assisted development). Contenido principal en `Clase 1 - Introduccion.../` y `Clase 2 - Casos de Uso Practicos/`. Notebooks: `test_apis_marketing.ipynb`.

    ## Qué espera Copilot aquí (reglas prácticas)
    - Idioma: documentación y comentarios en español; mantén nombres de variables claros en español cuando el ejemplo lo use.
    - Estructura: los contenidos educativos usan prefijos numerados (ej. `0. guion.md`). Respeta ese orden al crear/renombrar archivos.
    - API keys y secretos: usa variables de entorno (ej. `OPENAI_API_KEY`). No comites `.env`.

    ## Convenciones breves (ejemplos reales)
    - Commits: `<type>(<scope>): <descripción>` — ejemplos en `Clase 1 - .../3. setup.md` (usa `feat`, `fix`, `docs`, `test`, `refactor`).
    - Tests: pytest para Python; notebooks ilustrativos para demos. Usa `pytest` para correr tests.
    - Logging: JSON estructurado; ver ejemplo en `Clase 1 - .../3. setup.md` sección de logging.

    ## Integraciones críticas a respetar
    - OpenAI / APIs: todas las llamadas deben leer claves de entorno; incluye manejo de errores y control de reintentos (ver patrón `retry_with_backoff` en `3. setup.md`).
    - Scripts de red: si generas scripts de Cisco, asume entrada desde Excel/CSV y salida en logs y CSV.

    ## Qué mostrar en PRs generadas por Copilot
    1. Resumen corto (qué cambia y por qué).
    2. Archivos afectados con ruta y propósito (ej.: `Clase 2/caso_uso_documentacion.md` — agrega ejemplo de transformación SAP→manual).
    3. Cómo probar localmente (comandos minimalistas). Ejemplo: `pytest -q` o abrir `test_apis_marketing.ipynb`.

    ## Ejemplos concretos para prompts dentro del repo
    - "Genera un script Python que lea `equipos.xlsx`, haga SSH a cada IP y guarde la versión de IOS en `versions.csv` usando reintentos y logging JSON." → include `retry_with_backoff`, manejo de timeouts, y formato de salida.
    - "Crear un notebook que demuestre llamadas bilingües a OpenAI usando `OPENAI_API_KEY` desde variables de entorno." → mostrar manejo de errores y contabilización de tokens.

    ## Límites y notas importantes
    - No agregues secretos ni archivos `.env`.
    - Sigue el estilo didáctico: explica brevemente por qué elegiste una solución cuando el cambio es educativo.
    - Mantén las respuestas concisas: los archivos del curso son para aprendizaje, no código de producción completo.

    ````