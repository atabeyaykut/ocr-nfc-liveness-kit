/**
 * MRZ Parser Utility
 * Türk Kimlik Kartı MRZ verilerini parse eder
 * 
 * MRZ Format:
 * Line 1: I<TURDOCUMENT_NO<ID_NUMBER<<<
 * Line 2: BIRTHDATEGEXPIRYDATE2NATIONALITYCOMPOSITE<<<CHECK
 * Line 3: SURNAME<<GIVEN_NAMES<<<<<<<<<<<
 */

class MRZParser {
    /**
     * MRZ satırlarını parse eder
     * @param {string} line1 - MRZ birinci satır
     * @param {string} line2 - MRZ ikinci satır
     * @param {string} line3 - MRZ üçüncü satır
     * @returns {Object} Parse edilmiş MRZ verisi
     */
    static parse(line1, line2, line3) {
        try {
            // Line 1: Document Type, Country, Document Number, ID Number
            const documentType = line1.substring(0, 1);
            const issuingCountry = line1.substring(2, 5);

            // Document number ve ID number'ı ayır
            const line1Data = line1.substring(5, line1.length);
            const parts = line1Data.split('<');
            const documentNumber = parts[0];
            const idNumber = parts.find(p => p.length === 11 && /^\d+$/.test(p)) || '';

            // Line 2: Birth Date, Gender, Expiry Date, Nationality
            const birthDate = line2.substring(0, 6);
            const birthDateCheck = line2.substring(6, 7);
            const gender = line2.substring(7, 8);
            const expiryDate = line2.substring(8, 14);
            const expiryDateCheck = line2.substring(14, 15);
            const nationality = line2.substring(15, 18);
            const compositeCheck = line2.substring(line2.length - 1);

            // Line 3: Surname and Given Names
            const line3Clean = line3.replace(/</g, ' ').trim();
            const names = line3Clean.split('  ').filter(n => n);
            const surname = names[0] || '';
            const givenNames = names.slice(1).join(' ') || names[0] || '';

            // Format dates
            const formattedBirthDate = this.formatDate(birthDate);
            const formattedExpiryDate = this.formatDate(expiryDate);

            return {
                raw: {
                    line1,
                    line2,
                    line3
                },
                documentType,
                issuingCountry,
                documentNumber,
                idNumber,
                birthDate: formattedBirthDate,
                birthDateRaw: birthDate,
                gender: gender === 'M' ? 'E' : gender === 'F' ? 'K' : gender,
                expiryDate: formattedExpiryDate,
                expiryDateRaw: expiryDate,
                nationality,
                surname,
                givenNames,
                fullName: `${givenNames} ${surname}`,
                checksums: {
                    birthDate: birthDateCheck,
                    expiryDate: expiryDateCheck,
                    composite: compositeCheck
                },
                isValid: this.validate(line1, line2, line3)
            };
        } catch (error) {
            console.error('MRZ Parse Error:', error);
            return null;
        }
    }

    /**
     * MRZ tarih formatını DD.MM.YYYY'ye çevirir
     * @param {string} mrzDate - YYMMDD formatında tarih
     * @returns {string} DD.MM.YYYY formatında tarih
     */
    static formatDate(mrzDate) {
        if (!mrzDate || mrzDate.length !== 6) return '';

        const yy = mrzDate.substring(0, 2);
        const mm = mrzDate.substring(2, 4);
        const dd = mrzDate.substring(4, 6);

        // 2000'den sonra mı önce mi kontrol et
        const year = parseInt(yy) > 50 ? `19${yy}` : `20${yy}`;

        return `${dd}.${mm}.${year}`;
    }

    /**
     * MRZ checksum doğrulaması
     * @param {string} data - Kontrol edilecek veri
     * @param {string} checkDigit - Kontrol hanesi
     * @returns {boolean} Geçerli mi
     */
    static validateCheckDigit(data, checkDigit) {
        if (!data || checkDigit === '<') return true;

        const weights = [7, 3, 1];
        let sum = 0;

        for (let i = 0; i < data.length; i++) {
            const char = data[i];
            let value;

            if (char === '<') {
                value = 0;
            } else if (char >= '0' && char <= '9') {
                value = parseInt(char);
            } else if (char >= 'A' && char <= 'Z') {
                value = char.charCodeAt(0) - 'A'.charCodeAt(0) + 10;
            } else {
                return false;
            }

            sum += value * weights[i % 3];
        }

        return (sum % 10) === parseInt(checkDigit);
    }

    /**
     * MRZ verilerinin geçerliliğini kontrol eder
     * @param {string} line1
     * @param {string} line2
     * @param {string} line3
     * @returns {boolean}
     */
    static validate(line1, line2, line3) {
        // Basic length check
        if (line1.length !== 30 || line2.length !== 30 || line3.length !== 30) {
            return false;
        }

        // Document type check
        if (line1[0] !== 'I' && line1[0] !== 'P') {
            return false;
        }

        // Country code check
        const country = line1.substring(2, 5);
        if (country !== 'TUR') {
            return false;
        }

        return true;
    }

