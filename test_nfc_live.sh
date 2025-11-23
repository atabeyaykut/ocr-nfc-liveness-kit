#!/bin/bash

echo "🔍 NFC Test - Canlı Log Takibi"
echo "================================"
echo ""
echo "1. Bu terminal penceresi açık kalsın"
echo "2. Uygulamada 'Doğrulamayı Başlat' butonuna bas"
echo "3. Fotoğraf çek"
echo "4. NFC ekranında kartı yaklaştır"
echo ""
echo "📝 Log'lar aşağıda görünecek:"
echo "================================"
echo ""

adb logcat -c  # Clear old logs
adb logcat | grep -E "(MainActivity|NFCPassportReader|NfcService)"
