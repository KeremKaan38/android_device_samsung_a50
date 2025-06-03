#!/bin/bash
set -euo pipefail

# Build script for PBRP on Samsung Galaxy A50 (a50)

# Güncelle ve gerekli paketleri kur (ubuntu 22.04 için)
echo "📥 Gerekli paketleri yüklüyoruz..."
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install -y git curl zip unzip bc build-essential ccache \
  libncurses5-dev libssl-dev bison flex lib32stdc++6 lib32z1 openjdk-8-jdk python2 repo

# JAVA 8'i ayarla
echo "☕ Java 8 ayarlanıyor..."
sudo update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java || true
sudo update-alternatives --set javac /usr/lib/jvm/java-8-openjdk-amd64/bin/javac || true

# Build dizini oluştur
BUILD_DIR=pbrp
echo "📁 Build dizini: $BUILD_DIR"
mkdir -p "$BUILD_DIR"
cd "$BUILD_DIR"

# Repo başlat
echo "🚀 Repo init..."
repo init -u https://github.com/PitchBlackRecoveryProject/manifest_pb -b android-12.1

# Repo senkronize et (son commit, alan tasarrufu için)
echo "🔄 Repo sync --depth=1..."
repo sync --depth=1 -j$(nproc)

# Cihaz ağacını klonla
echo "🌲 Cihaz ağacı klonlanıyor..."
git clone https://github.com/PeterKnecht93/android_device_samsung_a50 -b pbrp-12.1 device/samsung/a50

# Ortamı hazırla ve derle
echo "⚙️ Ortam ayarlanıyor ve build başlıyor..."
source build/envsetup.sh
lunch pb_a50-eng
mka pbrp -j$(nproc)

# Çıktıyı kopyala
echo "📦 Derleme çıktılarını kopyala..."
mkdir -p ../output
cp out/target/product/a50/recovery.img ../output/

echo "✅ Build tamamlandı! Çıktı: output/recovery.img"
