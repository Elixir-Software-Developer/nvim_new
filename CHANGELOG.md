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
  - The file provides a comprehensive list of keybindings categorized by mode (Normal and Visual) and by letter.
  - Key sections include:
    - **Leader Bindings (Normal Mode)**: Keybindings in Normal mode using the Leader key.
    - **Leader Bindings (Visual Mode)**: Keybindings in Visual mode using the Leader key.
    - **Non Leader Bindings**: Keybindings that do not use the Leader key.
  - This documentation will help users understand and utilize the keybindings effectively.

## [1.0.2] - 2024-10-11
### Added
- **chore**: Add `.stylua.toml` configuration file.
  - Introduces the `.stylua.toml` configuration file to define the code formatting rules for StyLua, a Lua code formatter.
  - The configuration includes settings for call parentheses, simple statement collapsing, column width, indent type, indent width, line endings, and quote style.
  - Key settings include:
    - **call_parentheses**: Always
    - **collapse_simple_statement**: Never
    - **column_width**: 120
    - **indent_type**: Spaces
    - **indent_width**: 4
    - **line_endings**: Unix
    - **quote_style**: AutoPreferSingle
  - This configuration will ensure consistent code formatting across the project.


## [1.0.3] - 2024-10-11
### Added
- **chore**: Add `.gitignore` file to exclude custom user configs and lock files.
  - Introduces the `.gitignore` file to specify files and directories that should be ignored by Git.
  - The file includes entries to exclude custom user configurations and lock files, ensuring that sensitive or environment-specific files are not committed to the repository.
  - Key exclusions include:
    - **lua/user/**: Custom user configurations.
    - **lua/plugins/lock.json**: Plugin lock file.
    - **lazy-lock.json**: Lazy plugin manager lock file.
  - This configuration will help maintain a clean and consistent repository by excluding unnecessary files


[Unreleased]: https://github.com/Elixir-Software-Developer/nvim_new/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/Elixir-Software-Developer/nvim_new/releases/tag/v1.0.0
