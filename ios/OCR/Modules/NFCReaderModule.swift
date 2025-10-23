import Foundation
import React
import CoreNFC

/**
 * NFC Reader Module - Turkish ID Card reading with ISO-DEP protocol
 *
 * Features:
 * - Real NFC hardware integration for iOS
 * - Turkish ID card reading (ISO-DEP)
 * - Secure data extraction with validation
 * - 60-second timeout with error recovery
 * - Support for iOS 13+ NFC capabilities
 */
@available(iOS 13.0, *)
@objc(NFCReaderModule)
class NFCReaderModule: RCTEventEmitter {
    
    private var nfcSession: NFCTagReaderSession?
    private var isReading = false
    private var timeoutTimer: Timer?
    private var timeoutSeconds: TimeInterval = 60
    private var totalBytesRead: Int = 0
    private var completedSuccessfully: Bool = false
    
    override static func moduleName() -> String! {
        return "NFCReaderModule"
    }
    
    override func supportedEvents() -> [String]! {
        return [
            "NFC_SCAN_STARTED",
            "NFC_TAG_DETECTED",
            "NFC_DATA_READ",
            "NFC_SCAN_COMPLETED",
            "NFC_ERROR",
            "NFC_CANCELLED"
        ]
    }
    
    override static func requiresMainQueueSetup() -> Bool {
        return true
    }
    
    // MARK: - Public Methods
    
    /**
     * Check if device supports NFC
     */
    @objc func isSupported(
        _ resolve: @escaping RCTPromiseResolveBlock,
        reject: @escaping RCTPromiseRejectBlock
    ) {
        let isSupported = NFCTagReaderSession.readingAvailable
        resolve([
            "supported": isSupported,
            "message": isSupported ? "NFC is supported" : "NFC is not supported on this device"
        ])
    }
    
    /**
     * Start NFC reading session for Turkish ID card
     */
    @objc func startReading(
        _ options: [String: Any],
        resolve: @escaping RCTPromiseResolveBlock,
        reject: @escaping RCTPromiseRejectBlock
    ) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            
            // Check if already reading
            guard !self.isReading else {
                reject("NFC_ALREADY_READING", "NFC session already active", nil)
                return
            }
            
            // Check device support
            guard NFCTagReaderSession.readingAvailable else {
                reject("NFC_NOT_SUPPORTED", "NFC is not supported on this device", nil)
                return
            }
            
            // Create NFC session
            let alertMessage = options["alertMessage"] as? String ?? "Kimlik kartınızı cihazınızın arkasına yaklaştırın"
            if let t = options["timeoutSeconds"] as? Double, t > 0 {
                self.timeoutSeconds = t
            } else if let tNum = options["timeoutSeconds"] as? NSNumber, tNum.doubleValue > 0 {
                self.timeoutSeconds = tNum.doubleValue
            }
            // Also accept `timeout` in milliseconds as an alias
            if let tMs = options["timeout"] as? Double, tMs > 0 {
                self.timeoutSeconds = max(self.timeoutSeconds, tMs / 1000.0)
            } else if let tMsNum = options["timeout"] as? NSNumber, tMsNum.doubleValue > 0 {
                self.timeoutSeconds = max(self.timeoutSeconds, tMsNum.doubleValue / 1000.0)
            }
            
            self.nfcSession = NFCTagReaderSession(
                pollingOption: [.iso14443],
                delegate: self,
                queue: DispatchQueue.main
            )
            
            self.nfcSession?.alertMessage = alertMessage
            self.nfcSession?.begin()
            
            self.isReading = true
            self.completedSuccessfully = false
            self.totalBytesRead = 0
            self.timeoutTimer?.invalidate()
            self.timeoutTimer = Timer.scheduledTimer(withTimeInterval: self.timeoutSeconds, repeats: false) { [weak self] _ in
                self?.handleTimeout()
            }
            
            // Send started event
            self.sendEvent(
                withName: "NFC_SCAN_STARTED",
                body: [
                    "timestamp": Date().timeIntervalSince1970,
                    "message": alertMessage
                ]
            )
            
