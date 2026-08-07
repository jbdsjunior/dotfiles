# Dotfiles Management with Chezmoi

Este repositório contém a gestão centralizada de arquivos de configuração (dotfiles) para usuário e sistema, utilizando o [chezmoi](https://www.chezmoi.io/).

## 🚀 Como Usar

### 1. Inicializar o Chezmoi

Caso esteja configurando uma nova máquina, você pode inicializar e aplicar as configurações com o comando:

```bash
chezmoi init --apply <seu-usuario-github>

```

Se você já clonou este repositório localmente:

```bash
chezmoi init
chezmoi apply

```

### 2. Otimizações e Destaques das Configurações

* **Shell & Prompt:** Utiliza o [Starship](https://starship.rs/) para um prompt rápido e informativo, juntamente com aliases customizados em `dot_bash_aliases`.
* **Sistemas Imutáveis (RPM-OSTree / Fedora Silverblue):** Atualizações automáticas em modo *stage* e timers agendados no systemd.
* **Flatpak:** Manutenção e atualizações automáticas agendadas tanto em escopo de usuário quanto de sistema.
* **Virt/Containers:** Integração simplificada com `libvirt` e substituição/equivalência nativa para ferramentas de contêineres (`nodocker`).
* **Performance & Tuning:** Tweaks de kernel (`sysctl`), agendamento de I/O e flags otimizadas para navegadores baseados em Chromium.

---

## 🔄 Atualizações de Sistema Automáticas

Ao executar `chezmoi apply`, o script `run_onchange_install-system-configs.sh` verifica alterações no diretório `system-configs/` e instala/sincroniza as configurações necessárias no sistema (`/etc`).

Para verificar pendências ou diferenças antes de aplicar:

```bash
chezmoi diff

```
