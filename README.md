# nvim_new

## 🌟 Welcome to My Neovim Refactor Journey

Hello there! 👋

I'm thrilled to introduce you to my latest project, `nvim_new`. This repository marks a significant step in my ongoing journey to refine and perfect my Neovim setup. While [nvim](https://github.com/Elixir-Software-Developer/nvim) remains my daily driver, `nvim_new` is my quarterly exercise in decluttering, optimizing, and documenting my Neovim configuration.

### 💡 Why nvim_new?

Over the past few months, I've learned a lot about what works and what doesn't in my Neovim setup. Constantly tweaking and adjusting my configuration has been a rewarding experience, but it's also been a time-consuming one. I've realized that living in a state of perpetual change can be counterproductive. Instead, I've decided to adopt a more disciplined approach: a quarterly refactor.

Every three months, I'll take a step back, review my setup, and rewrite it from the ground up. This process allows me to:

- **Organize**: Group related settings and plugins together for better readability.
- **Depurate**: Remove redundant or outdated configurations.
- **Document**: Provide clear, concise explanations for each part of my setup.
- **Optimize**: Implement best practices and new techniques I've learned.

### 💻 Installation

To install `nvim_new`, simply clone the repository and set up the symlink:

```bash
git clone --depth 1 https://github.com/Elixir-Software-Developer/nvim_new.git
```
On Linux and Mac:

```bash
ln -sfnv $PWD/nvim_new $HOME/.config/nvim-new
```

### 🛠️ Recommended Setup

To easily start Neovim with the new configuration, it's recommended to create an alias or function in your shell configuration file (e.g.,  `.bashrc`,  `.zshrc`, or  `.config/fish/config.fish`). Here's how you can do it:

#### Bash/Zsh

Add the following lines to your  `.bashrc`  or  `.zshrc`  file:

```bash
alias nvim-new='export NVIM_APPNAME="nvim-new"; exec -a "$NVIM_APPNAME" nvim -u "$HOME/.config/nvim-new/init.lua" "$@"'
```

#### Fish

Add the following lines to your  `~/.config/fish/config.fish`  file:

```fish
function nvim-new
    set -x NVIM_APPNAME "nvim-new"
    exec -a "$NVIM_APPNAME" nvim -u "$HOME/.config/nvim-new/init.lua" $argv
end
```
After adding the alias or function, reload your shell configuration:

```bash
source ~/.bashrc  # or source ~/.zshrc
```

### 🚀 What's Next?

This is just the beginning. I'm excited to see how this new approach will shape my Neovim experience. Here's a sneak peek into how I plan to develop and document this configuration:

### 📜 Changelog

To visualize each change in detail, visit the  [CHANGELOG.md](https://github.com/Elixir-Software-Developer/nvim_new//CHANGELOG.md)  file. This document will provide a comprehensive overview of all the modifications, additions, and optimizations made during each step of the refactor process.

#### 🧩 Step-by-Step Development

I will be creating a series of commits, each representing the addition of a new plugin or configuration file. This approach will allow you to follow along from step 01 to step "n", visualizing how each piece fits into the larger puzzle of my Neovim setup.

-   **Step 01**: 
    
-   **Step 02**: 
    
-   **Step 03**: 
    
-   **Step 04**: 
    
-   **Step 05**: 
    
-   **Step 06**: 
    
-   **Step 07**: 
    
-   **Step 08**: 
    
-   **Step 09**: 
    
-   **Step 10**: 
    
-   **Step 11**: 
    
-   **Step 12**: 
    
-   **Step 13**: 
    
-   **Step 14**: 
    
-   **Step 15**: 
    
-   **Step 16**: 
    
-   **Step 17**: 
    
-   **Step 18**: 
    
-   **Step 19**: 
    
-   **Step 20**: 
    
-   **Step 21**: 
    
-   **Step 22**: 
    
-   **Step 23**: 
    
-   **Step 24**: 
    
-   **Step 25**: 
    

#### 🔍 Visualizing Dependencies

By following these commits, you'll be able to see how each plugin and configuration file interacts with the others. This will provide a clear understanding of the dependencies between different parts of the setup and how they collectively contribute to the overall functionality of my Neovim environment.

#### 📚 Documentation

Each commit will be accompanied by detailed documentation, explaining:

-   **Why**: The purpose of the plugin or configuration file.
    
-   **How**: The specific settings and key mappings used.
    
-   **Dependencies**: Any other plugins or configurations it relies on.
    

This documentation will serve as a comprehensive guide, allowing you to replicate or adapt my setup for your own use.

### 🌱 Join the Journey

Feel free to explore, contribute, or simply follow along as I continue to evolve and refine my Neovim setup. I hope this repository inspires you to take a more disciplined approach to your own configuration, whether you're just starting out or looking to optimize your existing setup.

Happy coding! 🚀

**Note**: This repository is part of a quarterly refactor exercise. For my day-to-day Neovim configuration, please visit  [nvim](https://github.com/Elixir-Software-Developer/nvim).
