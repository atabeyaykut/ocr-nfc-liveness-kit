# NFC APDU Sniffing Toolkit

Bu klasör, e-Devlet uygulamasının PACE/TA/SM akışını tersine mühendislik için kullanacağımız yardımcı dosyaları içerir.

## İçindekiler

- `frida_apdu_sniffer.js`: IsoDepCardService.transmit metodunu hook’layarak tüm APDU alışverişini kaydeden Frida scripti.
- (Opsiyonel) `pace_sniff_template.log`: Log dosyası formatı için boş şablon.

## Kurulum ve Çalıştırma

1. **Frida sunucusunu cihazda başlat**
   ```bash
   adb push frida-server-<version>-android-arm64 /data/local/tmp/
   adb shell chmod 755 /data/local/tmp/frida-server-<version>-android-arm64
   adb shell /data/local/tmp/frida-server-<version>-android-arm64 &
   ```

2. **Scripti yükle ve çıktıyı kaydet**
   ```bash
   cd docs/sniffing
   frida -U -f tr.gov.turkiye.edevlet.kapisi -l frida_apdu_sniffer.js --no-pause \
     | tee pace_sniff_$(date +%Y%m%d_%H%M%S).log
   ```

3. **Kart okutma akışını tamamla** ve log dosyasını paylaş.

## Log Formatı

Script her APDU için aşağıdaki blokları üretir:

```
[PACE_SNIFF] 2025-11-20T09:12:34.567Z -> APDU
[PACE_SNIFF] CLA=00 INS=22 P1=c1 P2=a4 Lc=19 Le=0
[PACE_SNIFF] DATA=00 22 c1 a4 13 80 0c 06 0a ...
[PACE_SNIFF] 2025-11-20T09:12:34.589Z <- RAPDU
[PACE_SNIFF] SW=6a80 DATA=
[PACE_SNIFF] RAW=6a 80
[PACE_SNIFF] --------------------------------------------
```

> Önemli: Logda CLA/INS/P1/P2 ve ham hex çıktısı bulunduğu için PACE/TA/SM akışını bire bir kopyalayabiliriz.

## Sonraki Adımlar

- Log dosyasını `docs/sniff_logs/` altına kaydet.
- Burada paylaş; biz de JMRTD’deki akışı mevcut `PACEProtocol`/`NFCReaderModule` koduna uyarlayalım.
