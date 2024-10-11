# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.0] - 2024-10-11
### Added
- **feat**: Add script to set up isolated Neovim testing environment.
  - Introduces a new script, `nv_test`, which sets up an isolated testing environment for Neovim.
  - The script performs the following actions:
    - Defines the path for the Neovim testing directory.
    - Removes any previous content in the testing directory to ensure a clean environment.
    - Creates the necessary directories within the testing directory.
    - Copies all files and directories from the current Neovim configuration into the testing directory.
    - Sets the `XDG_DATA_HOME` and `XDG_CONFIG_HOME` environment variables to point to the testing directory.
    - Runs Neovim with the specified environment variables and command, using the specified configuration file and any additional arguments.
  - Example Usage:
    - To set up the testing environment and run Neovim with the isolated configuration, execute the script using `bash nvim_tests_setup.sh`.
  - This script is useful for setting up an isolated testing environment for Neovim, where you can make changes to the configuration without affecting your main working environment.

## [1.0.1] - 2024-10-11
### Added
- **docs**: Add keybindings documentation to `nvim_new`.
  - Introduces the `keybindings.md` file to document all the keybindings defined for `nvim_new`.


## [1.0.2] - 2024-10-11
### Added
- **chore**: Add `.stylua.toml` configuration file.
  - Introduces the `.stylua.toml` configuration file to define the code formatting rules for StyLua, a Lua code formatter.
  - This configuration will ensure consistent code formatting across the project.


## [1.0.3] - 2024-10-11
### Added
- **chore**: Add `.gitignore` file to exclude custom user configs and lock files.
  - Introduces the `.gitignore` file to specify files and directories that should be ignored by Git.


## [1.0.4] - 2024-10-11
### Added
- **chore**: Add GNU General Public License v3.0 to the repository.
  - This license ensures that the project remains open and that contributions are shared with the community under the same terms.

## [1.0.5] - 2024-10-11
### Added
- **feat**: Step 01 - Add initial `init.lua` configuration file.
  - Introduces the initial `init.lua` configuration file for the Neovim setup.
  - This file serves as the entry point for all Neovim configurations and settings.
  - Includes basic setup and plugin management using the Lazy plugin manager.
  - Initial plugin list.
  - This marks the beginning of the step-by-step development process for the Neovim configuration.


## [1.0.6] - 2024-10-11
### Added
- **feat**: Step 02 - Add Lazy plugin manager and necessary files for its operation.
  - This commit marks the second step in the step-by-step configuration process for Neovim.
  - Addition of the Lazy plugin manager.
  - Configuration of Lazy plugin manager settings.
  - Definition of icons for UI elements in icons.lua.
  - Utility functions in util.lua for installing LSP servers only if their corresponding executables are installed (e.g., gopls only if go is installed).
  - Custom plugins in custom_plugins.lua for installing additional specific plugins.
  - As an example of the functionality, we have installed the 'mini.animate' plugin to demonstrate the plugin management capabilities of Lazy. This plugin is configured to disable scroll animations.


[Unreleased]: https://github.com/Elixir-Software-Developer/nvim_new/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/Elixir-Software-Developer/nvim_new/releases/tag/v1.0.0
