# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.0] - 2023-10-05
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

[Unreleased]: https://github.com/Elixir-Software-Developer/nvim_new/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/Elixir-Software-Developer/nvim_new/releases/tag/v1.0.0
