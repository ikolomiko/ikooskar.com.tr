#!/usr/bin/env bash
set -e
trap "echo 'ikoOSKAR yüklemesi yarıda kesildi. Lütfen komutu yeniden çalıştırın. Bu hatayı almaya devam ederseniz lütfen yetkili birinden yardım isteyin.'" ERR

echo "ikoOSKAR yükleniyor"
command -v flatpak >/dev/null || (echo "Parolanızı girin:" && sudo apt-get update >/dev/null && sudo apt-get install flatpak -y >/dev/null)
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub tr.com.ikooskar.ikoOSKAR --noninteractive -y
echo "Yükleme tamamlandı! Eğer ikoOSKAR uygulama simgesi menünüzde yoksa bilgisayarınızı yeniden başlatın."
