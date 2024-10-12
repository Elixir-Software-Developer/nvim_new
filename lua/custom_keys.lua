-- ################################################################################
-- # Script: custom_keys.lua
-- # Author: Roberto Flores
-- # Email: fq211776@alumno.udb.edu.sv
-- # GitHub: https://github.com/Elixir-Software-Developer/
-- # Version: 1.0
-- # Description: El archivo custom_keys.lua define mapeos de teclas personalizados
-- #              para el plugin Which-Key en Neovim. Estos mapeos se registran
-- #              en Which-Key y se pueden usar en diferentes modos y contextos.
-- ################################################################################

-- Cargar el módulo Which-Key
local wk = require('which-key')

-- Opciones para los mapeos
local opts = {
    mode = 'n', -- Modo normal
    prefix = '<leader>', -- Prefijo de tecla líder
    buffer = nil, -- No asociado a un buffer específico
    silent = true, -- No mostrar mensajes en la pantalla
    noremap = true, -- No usar mapeos recursivos
    nowait = true, -- No esperar más mapeos
}

-- Definir los mapeos
local mappings = {

}

-- Registrar los mapeos en which-key
wk.register(mappings, opts)

-- Devolver los mapeos para que puedan ser usados por otros archivos
return {
    mappings = mappings,
    opts = opts,
}
