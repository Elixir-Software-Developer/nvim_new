-- ################################################################################
-- # Script: lua/plugins/lazy.lua
-- # Author: https://github.com/2KAbhishek
-- # Modifications by: Roberto Flores
-- # Email: fq211776@alumno.udb.edu.sv
-- # GitHub: https://github.com/Elixir-Software-Developer/
-- # Version: 1.0
-- # Description: El archivo lazy.lua configura el gestor de plugins Lazy para
-- #              Neovim. Este archivo define la ruta de instalación de Lazy,
-- #              configura las opciones de Lazy, y carga los plugins
-- #              definidos en el archivo list.lua.
-- #              Además, configura varias opciones de rendimiento, UI, y
-- #              otras configuraciones específicas de Lazy.
-- ################################################################################

-- Definir la ruta de instalación de Lazy
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
-- Clonar Lazy si no está instalado
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        '--single-branch',
        'https://github.com/folke/lazy.nvim.git',
        lazypath,
    })
end
-- Añadir Lazy al runtimepath de Neovim
vim.opt.runtimepath:prepend(lazypath)

-- Cargar Lazy y verificar si se cargó correctamente
local status_ok, lazy = pcall(require, 'lazy')
if not status_ok then
    return
end

-- Cargar iconos y la lista de plugins
local icons = require('lib.icons')
local plugins = require('plugins.list').plugins

-- Configurar Lazy
lazy.setup({
    -- Ruta raíz para Lazy
    root = vim.fn.stdpath('data') .. '/lazy',
    -- Opciones por defecto para los plugins
    defaults = { lazy = true },
    -- Especificar la lista de plugins a cargar
    spec = plugins,
    -- Archivo de bloqueo para Lazy
    lockfile = vim.fn.stdpath('config') .. '/lua/plugins/lock.json',
    -- Concurrencia para Lazy
    concurrency = 8,
    -- Configuración de desarrollo
    dev = { path = '~/Projects/GitHub/', patterns = {}, fallback = false },
    -- Configuración de instalación
    install = { missing = true, colorscheme = { 'catppuccin' } },

    -- Configuración de Git
    git = {
        log = { '--since=3 days ago' },
        timeout = 120,
        url_format = 'https://github.com/%s.git',
        filter = true,
    },

    -- Configuración de la interfaz de usuario (UI)
    ui = {
        size = { width = 0.9, height = 0.8 },
        wrap = true,
        border = 'rounded',
        icons = {
            cmd = icons.ui.Terminal,
            config = icons.ui.Gear,
            event = icons.ui.Electric,
            ft = icons.documents.File,
            init = icons.ui.Rocket,
            import = icons.documents.Import,
            keys = icons.ui.Keyboard,
            lazy = icons.ui.Sleep,
            loaded = icons.ui.CircleSmall,
            not_loaded = icons.ui.CircleSmallEmpty,
            plugin = icons.ui.Package,
            runtime = icons.ui.Neovim,
            source = icons.ui.Code,
            start = icons.ui.Play,
            task = icons.ui.Check,
            list = {
                icons.ui.CircleSmall,
                icons.ui.Arrow,
                icons.ui.Star,
                icons.ui.Minus,
            },
        },
        browser = nil,
        throttle = 20,
        custom_keys = {
            ['<localleader>l'] = function(plugin)
                require('lazy.util').float_term({ 'lazygit', 'log' }, { cwd = plugin.dir })
            end,

            ['<localleader>t'] = function(plugin)
                require('lazy.util').float_term(nil, { cwd = plugin.dir })
            end,
        },
    },
    -- Configuración de diferencias (diff)
    diff = { cmd = 'git' },
    -- Configuración del verificador
    checker = {
        enabled = false,
        concurrency = nil,
        notify = true,
        frequency = 3600,
    },
    -- Configuración de detección de cambios
    change_detection = { enabled = true, notify = true },
    -- Configuración de rendimiento
    performance = {
        cache = { enabled = true },
        reset_packpath = true,
        rtp = {
            reset = true,
            paths = {},
            disabled_plugins = {
                'gzip',
                'tarPlugin',
                'zipPlugin',
                'tohtml',
                -- 'tutor',
                -- 'matchit',
                -- 'matchparen',
                -- 'netrwPlugin',
            },
        },
    },
    -- Configuración de README
    readme = {
        root = vim.fn.stdpath('state') .. '/lazy/readme',
        files = { 'README.md', 'lua/**/README.md' },
        skip_if_doc_exists = true,
    },
     -- Estado de Lazy
    state = vim.fn.stdpath('state') .. '/lazy/state.json',
})
