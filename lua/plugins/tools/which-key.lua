--[[
################################################################################
# Script: which-key.lua
# Author: Roberto Flores
# Email: fq211776@alumno.udb.edu.sv
# GitHub: https://github.com/Elixir-Software-Developer/
# Version: 1.0
# Description: El archivo which-key.lua configura el plugin Which-Key para Neovim.
#              Este archivo define la configuración general de Which-Key, así como
#              las asignaciones de teclas para diferentes modos y contextos.
################################################################################
--]]

-- Cargar el módulo Which-Key
local which_key = require('which-key')

-- Cargar los iconos desde el archivo lib.icons
local icons = require('lib.icons')

-- Configuración general de Which-Key
local setup = {
    -- Usar el preset 'modern'
    preset = 'modern',

    -- Configuración de plugins
    plugins = {
        marks = true, -- Habilitar marcas
        registers = true, -- Habilitar registros
        spelling = {
            enabled = true, -- Habilitar corrección ortográfica
            suggestions = 30, -- Número de sugerencias de ortografía
        },
        presets = {
            operators = true, -- Habilitar operadores
            motions = true, -- Habilitar movimientos
            text_objects = true, -- Habilitar objetos de texto
            windows = true, -- Habilitar ventanas
            nav = true, -- Habilitar navegación
            z = true, -- Habilitar comandos 'z'
            g = true, -- Habilitar comandos 'g'
        },
    },

    -- Configuración de iconos
    icons = {
        breadcrumb = icons.ui.ArrowOpen, -- Icono para breadcrumb
        separator = icons.ui.Arrow, -- Icono para separador
        group = '', -- Icono para grupo
        keys = {
            Space = icons.ui.Rocket, -- Icono para tecla 'Space'
        },
        rules = false, -- Deshabilitar reglas de iconos automáticos
    },

    -- Configuración de la ventana
    win = {
        no_overlap = true, -- Evitar superposición de ventanas
        border = 'rounded', -- Borde redondeado
        width = 0.8, -- Ancho de la ventana
        height = { min = 5, max = 25 }, -- Altura mínima y máxima
        padding = { 1, 2 }, -- Relleno
        title = true, -- Mostrar título
        title_pos = 'center', -- Posición del título
        zindex = 1000, -- Z-index de la ventana
        wo = {
            winblend = 10, -- Transparencia de la ventana
        },
    },

    -- Configuración del diseño
    layout = {
        width = { min = 20 }, -- Ancho mínimo
        spacing = 6, -- Espaciado
        align = 'center', -- Alineación centrada
    },

    -- Mostrar ayuda
    show_help = false,

    -- Mostrar teclas
    show_keys = true,

    -- Disparadores
    triggers = {
        { '<auto>', mode = 'nixsotc' }, -- Disparador automático
        { '<leader>', mode = { 'n', 'v' } }, -- Disparador para el líder en modos normal y visual
    },
}

-- Mapeos para el modo normal
local n_mappings = {
    mode = 'n',
    { '<leader>p', group = ' Packages' },
    { '<leader>pP', '<cmd>Lazy profile<cr>', desc = 'Profile' },
    { '<leader>pc', '<cmd>Lazy check<cr>', desc = 'Check' },
    { '<leader>pd', '<cmd>Lazy debug<cr>', desc = 'Debug' },
    { '<leader>pi', '<cmd>Lazy install<cr>', desc = 'Install' },
    { '<leader>pl', '<cmd>Lazy log<cr>', desc = 'Log' },
    { '<leader>pm', '<cmd>Mason<cr>', desc = 'Mason' },
    { '<leader>pp', '<cmd>Lazy<cr>', desc = 'Plugins' },
    { '<leader>pr', '<cmd>Lazy restore<cr>', desc = 'Restore' },
    { '<leader>ps', '<cmd>Lazy sync<cr>', desc = 'Sync' },
    { '<leader>pu', '<cmd>Lazy update<cr>', desc = 'Update' },
    { '<leader>px', '<cmd>Lazy clean<cr>', desc = 'Clean' },
}

-- Mapeos para el modo visual
local v_mappings = {
    mode = 'v',
}

-- Mapeos sin líder para el modo normal
local no_leader_mappings = {
    mode = 'n',
}

-- Mapeos para tmux
local tmux_mappings = {}

-- Configurar Which-Key con la configuración definida
which_key.setup(setup)

-- Añadir mapeos para el modo normal
which_key.add(n_mappings)

-- Añadir mapeos para el modo visual
which_key.add(v_mappings)

-- Añadir mapeos sin líder para el modo normal
which_key.add(no_leader_mappings)

-- Si se está ejecutando dentro de tmux, añadir mapeos para tmux
if vim.fn.exists('$TMUX') == 1 then
    which_key.add(tmux_mappings)
end

-- Requerir el archivo personalizado de teclas
require('custom_keys')
