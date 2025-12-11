# Política de idioma

Respuestas en español.

# Política de uso de agentes

Queda terminantemente prohibido pushear commits desde este entorno o por parte de cualquier agente.

# Política te código generado

- Comentarios estrictamente en inglés SOLO cuando el código no es estrictamente explicativo
- Prohibido los comentarios en la misma linea
- Está permitido comentar antes de la firma de la función en varias lineas

# Model Context Protocol MCP

Usar exa mcp para buscar documentación actualizada.
Si falla usar context7 mcp.
Usar playwright mcp cuando sea necesario.

# Comandos de construcción y formato

- Formato: `stylua .` (usa 2 espacios, 120 caracteres de línea)
- No hay comandos de build/test - es configuración de Neovim

# Guías de estilo

- Indentación: 2 espacios
- Límite de línea: 120 caracteres
- Archivos Lua en `lua/` con estructura modular
- Plugins en `lua/plugins/` usando lazy.nvim
- Configuración en `lua/config/`
- Usar `---@type` para anotaciones de tipo
- Preferir `opts = function(_, opts)` para configuración extendida

# Resaltado de sintaxis en Markdown

- Treesitter configurado en `lua/plugins/treesitter.lua`
- Los bloques de código con triple backtick + lenguaje (```go, ```python, etc.) deben resaltar automáticamente
- Parsers instalados: markdown, markdown_inline, go, python, javascript, typescript, rust, lua, bash, c, cpp, java, json, yaml, toml, html, css
- Si no resalta: ejecutar `:TSUpdate` o `:TSInstall <lenguaje>` en Neovim