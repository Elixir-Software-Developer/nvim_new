-- ################################################################################
-- # Script: lua/plugins/custom_plugins.lua
-- # Author: Roberto Flores
-- # Email: fq211776@alumno.udb.edu.sv
-- # GitHub: https://github.com/Elixir-Software-Developer/
-- # Version: 1.0
-- # Description: El archivo custom_plugins.lua define una lista de plugins
-- # adicionales que se cargarán en Neovim. Estos plugins son específicos y
-- # personalizados para el entorno de desarrollo del usuario.
-- ################################################################################


-- Definir una lista de plugins adicionales
local extra_plugins = {

    -- animations
    {
        'echasnovski/mini.animate',
        event = 'VeryLazy',
        opts = function(_, opts)
            opts.scroll = { enable = false }
        end,
    },
}
-- Retornar la lista de plugins adicionales
return extra_plugins
