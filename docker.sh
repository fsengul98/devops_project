#!/bin/bash

# 1. Docker Kurulumu

# Docker paketini kontrol et
if ! command -v docker >/dev/null 2>&1; then
  echo "Docker kurulu değil. Kuruluyor..."
  # Paket yöneticinize göre komutu değiştirin
  sudo apt-get install docker.io
else
  echo "Docker zaten kurulu."
fi

# 2. Sudo Yetkisi Verme

# Docker'a sudo yetkisi verin (isteğe bağlı)
echo "Docker'a sudo yetkisi veriliyor..."
sudo groupadd docker && sudo usermod -aG docker $USER

# Komut dosyasını çalıştırılabilir hale getirin
chmod +x docker.sh
