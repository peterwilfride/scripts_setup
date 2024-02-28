#/bin/bash

echo "Instalando os plugins"

codium --install-extension Angular.ng-template
codium --install-extension be5invis.vscode-custom-css
codium --install-extension bradlc.vscode-tailwindcss
codium --install-extension dbaeumer.vscode-eslint
codium --install-extension esbenp.prettier-vscode
codium --install-extension golang.go
codium --install-extension helgardrichard.helium-icon-theme
codium --install-extension jcbuisson.vue
codium --install-extension kamikillerto.vscode-colorize
codium --install-extension miguelsolorio.min-theme
codium --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
codium --install-extension ms-python.debugpy
codium --install-extension ms-python.python
codium --install-extension ms-python.vscode-pylance
codium --install-extension ms-toolsai.jupyter
codium --install-extension ms-toolsai.jupyter-keymap
codium --install-extension ms-toolsai.jupyter-renderers
codium --install-extension ms-toolsai.vscode-jupyter-cell-tags
codium --install-extension ms-toolsai.vscode-jupyter-slideshow
#codium --install-extension ms-vscode.cpptools
codium --install-extension ms-vscode.makefile-tools
#codium --install-extension piousdeer.adwaita-theme
#codium --install-extension PKief.material-icon-theme
codium --install-extension redhat.java
codium --install-extension redhat.vscode-yaml
codium --install-extension sdras.vue-vscode-snippets
codium --install-extension shd101wyy.markdown-preview-enhanced
codium --install-extension vscjava.vscode-java-debug
codium --install-extension vscode-icons-team.vscode-icons
codium --install-extension Vue.volar

echo "Copiando os arquivos para a pasta User"

cp settings.json ~/.config/VSCodium/User
cp keybindings.json ~/.config/VSCodium/User