            resolve([
                "status": "STARTED",
                "message": "NFC scanning started"
            ])
        }
    }
    
    /**
     * Stop NFC reading session
     */
    @objc func stopReading(
        _ resolve: @escaping RCTPromiseResolveBlock,
        reject: @escaping RCTPromiseRejectBlock
    ) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            
            if let session = self.nfcSession {
                session.invalidate()
                self.nfcSession = nil
                self.isReading = false
                self.timeoutTimer?.invalidate()
                self.timeoutTimer = nil
                
                resolve(["status": "STOPPED"])
            } else {
                reject("NFC_NOT_ACTIVE", "No active NFC session", nil)
            }
        }
    }
    
    /**
     * Get current NFC session status
     */
    @objc func getStatus(
        _ resolve: @escaping RCTPromiseResolveBlock,
        reject: @escaping RCTPromiseRejectBlock
    ) {
        resolve([
            "isReading": isReading,
            "isSupported": NFCTagReaderSession.readingAvailable
        ])
    }
    
    // MARK: - NFC Data Processing
    
    private func processTag(_ tag: NFCTag) {
        // Extract ISO-DEP tag
        guard case .iso7816(let iso7816Tag) = tag else {
            sendNFCError("Unsupported tag type")
            nfcSession?.invalidate(errorMessage: "Desteklenmeyen kart türü")
            return
        }
        
        // Connect to tag
        nfcSession?.connect(to: tag) { [weak self] error in
            guard let self = self else { return }
            
            if let error = error {
                self.sendNFCError(error.localizedDescription)
                self.nfcSession?.invalidate(errorMessage: "Karta bağlanılamadı")
                return
            }
            
            // Send tag detected event
            self.sendEvent(
                withName: "NFC_TAG_DETECTED",
                body: [
                    "timestamp": Date().timeIntervalSince1970,
                    "tagType": "ISO-DEP"
                ]
            )
            
            // Read data from card
            self.readCardData(from: iso7816Tag)
        }
    }
    
    private func readCardData(from tag: NFCISO7816Tag) {
        // Step 1: Select Turkish ID Card Application
        // Turkish ID Card AID: A0 00 00 02 47 10 01
        let turkishIDCardAID = Data([0xA0, 0x00, 0x00, 0x02, 0x47, 0x10, 0x01])
        
        let selectAppCommand = NFCISO7816APDU(
            instructionClass: 0x00,
            instructionCode: 0xA4,
            p1Parameter: 0x04,
            p2Parameter: 0x0C,
            data: turkishIDCardAID,
            expectedResponseLength: 256
        )
        
        tag.sendCommand(apdu: selectAppCommand) { [weak self] response, sw1, sw2, error in
            guard let self = self else { return }
            
            if let error = error {
                self.sendNFCError("Application selection failed: \(error.localizedDescription)")
                self.nfcSession?.invalidate(errorMessage: "Uygulama seçilemedi")
                return
            }
            
            guard sw1 == 0x90 && sw2 == 0x00 else {
                self.sendNFCError("Card returned error: \(String(format: "%02X %02X", sw1, sw2))")
                self.nfcSession?.invalidate(errorMessage: "Kart hatası")
                return
            }
            
            // Step 2: Read DG1 (Machine Readable Zone)
            self.readDG1(from: tag)
        }
    }
    
    private func readDG1(from tag: NFCISO7816Tag) {
        // Read DG1 (Machine Readable Zone) - contains MRZ data
        // DG1 File ID: 01 02
        let selectDG1Command = NFCISO7816APDU(
            instructionClass: 0x00,
            instructionCode: 0xA4,
            p1Parameter: 0x02,
            p2Parameter: 0x0C,
            data: Data([0x01, 0x02]),
            expectedResponseLength: 256
        )
        
        tag.sendCommand(apdu: selectDG1Command) { [weak self] response, sw1, sw2, error in
            guard let self = self else { return }
            
            if let error = error {
                self.sendNFCError("DG1 selection failed: \(error.localizedDescription)")
                self.nfcSession?.invalidate(errorMessage: "DG1 okunamadı")
                return
            }
            
            guard sw1 == 0x90 && sw2 == 0x00 else {
                self.sendNFCError("DG1 read error: \(String(format: "%02X %02X", sw1, sw2))")
                self.nfcSession?.invalidate(errorMessage: "DG1 hatası")
                return
            }
            
            // Read the actual DG1 data
            self.readBinaryData(from: tag, fileID: "DG1")
        }
    }
    
    private func readBinaryData(from tag: NFCISO7816Tag, fileID: String) {
        let maxLe = 0xFF
        var offset = 0
        var buffer = Data()
        let hardLimit = 8192 // safety cap

        func emitProgress() {
            self.sendEvent(withName: "NFC_DATA_READ", body: [
                "bytesRead": self.totalBytesRead,
                "timestamp": Date().timeIntervalSince1970
            ])
        }

        func getResponse(_ le: Int, completion: @escaping (Data?, UInt8, UInt8, Error?) -> Void) {
            let apdu = NFCISO7816APDU(
                instructionClass: 0x00,
                instructionCode: 0xC0,
                p1Parameter: 0x00,
                p2Parameter: 0x00,
                data: Data(),
                expectedResponseLength: le
            )
            tag.sendCommand(apdu: apdu, completionHandler: completion)
        }

        func readNext() {
            let p1 = UInt8((offset >> 8) & 0xFF)
            let p2 = UInt8(offset & 0xFF)
            let apdu = NFCISO7816APDU(
                instructionClass: 0x00,
                instructionCode: 0xB0,
                p1Parameter: p1,
                p2Parameter: p2,
                data: Data(),
                expectedResponseLength: maxLe
            )
            tag.sendCommand(apdu: apdu) { [weak self] response, sw1, sw2, error in
                guard let self = self else { return }
                if let error = error {
                    self.sendNFCError("Binary read failed: \(error.localizedDescription)")
                    self.nfcSession?.invalidate(errorMessage: "Veri okunamadı")
                    return
                }

                // 0x6C -> retry with correct Le
                if sw1 == 0x6C {
                    let le = (sw2 == 0x00) ? 256 : Int(sw2)
                    let retry = NFCISO7816APDU(
                        instructionClass: 0x00,
                        instructionCode: 0xB0,
                        p1Parameter: p1,
                        p2Parameter: p2,
                        data: Data(),
                        expectedResponseLength: le
                    )
                    tag.sendCommand(apdu: retry) { [weak self] resp2, sw1b, sw2b, err2 in
                        guard let self = self else { return }
                        if let err2 = err2 {
                            self.sendNFCError("Binary read failed: \(err2.localizedDescription)")
                            self.nfcSession?.invalidate(errorMessage: "Veri okunamadı")
                            return
                        }
                        guard sw1b == 0x90 && sw2b == 0x00 else {
                            self.sendNFCError("Binary read error: \(String(format: "%02X %02X", sw1b, sw2b))")
                            self.nfcSession?.invalidate(errorMessage: "Okuma hatası")
                            return
                        }
                        let data2 = resp2 ?? Data()
                        buffer.append(data2)
                        self.totalBytesRead += data2.count
                        emitProgress()
                        offset += data2.count
                        if data2.count < le || offset >= hardLimit {
                            self.parseMRZData(buffer, fileID: fileID)
                        } else {
                            readNext()
                        }
                    }
                    return
                }

                // 0x61 -> GET RESPONSE
                if sw1 == 0x61 {
                    let leGR = (sw2 == 0x00) ? 256 : Int(sw2)
                    getResponse(leGR) { [weak self] resp, sw1gr, sw2gr, err in
                        guard let self = self else { return }
                        if let err = err {
                            self.sendNFCError("GET RESPONSE failed: \(err.localizedDescription)")
                            self.nfcSession?.invalidate(errorMessage: "Okuma hatası")
                            return
                        }
                        guard sw1gr == 0x90 && sw2gr == 0x00 else {
                            self.sendNFCError("GET RESPONSE error: \(String(format: "%02X %02X", sw1gr, sw2gr))")
                            self.nfcSession?.invalidate(errorMessage: "Okuma hatası")
                            return
                        }
                        let d = resp ?? Data()
                        buffer.append(d)
                        self.totalBytesRead += d.count
                        emitProgress()
                        offset += d.count
                        if d.count < leGR || offset >= hardLimit {
                            self.parseMRZData(buffer, fileID: fileID)
                        } else {
                            readNext()
                        }
                    }
                    return
                }

                guard sw1 == 0x90 && sw2 == 0x00 else {
                    self.sendNFCError("Binary read error: \(String(format: "%02X %02X", sw1, sw2))")
                    self.nfcSession?.invalidate(errorMessage: "Okuma hatası")
                    return
                }

                let chunk = response ?? Data()
                buffer.append(chunk)
                self.totalBytesRead += chunk.count
                emitProgress()
                offset += chunk.count
                if chunk.count < maxLe || offset >= hardLimit {
                    self.parseMRZData(buffer, fileID: fileID)
                } else {
                    readNext()
                }
            }
        }

        readNext()
    }
    
    private func parseMRZData(_ data: Data, fileID: String) {
        // Try to extract MRZ payload from BER-TLV if present
        let payload = extractLikelyMRZPayload(fromTLV: data) ?? data
        // Normalize to string
        let mrzUTF8 = String(data: payload, encoding: .utf8)
        let mrzASCII = String(data: payload, encoding: .ascii)
        let raw = mrzUTF8 ?? mrzASCII ?? ""
        let normalized = raw.replacingOccurrences(of: "\r", with: "\n")
        var lines = normalized.components(separatedBy: .newlines).filter { !$0.isEmpty }

        if lines.count < 2 {
            // Attempt to reformat continuous MRZ
            let allowed = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789<"
            let filtered = raw.uppercased().filter { allowed.contains($0) }
            if filtered.count >= 88 {
                let l1 = String(filtered.prefix(44))
                let l2 = String(filtered.dropFirst(44).prefix(44))
                lines = [l1, l2]
            } else if filtered.count >= 90 {
                let l1 = String(filtered.prefix(30))
                let l2 = String(filtered.dropFirst(30).prefix(30))
                let l3 = String(filtered.dropFirst(60).prefix(30))
                lines = [l1, l2, l3]
            }
        }

        guard !lines.isEmpty else {
            sendNFCError("MRZ verisi bulunamadı")
            nfcSession?.invalidate(errorMessage: "Geçersiz veri")
            return
        }

        var cardData: [String: Any] = [:]

        func mapGender(_ ch: Character) -> String {
            if ch == "M" { return "Male" }
            if ch == "F" { return "Female" }
            return "Unknown"
        }

        func formatYYMMDD(_ s: String) -> String {
            guard s.count == 6 else { return s }
            let yy = String(s.prefix(2))
            let mm = String(s.dropFirst(2).prefix(2))
            let dd = String(s.dropFirst(4).prefix(2))
            let y = Int(yy) ?? 0
            let century = y <= 30 ? "20" : "19"
            return "\(dd).\(mm).\(century)\(yy)"
        }

        if lines.count >= 2, lines[0].count >= 44, lines[1].count >= 44 {
            // ID3 format (2 x 44)
            let line1 = lines[0]
            let line2 = lines[1]
            let docNo = String(line2.prefix(9)).replacingOccurrences(of: "<", with: "")
            cardData["documentNo"] = docNo
            let nat = String(line2.dropFirst(10).prefix(3)).replacingOccurrences(of: "<", with: "")
            cardData["nationality"] = nat
            cardData["birthDate"] = formatYYMMDD(String(line2.dropFirst(13).prefix(6)))
            if let g = line2.dropFirst(20).first { cardData["gender"] = mapGender(g) }
            cardData["validUntil"] = formatYYMMDD(String(line2.dropFirst(21).prefix(6)))
            if line1.count >= 5 {
                let nameZone = String(line1.dropFirst(5))
                // MRZ names: Surname<<Given<Given2...
                let parts = nameZone.components(separatedBy: "<<")
                let rawSurname = parts.first ?? ""
                let rawGiven = parts.dropFirst().joined(separator: " ")
                let surname = rawSurname.replacingOccurrences(of: "<", with: " ").trimmingCharacters(in: .whitespaces)
                let given = rawGiven.replacingOccurrences(of: "<", with: " ").trimmingCharacters(in: .whitespaces)
                if !given.isEmpty { cardData["name"] = given }
                if !surname.isEmpty { cardData["surname"] = surname }
            }
        } else if lines.count >= 3, lines[0].count >= 30, lines[1].count >= 30, lines[2].count >= 30 {
            // ID1 format (3 x 30) heuristic
            let l1 = lines[0]
            let l2 = lines[1]
            let l3 = lines[2]
            if l1.count >= 14 {
                let docNo = String(l1.dropFirst(5).prefix(9)).replacingOccurrences(of: "<", with: "")
                cardData["documentNo"] = docNo
            }
            if l3.count >= 14 {
                cardData["birthDate"] = formatYYMMDD(String(l3.prefix(6)))
                let g = l3[l3.index(l3.startIndex, offsetBy: 7)]
                cardData["gender"] = mapGender(g)
                cardData["validUntil"] = formatYYMMDD(String(l3.dropFirst(8).prefix(6)))
            }
            if l2.count >= 18 {
                let nat = String(l2.dropFirst(15).prefix(3)).replacingOccurrences(of: "<", with: "")
                cardData["nationality"] = nat
            }
            // ID1 often encodes names similarly in one of the lines; attempt split by "<<"
            let nameParts = l2.components(separatedBy: "<<")
            if !nameParts.isEmpty {
                let rawSurname = nameParts.first ?? ""
                let rawGiven = nameParts.dropFirst().joined(separator: " ")
                let surname = rawSurname.replacingOccurrences(of: "<", with: " ").trimmingCharacters(in: .whitespaces)
                let given = rawGiven.replacingOccurrences(of: "<", with: " ").trimmingCharacters(in: .whitespaces)
                if !given.isEmpty { cardData["name"] = given }
                if !surname.isEmpty { cardData["surname"] = surname }
            }
        }

        // Metadata
        cardData["source"] = "NFC"
        cardData["readDate"] = ISO8601DateFormatter().string(from: Date())
        cardData["isReal"] = true
        // T.C. Kimlik No MRZ’den gelmez; NFC’den üretmeyin

        // Complete session
        nfcSession?.alertMessage = "Okuma başarılı!"
        timeoutTimer?.invalidate()
        timeoutTimer = nil
        completedSuccessfully = true
        nfcSession?.invalidate()

        sendEvent(
            withName: "NFC_SCAN_COMPLETED",
            body: [
                "status": "SUCCESS",
                "data": cardData,
                "timestamp": Date().timeIntervalSince1970
            ]
        )
        isReading = false
    }
    
    private func formatDate(_ dateStr: String) -> String {
        // Convert YYMMDD to DD.MM.YYYY
        guard dateStr.count == 6 else { return dateStr }
        
        let yy = dateStr.prefix(2)
        let mm = dateStr.dropFirst(2).prefix(2)
        let dd = dateStr.dropFirst(4).prefix(2)
        
        // Determine century (00-30 = 20xx, 31-99 = 19xx)
        let year = Int(yy) ?? 0
        let century = year <= 30 ? "20" : "19"
        
        return "\(dd).\(mm).\(century)\(yy)"
    }
    
    private func extractTCNo(from documentNo: String) -> String {
        // Turkish ID document number format: Letter + 8 digits
        // Extract just the digits as TC No (simplified)
        let digits = documentNo.filter { $0.isNumber }
        return digits.count >= 8 ? String(digits.suffix(8)) : documentNo
    }
    
    
    private func sendNFCError(_ message: String) {
        sendEvent(
            withName: "NFC_ERROR",
            body: [
                "error": message,
                "timestamp": Date().timeIntervalSince1970
            ]
        )
        
        isReading = false
        timeoutTimer?.invalidate()
        timeoutTimer = nil
    }

    private func handleTimeout() {
        guard isReading else { return }
        sendNFCError("NFC oturum zaman aşımına uğradı")
        nfcSession?.invalidate(errorMessage: "Zaman aşımı: Lütfen kartı tekrar yaklaştırın")
        nfcSession = nil
    }
}

