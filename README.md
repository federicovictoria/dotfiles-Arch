# 🌌 dotfiles-Arch

Configuración personalizada para **Arch Linux** basada en **Hyprland** (utilizando la nueva sintaxis/configuración en Lua), con una estética futurista en tonos cian neón, azul profundo y transparencias.

---

## 📸 Capturas de Pantalla

> *Añade las rutas o URLs de tus imágenes en las plantillas a continuación.*

| Escritorio General | Lanzador Wofi |
| :---: | :---: |
| ![Escritorio](ruta/a/tu_escritorio.png) | ![Wofi](ruta/a/tu_wofi.png) |

---

## 📦 Dependencias Requeridas

Asegúrate de instalar los siguientes paquetes antes de aplicar las configuraciones:

### 1. Entorno Gráfico y Utilidades de Hyprland
* **`hyprland`**: Compositor Wayland.
* **`hyprpaper`**: Gestor de fondo de pantalla[cite: 5].
* **`hyprlock`**: Pantalla de bloqueo[cite: 5].
* **`hypridle`**: Demonio para el manejo de inactividad/suspensión[cite: 5].
* **`hyprpicker`**: Selector de colores para la pantalla.

### 2. Interfaz y Notificaciones
* **`waybar`**: Barra de estado personalizada[cite: 5].
* **`wofi`**: Lanzador de aplicaciones[cite: 5].
* **`dunst`**: Demonio de notificaciones[cite: 5].
* **`libnotify`** (`notify-send`): Herramienta para enviar notificaciones desde la terminal.

### 3. Terminal y Shells
* **`kitty`**: Emulador de terminal[cite: 5].
* **`bash`** / **`zsh`**: Shells compatibles[cite: 5].
* **`starship`**: Prompt de terminal rápido e informativo[cite: 5].

#### Comando de instalación rápida en Arch Linux:
```bash
sudo pacman -S hyprland hyprpaper hyprlock hypridle hyprpicker waybar wofi dunst libnotify kitty bash zsh starship