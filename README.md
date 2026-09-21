# 🌌 dotfiles-Arch | Hyprland Neon Setup

Un entorno de escritorio moderno, fluido y minimalista para **Arch Linux** usando **Hyprland**, diseñado con una estética cian neón, azul profundo y transparencias elegantes.

![Arch Linux Hyprland Setup](https://img.shields.io/badge/OS-Arch%20Linux-blue?style=for-the-badge&logo=arch-linux)
![WM-Hyprland](https://img.shields.io/badge/WM-Hyprland-00f0ff?style=for-the-badge&logo=hyprland)
![Shell-Bash/Zsh](https://img.shields.io/badge/Shell-Bash%20%2F%20Zsh-4EAA25?style=for-the-badge&logo=gnu-bash)

---

## 📸 Componentes del Entorno

| Componente | Herramienta / Configuración |
| :--- | :--- |
| **Compositor WM** | [Hyprland](https://hyprland.org/) (Configurado con Lua) |
| **Barra Superior** | [Waybar](https://github.com/Alexays/Waybar) |
| **Lanzador de Apps** | [Wofi](https://hg.sr.ht/~scoopta/wofi) |
| **Notificaciones** | [Dunst](https://dunst-project.org/) |
| **Terminal** | [Kitty](https://sw.kovidgoyal.net/kitty/) |
| **Prompt** | [Starship](https://starship.rs/) |
| **Gestor GTK** | `nwg-look` |
| **Pantalla de Bloqueo** | `hyprlock` & `hypridle` |
| **Fondo de Pantalla** | `hyprpaper` |

---

## 🔤 Fuentes y Apariencia

- **Interfaz y Sistema:** `Inter`
- **Terminal y Código:** `CodeNewRoman Nerd Font`
- **Iconos:** `Papirus-Dark`
- **Tema GTK:** Oscuro personalizado mediante `nwg-look`

---

## 📦 Dependencias Necesarias

Antes de enlazar la configuración, asegúrate de instalar las herramientas y fuentes requeridas en Arch Linux:

```bash
# 1. Instalar helper del AUR (yay) si no lo tienes
sudo pacman -S --needed base-devel git
git clone [https://aur.archlinux.org/yay.git](https://aur.archlinux.org/yay.git) && cd yay && makepkg -si

# 2. Paquetes principales
sudo pacman -S --needed hyprland kitty waybar wofi dunst hyprpaper hyprlock hypridle \
               starship nwg-look grim slurp wl-clipboard swappy yazi papirus-icon-theme

# 3. Fuentes
 sudo pacman -S --needed inter-font  
sudo pacman -S --needed otf-codenewroman-nerd

# 4. Opcional (Contenedores)
sudo pacman -S --needed flatpak
```

## 🚀 Instalación y Enlace Simbólico

Para instalar y aplicar las configuraciones en un nuevo sistema, sigue estos pasos:

```bash
# 1. Clonar este repositorio en tu directorio personal
git clone https://github.com/federicovictoria/dotfiles-Arch.git ~/.dotfiles-Arch

# 2. Asegurar que existe el directorio de configuración personal
mkdir -p ~/.config

# 3. Limpiar carpetas y archivos predeterminados para evitar conflictos
rm -rf ~/.config/dunst ~/.config/hypr ~/.config/kitty ~/.config/waybar ~/.config/wofi
rm -f ~/.config/starship.toml ~/.bashrc ~/.zshrc

# 4. Crear enlaces simbólicos para las carpetas de configuración
ln -s ~/.dotfiles-Arch/dunst ~/.config/dunst
ln -s ~/.dotfiles-Arch/hypr ~/.config/hypr
ln -s ~/.dotfiles-Arch/kitty ~/.config/kitty
ln -s ~/.dotfiles-Arch/waybar ~/.config/waybar
ln -s ~/.dotfiles-Arch/wofi ~/.config/wofi

# 5. Crear enlaces simbólicos para los archivos de la terminal y prompt
ln -s ~/.dotfiles-Arch/starship.toml ~/.config/starship.toml
ln -s ~/.dotfiles-Arch/.bashrc ~/.bashrc
ln -s ~/.dotfiles-Arch/.zshrc ~/.zshrc
```

---

## 🐚 Configuración Opcional: Zsh + Plugins

Si prefieres usar **Zsh** en lugar de Bash, puedes instalar la shell y sus plugins de autocompletado y resaltado de sintaxis con el siguiente comando:

```bash
# 1. Instalar Zsh y plugins desde los repositorios oficiales y AUR
sudo pacman -S --needed zsh zsh-autosuggestions zsh-syntax-highlighting
yay -S --needed zsh-theme-powerlevel10k-git zsh-fzf-tab-git

# 2. Cambiar la shell predeterminada a Zsh (opcional)
chsh -s /usr/bin/zsh
```