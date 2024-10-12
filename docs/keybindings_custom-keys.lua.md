<!-- ################################################################################
-- # Script: docs/keybindings_custom-keys.lua.md
-- # Author: Roberto Flores
-- # Email: fq211776@alumno.udb.edu.sv
-- # GitHub: https://github.com/Elixir-Software-Developer/
-- # Version: 1.0
-- # Description: El archivo keybindings_custom-keys.lua.md extrae todos los atajos
-- #              de teclado declarados en el archivo custom-keys.lua y los presenta
-- #              resumidos en una forma facil de entender y memorizar.
-- ################################################################################ -->


# [nvim_new](https://github.com/Elixir-Software-Developer/nvim_new) [keybindings_custom-keys.lua.md](https://github.com/Elixir-Software-Developer/nvim_new/blob/main/docs/keybindings_custom-keys.lua.md)

Here are all the keybindings defined for nvim_new

Check out the source code of individual files for more info.

Sources:

- [lua/core/custom-keys.lua](../lua/core/custom-keys.lua) - Changes behavior of core keys,

## Non Leader Bindings

| Keybinding | Action                                    | N | V | I | T |
| -----------| ------------------------------------------| - | - | - | - |
| `<C-s>`    | Guardar y formatear archivo               | ✅|   | ✅|   |
| `<C-v>`    | Paste at Cursor                           | ✅|   | ✅|   |
| `<C-c>`    | Copy <Line in insert mode>                |   | ✅| ✅|   |
| `<C-x>`    | Cut <Line in insert mode>                 |   | ✅| ✅|   |
| `<C-q>`    | Guardar y cerrar el buffer actual         | ✅|   |   |   |
| `<C-q>`    | Cerrar Neovim si no hay buffers activos   | ✅|   |   |   |
| `<C-d>`    | Duplicar una línea                        | ✅|   | ✅|   |
| `<S-Left>` | Move to beginning of line                 | ✅|   | ✅|   |
| `<S-Right>`| Move to end of line                       | ✅|   | ✅|   |
| `<C-Left>` | Move to Previous Word                     |   |   | ✅|   |
| `<C-Right>`| Move to Next Word                         |   |   | ✅|   |
| `<C-a>`    | Select All                                | ✅|   | ✅|   |
