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
sudo pacman -S hyprland kitty waybar wofi dunst hyprpaper hyprlock hypridle \
               starship nwg-look grim slurp wl-clipboard swappy yazi papirus-icon-theme

# 3. Fuentes
sudo pacman -S ttf-inter
yay -S ttf-codenewroman-nerd

# 4. Opcional (Contenedores)
sudo pacman -S flatpak
```
