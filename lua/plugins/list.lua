-- ################################################################################
-- # Script: lua/plugins/list.lua
-- # Author: https://github.com/2KAbhishek
-- # Modifications by: Roberto Flores
-- # Email: fq211776@alumno.udb.edu.sv
-- # GitHub: https://github.com/Elixir-Software-Developer/
-- # Version: 1.0
-- # Description: El archivo list.lua es una configuración centralizada para
-- #              definir y cargar plugins, servidores LSP, fuentes de null-ls
-- #              y parsers de Tree-sitter en Neovim. La función util.is_present
-- #              se utiliza para verificar la presencia de binarios en el
-- #              sistema y, en función de eso, añadir plugins y servidores
-- #              LSP adicionales. Esto permite una configuración dinámica y
-- #              adaptable a diferentes entornos de desarrollo.
-- ################################################################################


-- Función para cargar la configuración de un paquete
local function load_config(package)
    return function()
        require('plugins.' .. package)
    end
end

-- Lista de plugins a cargar en Neovim
local plugins = {
    -- UI

    -- Language

    -- Tresitter

    -- LSP

    -- Completion

    -- Tools

    -- Telescope

    -- Git

}

-- Lista de parsers de Tree-sitter
local ts_parsers = {
    'bash',
    'css',
    'dart',
    'elixir',
    'gitcommit',
    'go',
    'html',
    'java',
    'javascript',
    'json',
    'lua',
    'markdown',
    'markdown_inline', -- markdown code blocks
    'python',
    'ruby',
    'rust',
    'typescript',
    'vim',
    'vimdoc',
    'yaml',
}

-- Lista de fuentes de null-ls
local null_ls_sources = {
    'shellcheck', -- bash lint
}

-- Lista de servidores LSP
local lsp_servers = {
    'bashls',
    'jsonls',
    'lua_ls',
    'typos_lsp', -- check typos
    'vimls',
}

-- Cargar utilidades
local util = require('lib.util')

-- Verificar la presencia de npm y añadir servidores LSP correspondientes
if util.is_present('npm') then
    table.insert(lsp_servers, 'eslint')
    table.insert(lsp_servers, 'ts_ls')
end

-- Verificar la presencia de gem y añadir plugins y servidores LSP correspondientes
if util.is_present('gem') then
    local ror_nvim = {
        'weizheheng/ror.nvim',
        branch = 'main',
        ft = 'ruby',
        config = load_config('lang.ror'),
        keys = {
            {
                '<leader>rc',
                mode = { 'n' },
                function()
                    vim.cmd('RorCommands')
                end,
                desc = 'Rails Commands',
            },
        },
    }
    local vim_rails = {
        'tpope/vim-rails',
        ft = 'ruby',
    }

    table.insert(lsp_servers, 'solargraph')
    -- table.insert(lsp_servers, 'ruby_lsp')
    table.insert(lsp_servers, 'rubocop')
    table.insert(plugins, ror_nvim)
    table.insert(plugins, vim_rails)
end

-- Verificar la presencia de go y añadir servidores LSP correspondientes
if util.is_present('go') then
    table.insert(lsp_servers, 'gopls')
end

-- Verificar la presencia de dart y añadir servidores LSP correspondientes
if util.is_present('dart') then
    table.insert(lsp_servers, 'dartls')
end

-- Verificar la presencia de java y añadir servidores LSP correspondientes
if util.is_present('java') then
    table.insert(lsp_servers, 'jdtls')
end

-- Verificar la presencia de pip y añadir servidores LSP correspondientes
if util.is_present('pip') then
    table.insert(lsp_servers, 'ruff_lsp')
    table.insert(lsp_servers, 'pylsp')
end

-- Verificar la presencia de mix y añadir servidores LSP correspondientes
if util.is_present('mix') then
    table.insert(lsp_servers, 'elixirls')
end

-- Verificar la presencia de cargo y añadir servidores LSP correspondientes
if util.is_present('cargo') then
    table.insert(lsp_servers, 'rust_analyzer')
end

-- Cargar plugins personalizados
local custom_plugins = require("plugins.custom_plugins")
vim.list_extend(plugins, custom_plugins)

-- Retornar la configuración
return {
    plugins = plugins,
    lsp_servers = lsp_servers,
    null_ls_sources = null_ls_sources,
    ts_parsers = ts_parsers,
}