    /**
     * OCR sonucunu MRZ verisiyle karşılaştırır
     * @param {Object} ocrData - OCR sonucu
     * @param {Object} mrzData - Parse edilmiş MRZ verisi
     * @returns {Object} Karşılaştırma sonucu
     */
    static compareWithOCR(ocrData, mrzData) {
        const results = {
            matches: {},
            mismatches: {},
            score: 0,
            totalChecks: 0
        };

        const checks = [
            { ocr: 'idNumber', mrz: 'idNumber', label: 'TC Kimlik No' },
            { ocr: 'documentNumber', mrz: 'documentNumber', label: 'Belge No' },
            { ocr: 'birthDate', mrz: 'birthDate', label: 'Doğum Tarihi' },
            { ocr: 'expiryDate', mrz: 'expiryDate', label: 'Son Kullanma' },
            { ocr: 'gender', mrz: 'gender', label: 'Cinsiyet' },
            { ocr: 'nationality', mrz: 'nationality', label: 'Uyruk' }
        ];

        checks.forEach(check => {
            results.totalChecks++;
            const ocrValue = this.normalizeValue(ocrData[check.ocr]);
            const mrzValue = this.normalizeValue(mrzData[check.mrz]);

            if (ocrValue === mrzValue) {
                results.matches[check.label] = { ocr: ocrValue, mrz: mrzValue };
                results.score++;
            } else {
                results.mismatches[check.label] = { ocr: ocrValue, mrz: mrzValue };
            }
        });

        // Name comparison (more flexible)
        const ocrName = this.normalizeName(`${ocrData.firstName || ''} ${ocrData.lastName || ''}`);
        const mrzName = this.normalizeName(mrzData.fullName);

        results.totalChecks++;
        if (ocrName === mrzName) {
            results.matches['Ad Soyad'] = { ocr: ocrName, mrz: mrzName };
            results.score++;
        } else {
            results.mismatches['Ad Soyad'] = { ocr: ocrName, mrz: mrzName };
        }

        results.percentage = (results.score / results.totalChecks * 100).toFixed(2);
        results.isValid = results.score === results.totalChecks;

        return results;
    }

    /**
     * Değerleri normalize eder
     */
    static normalizeValue(value) {
        if (!value) return '';
        return String(value).trim().toUpperCase();
    }

    /**
     * İsimleri normalize eder
     */
    static normalizeName(name) {
        if (!name) return '';
        return name
            .trim()
            .toUpperCase()
            .replace(/\s+/g, ' ')
            .replace(/İ/g, 'I')
            .replace(/Ş/g, 'S')
            .replace(/Ğ/g, 'G')
            .replace(/Ü/g, 'U')
            .replace(/Ö/g, 'O')
            .replace(/Ç/g, 'C');
    }

    /**
     * BAC (Basic Access Control) için MRZ key oluşturur
     * @param {Object} mrzData - Parse edilmiş MRZ verisi
     * @returns {string} BAC key
     */
    static generateBACKey(mrzData) {
        // Document Number (9 chars) + Check + Birth Date (6 chars) + Check + Expiry Date (6 chars) + Check
        const docNum = mrzData.documentNumber.padEnd(9, '<');
        const birthDate = mrzData.birthDateRaw;
        const expiryDate = mrzData.expiryDateRaw;

        const docNumCheck = this.calculateCheckDigit(docNum);
        const birthDateCheck = this.calculateCheckDigit(birthDate);
        const expiryDateCheck = this.calculateCheckDigit(expiryDate);

        return `${docNum}${docNumCheck}${birthDate}${birthDateCheck}${expiryDate}${expiryDateCheck}`;
    }

    /**
     * Check digit hesaplar
     */
    static calculateCheckDigit(data) {
        const weights = [7, 3, 1];
        let sum = 0;

        for (let i = 0; i < data.length; i++) {
            const char = data[i];
            let value;

            if (char === '<') {
                value = 0;
            } else if (char >= '0' && char <= '9') {
                value = parseInt(char);
            } else if (char >= 'A' && char <= 'Z') {
                value = char.charCodeAt(0) - 'A'.charCodeAt(0) + 10;
            } else {
                value = 0;
            }

            sum += value * weights[i % 3];
        }

        return (sum % 10).toString();
    }
}

// Example usage
if (require.main === module) {
    // Test with sample data
    const line1 = 'I<TURA43D646181<10945153402<<<';
    const line2 = '9809170M3308062TUR<<<<<<<<<<<4';
    const line3 = 'AYKUT<<ATABEY<<<<<<<<<<<<<<<<<';

    console.log('🔍 MRZ Parser Test\n');
    console.log('MRZ Lines:');
    console.log(`  Line 1: ${line1}`);
    console.log(`  Line 2: ${line2}`);
    console.log(`  Line 3: ${line3}\n`);

    const parsed = MRZParser.parse(line1, line2, line3);

    console.log('📋 Parsed Data:');
    console.log(JSON.stringify(parsed, null, 2));

    console.log('\n🔑 BAC Key:');
    console.log(MRZParser.generateBACKey(parsed));
}

module.exports = MRZParser;