// MARK: - NFCTagReaderSessionDelegate

@available(iOS 13.0, *)
extension NFCReaderModule: NFCTagReaderSessionDelegate {
    
    func tagReaderSessionDidBecomeActive(_ session: NFCTagReaderSession) {
        print("[NFC] Session became active")
    }
    
    func tagReaderSession(_ session: NFCTagReaderSession, didInvalidateWithError error: Error) {
        print("[NFC] Session invalidated: \(error.localizedDescription)")
        
        isReading = false
        
        // If we already completed successfully, just cleanup timers and return without error
        if completedSuccessfully {
            timeoutTimer?.invalidate()
            timeoutTimer = nil
            nfcSession = nil
            return
        }

        // Check if user cancelled
        if let readerError = error as? NFCReaderError {
            if readerError.code == .readerSessionInvalidationErrorUserCanceled {
                timeoutTimer?.invalidate()
                timeoutTimer = nil
                sendEvent(
                    withName: "NFC_CANCELLED",
                    body: [
                        "timestamp": Date().timeIntervalSince1970
                    ]
                )
                return
            }
        }
        
        // Send error event
        sendNFCError(error.localizedDescription)
    }

    // Attempt to extract MRZ-like ASCII payload from BER-TLV encoded data
    private func extractLikelyMRZPayload(fromTLV data: Data) -> Data? {
        // Flatten TLV values (including constructed tags)
        func parseTLVValues(_ data: Data, depth: Int = 0) -> [Data] {
            var values: [Data] = []
            var i = 0
            let bytes = [UInt8](data)
            while i < bytes.count {
                // Parse tag
                var tagLen = 1
                if i >= bytes.count { break }
                let first = bytes[i]
                i += 1
                if (first & 0x1F) == 0x1F {
                    // Multi-byte tag
                    while i < bytes.count {
                        let b = bytes[i]
                        i += 1
                        tagLen += 1
                        if (b & 0x80) == 0 { break }
                    }
                }
                // Parse length
                if i >= bytes.count { break }
                var length = 0
                let lenByte = bytes[i]
                i += 1
                if (lenByte & 0x80) == 0 {
                    length = Int(lenByte)
                } else {
                    let numLen = Int(lenByte & 0x7F)
                    if numLen == 0 || i + numLen > bytes.count { break }
                    var acc = 0
                    for _ in 0..<numLen {
                        acc = (acc << 8) | Int(bytes[i])
                        i += 1
                    }
                    length = acc
                }
                if length < 0 || i + length > bytes.count { break }
                let value = Data(bytes[i..<(i+length)])
                i += length
                values.append(value)
                // If constructed tag (bit 6 of first tag byte), try to parse inner
                if (first & 0x20) != 0 {
                    values.append(contentsOf: parseTLVValues(value, depth: depth + 1))
                }
            }
            return values
        }
        func asciiLikelihood(_ data: Data) -> (score: Double, length: Int) {
            if data.isEmpty { return (0, 0) }
            let allowed = Set("ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789<\n\r ")
            var allowedCount = 0
            for b in data {
                let c = Character(UnicodeScalar(b))
                if allowed.contains(c) { allowedCount += 1 }
            }
            let score = Double(allowedCount) / Double(data.count)
            return (score, data.count)
        }
        let candidates = parseTLVValues(data)
        let filtered = candidates.filter { $0.count >= 60 }
        guard !filtered.isEmpty else { return nil }
        let best = filtered.max { a, b in
            let sa = asciiLikelihood(a)
            let sb = asciiLikelihood(b)
            if sa.score == sb.score { return sa.length < sb.length }
            return sa.score < sb.score
        }
        if let best = best, asciiLikelihood(best).score > 0.85 { return best }
        return nil
    }
    
    func tagReaderSession(_ session: NFCTagReaderSession, didDetect tags: [NFCTag]) {
        print("[NFC] Tags detected: \(tags.count)")
        
        guard let firstTag = tags.first else {
            session.invalidate(errorMessage: "Kart bulunamadı")
            return
        }
        
        // Process the first detected tag
        processTag(firstTag)
    }
}
