# Instrucciones para activar el resaltado de sintaxis en Markdown

## Paso 1: Reiniciar Neovim
Cierra y vuelve a abrir Neovim para que lazy.nvim cargue la nueva configuración de treesitter.

## Paso 2: Sincronizar plugins (si es necesario)
Si después de reiniciar no funciona, ejecuta en Neovim:
```
:Lazy sync
```

## Paso 3: Instalar parsers de Treesitter
Ejecuta en Neovim:
```
:TSInstall markdown markdown_inline go python javascript typescript rust lua bash
```

## Paso 4: Verificar instalación
Ejecuta en Neovim:
```
:TSInstallInfo
```

Deberías ver "markdown", "markdown_inline", "go", "python", etc. marcados como instalados.

## Paso 5: Probar en un archivo markdown
Crea un archivo test.md con:

```markdown
# Test

```go
package main

import "fmt"

func main() {
    fmt.Println("Hello, World!")
}
```

```python
def hello():
    print("Hello, World!")
```
```

El código dentro de los bloques debería resaltarse con los colores apropiados.

## Troubleshooting

Si aún no funciona:

1. Verifica que treesitter esté habilitado:
   ```
   :echo nvim_treesitter#statusline()
   ```

2. Revisa el estado del resaltado:
   ```
   :TSBufToggle highlight
   ```
   (ejecuta dos veces para desactivar y reactivar)

3. Verifica los parsers instalados:
   ```
   :checkhealth nvim-treesitter
   ```

4. Si falla la instalación de parsers, asegúrate de tener gcc/clang instalado:
   ```bash
   # En el terminal de tu sistema
   gcc --version  # o clang --version
   ```
