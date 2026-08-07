#!/bin/bash
# Hash dos arquivos para forçar re-execução em caso de mudança (hash automático pelo Chezmoi)
# system-configs/etc hash: {{ includeTemplate "system-configs/etc" | sha256sum }}

echo "Sincronizando configurações de sistema (/etc)... Será solicitada permissão de administrador."
sudo rsync -av --chown=root:root "$(chezmoi source-path)/system-configs/etc/" /etc/

echo "Recarregando daemons do systemd para garantir que novos timers/serviços entrem em vigor..."
sudo systemctl daemon-reload
