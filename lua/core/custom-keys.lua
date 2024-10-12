--[[
################################################################################
# Script: custom_keys.lua
# Author: Roberto Flores
# Email: fq211776@alumno.udb.edu.sv
# GitHub: https://github.com/Elixir-Software-Developer/
# Version: 1.0
# Description: El archivo custom_keys.lua define mapeos de teclas personalizados
#              para diferentes modos en Neovim. Estos mapeos mejoran la
#              experiencia de usuario y proporcionan atajos de teclado útiles
#              para tareas comunes.
################################################################################
--]]

-- Función para definir mapeos de teclas
local function map(mode, lhs, rhs, opts)
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
end

-- Opciones por defecto para los mapeos
local opts = { noremap = true, silent = true }

-- Usar Space como líder
map('n', '<Space>', '', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Modes
-- normal_mode = "n", insert_mode = "i", visual_mode = "v",
-- visual_block_mode = "x", term_mode = "t", command_mode = "c",



map('n', '<C-s>', '<cmd>write<CR>', { desc = 'Guardar archivo' })
map('i', '<C-s>', '<cmd>write<CR>', { desc = 'Guardar archivo' })

-- Mapeo en modo normal e insercion para PEGAR en la posición actual del cursor
map('n', '<C-v>', '"+p', { desc = 'Paste at Cursor' })
map('i', '<C-v>', '<Esc>gpa', { desc = 'Paste' })

-- Mapeo en modo normal e insercion para COPIAR en la posición actual del cursor
map('i', '<C-c>', '<C-o>yy', { desc = 'Copy Line' })
map('v', '<C-c>', '"+y', { desc = 'Copiar al portapapeles del sistema' })

-- Mapeo en modo normal e inserción para GUARDAR y FORMATEAR el archivo
map('n', '<C-s>', '<cmd>write<CR>:lua vim.lsp.buf.format()<CR>', { desc = 'Guardar y formatear archivo' })
map('i', '<C-s>', '<Esc><cmd>write<CR>:lua vim.lsp.buf.format()<CR>a', { desc = 'Guardar y formatear archivo' })

-- Mapeo en modo normal e inserción para CORTAR
map('v', '<C-x>', '"+d', { desc = 'Cortar al portapapeles del sistema' })
map('i', '<C-x>', '<C-o>dd', { desc = 'Cut Line' })

map('i', '<Tab>', '<C-T>', { desc = 'Indent' })
map('i', '<S-Tab>', '<C-D>', { desc = 'Unindent' })


-- Mapeo en modo normal para guardar y salir, cerrando si no hay mas bufferes activos
map('n', '<C-q>', ':w<CR>:bd<CR>', { desc = 'Guardar y cerrar el buffer actual' })
map('n', '<C-q>', ':w<CR>:bd<CR>:q<CR>', { desc = 'Cerrar Neovim si no hay buffers activos' })


-- Mapeo en modo normal para guardar DUPLICAR UNA LINEA
map('n', '<C-d>', 'yypkA', { desc = 'Salir a modo normal, copiar y pegar la línea, volver a insertar al final' })
map('i', '<C-d>', '<Esc>yypkA', { desc = 'Salir a modo normal, copiar y pegar la línea, volver a insertar al final' })

-- Mapeos en modo normal e inserción para moverse al principio y final de la linea con Shift+arrow
map('i', '<S-Left>', '<C-o>^', { desc = 'Start of Line' })
map('n', '<S-Left>', '^', { desc = 'Start of Line' })

map('i', '<S-Right>', '<C-o>$', { desc = 'End of Line' })
map('n', '<S-Right>', '$', { desc = 'End of Line' })

-- Mapeos en modo inserción para moverse entre palabras con Ctrl+arrow
map('i', '<C-Left>', '<C-o>b', { desc = 'Move to Previous Word' })
-- Mapeos en modo inserción para moverse entre palabras con Ctrl+arrow
map('i', '<C-Right>', '<C-o>w', { desc = 'Move to Next Word' })

-- Mapeo en modo normal e inserción para seleccionar todo el archivo
map('n', '<C-a>', 'ggVG', { desc = 'Select All' })
map('i', '<C-a>', '<Esc>ggVG', { desc = 'Select All' })
