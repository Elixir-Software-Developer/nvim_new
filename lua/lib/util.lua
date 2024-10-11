-- ################################################################################
-- # Script: lua/lib/util.lua
-- # Author: https://github.com/2KAbhishek
-- # Modifications by: Roberto Flores
-- # Email: fq211776@alumno.udb.edu.sv
-- # GitHub: https://github.com/Elixir-Software-Developer/
-- # Version: 1.0
-- # Description: El archivo util.lua contiene una colección de funciones de
-- #              utilidad que se utilizan en la configuración de Neovim.
-- #              Estas funciones abarcan una variedad de tareas, desde la
-- #              obtención de configuraciones de usuario hasta la interacción
-- #              con Git y la selección de archivos utilizando Telescope.
-- ################################################################################

-- Crear un objeto util para almacenar las funciones de utilidad
local util = {}

-- Función para obtener la configuración de usuario
util.get_user_config = function(key, default)
    -- Intentar cargar el módulo 'user'
    local status_ok, user = pcall(require, 'user')
     -- Si no se puede cargar el módulo, devolver el valor por defecto
    if not status_ok then return default end

    -- Obtener la configuración de usuario para la clave especificada
    local user_config = user[key]
    -- Si la configuración no existe, devolver el valor por defecto
    if user_config == nil then return default end
    -- Devolver la configuración de usuario
    return user_config
end

-- Función para obtener el directorio raíz del proyecto
util.get_root_dir = function()
    -- Obtener el nombre del archivo actual
    local bufname = vim.fn.expand('%:p')
    -- Si el archivo no es legible, devolver nil
    if vim.fn.filereadable(bufname) == 0 then return end

    -- Obtener el directorio padre del archivo actual
    local parent = vim.fn.fnamemodify(bufname, ':h')
    -- Obtener el directorio raíz de Git
    local git_root = vim.fn.systemlist('git -C ' .. parent ..
                                           ' rev-parse --show-toplevel')
    -- Si se encuentra un directorio raíz de Git, devolverlo
    if #git_root > 0 and git_root[1] ~= '' then
        return git_root[1]
    else
        -- De lo contrario, devolver el directorio padre
        return parent
    end
end

-- Función para obtener el comando de tipo de archivo basado en la extensión
util.get_file_type_cmd = function(extension)
    -- Obtener el directorio raíz del proyecto
    local root = util.get_root_dir()

    -- Si la extensión es 'arb' y se encuentra el directorio raíz
    if extension == 'arb' and root then
        -- Verificar si existe un archivo Gemfile
        local gemfile_exists = vim.fn.filereadable(root .. '/Gemfile') == 1
        -- Verificar si existe un archivo pubspec.yaml
        local pubspec_exists = vim.fn.filereadable(root .. '/pubspec.yaml') == 1
        -- Si existe un archivo Gemfile, devolver el comando para establecer el tipo de archivo como ruby
        if gemfile_exists then return 'setfiletype ruby' end
        -- Si existe un archivo pubspec.yaml, devolver el comando para establecer el tipo de archivo como json
        if pubspec_exists then return 'setfiletype json' end
    end
    -- Devolver una cadena vacía si no se encuentra un comando adecuado
    return ''
end

-- Función para verificar si un binario está presente en el sistema
util.is_present = function(bin) return vim.fn.executable(bin) == 1 end

-- Función para seleccionar un archivo utilizando Telescope
util.telescope_select = function(options, options_desc, select_prompt)
    -- Crear un nuevo selector de Telescope
    require('telescope.pickers').new({}, {
        prompt_title = select_prompt,
        results_title = options_desc,
        finder = require('telescope.finders').new_table({
            results = options,
            entry_maker = require('telescope.make_entry').gen_from_file()
        }),
        sorter = require('telescope.sorters').get_fzy_sorter(),
        previewer = require('telescope.previewers').vim_buffer_cat.new({})
    }):find()
end

-- Retornar el objeto util con todas las funciones de utilidad
return util
