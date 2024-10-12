<!-- ################################################################################
-- # Script: docs/keybindings_keys.lua.md
-- # Author: https://github.com/2KAbhishek
-- # Modifications by: Roberto Flores
-- # Email: fq211776@alumno.udb.edu.sv
-- # GitHub: https://github.com/Elixir-Software-Developer/
-- # Version: 1.0
-- # Description: El archivo keybindings_keys.lua.md extrae todos los atajos
-- #              de teclado declarados en el archivo keys.lua y los presenta
-- #              resumidos en una forma facil de entender y memorizar.
-- ################################################################################ -->

# [nvim_new](https://github.com/Elixir-Software-Developer/nvim_new) [keybindings_keys.lua.md](https://github.com/Elixir-Software-Developer/nvim_new/blob/main/docs/keybindings_keys.lua.md)

Here are all the keybindings defined for nvim_new

Check out the source code of individual files for more info.

Sources:

# - [lua/core/keys.lua](../lua/core/keys.lua) - Changes behavior of core keys,

## Non Leader Bindings

| Keybinding | Action                                    |N | V|I | T|
| -----------| ------------------------------------------| -| -| -| -|
| `<Space>`  | Space as leader                           |✅|  |  |  |
|            |                                           |  |  |  |  |
| `jj`       | Use jj as escape                          |  |  |✅|  |
| `JJ`       | Use jj as escape                          |  |  |  |✅|
|            |                                           |  |  |  |  |
| `p`        | Visual overwrite paste                    |  |✅|  |  |
|            |                                           |  |  |  |  |
| `x`        | Do not copy on x                          |  |✅|  |  |
|            |                                           |  |  |  |  |
| `-`        | Decrement number                          |✅|✅|  |  |
| `=`        | Increment number                          |✅|✅|  |  |
|            |                                           |  |  |  |  |
| `gl`       | Move to end of line                       |✅|✅|✅|  |
| `gh`       | Move to beginning of line                 |✅|✅|✅|  |
|            |                                           |  |  |  |  |
| `J`        | center cursor and Join lines              |✅|  |  |  |
| `<C-d>`    | center cursor and Scroll down             |✅|  |  |  |
| `<C-u>`    | center cursor and Scroll up               |✅|  |  |  |
| `n`        | center cursor and Next search result      |✅|  |  |  |
| `N`        | center cursor and Previous search result  |✅|  |  |  |
|            |                                           |  |  |  |  |
| `j`        | Move down or use `gj` if no count         |✅|  |  |  |
| `k`        | Move up or use `gk` if no count           |✅|  |  |  |
|            |                                           |  |  |  |  |
| `J`        | Move selected text down                   |  |✅|  |  |
| `K`        | Move selected text up                     |  |✅|  |  |
|            |                                           |  |  |  |  |
| `<esc>`    | Clear search, diff update and redraw      |✅|  |✅|  |
|            |                                           |  |  |  |  |
| `n`        | Consistent n Next search navigation       |✅|✅|✅|  |
| `N`        | Consistent N Prev search navigation       |✅|✅|✅|  |
|            |                                           |  |  |  |  |
| `<`        | Indent left and reselect                  |  |✅|  |  |
| `>`        | Indent right and reselect                 |  |✅|  |  |
|            |                                           |  |  |  |  |
| `,`        | Add undo breakpoint                       |  |  |✅|  |
| `.`        | Add undo breakpoint                       |  |  |✅|  |
| `;`        | Add undo breakpoint                       |  |  |✅|  |
