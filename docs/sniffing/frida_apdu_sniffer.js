// Frida script to hook IsoDepCardService.transmit and log all APDUs
// Usage:
//   frida -U -f tr.gov.turkiye.edevlet.kapisi -l frida_apdu_sniffer.js --no-pause > pace_sniff.log
//
// The script logs every command/response pair with timestamp, direction, SW codes.
// You can change LOG_TAG or add filters as needed.

const LOG_TAG = '[PACE_SNIFF]';

// Helper to convert byte[] to hex string
function bytesToHex(javaBytes) {
    if (!javaBytes) {
        return '';
    }
    const bytes = Java.array('byte', javaBytes);
    const hexChars = [];
    for (let i = 0; i < bytes.length; i++) {
        const v = (bytes[i] & 0xff).toString(16).padStart(2, '0');
        hexChars.push(v);
    }
    return hexChars.join(' ');
}

function now() {
    return new Date().toISOString();
}

Java.perform(() => {
    const IsoDepCardService = Java.use('net.sf.scuba.smartcards.IsoDepCardService');
    const CommandAPDU = Java.use('net.sf.scuba.smartcards.CommandAPDU');
    const ResponseAPDU = Java.use('net.sf.scuba.smartcards.ResponseAPDU');

    IsoDepCardService.transmit.overload('net.sf.scuba.smartcards.CommandAPDU').implementation = function (command) {
        const cla = command.getCLA();
        const ins = command.getINS();
        const p1 = command.getP1();
        const p2 = command.getP2();
        const lc = command.getNc();
        const le = command.getNe();

        const cmdBytes = command.getBytes();
        const cmdHex = bytesToHex(cmdBytes);

        console.log(`${LOG_TAG} ${now()} -> APDU`);
        console.log(`${LOG_TAG} CLA=${cla.toString(16).padStart(2, '0')} INS=${ins.toString(16).padStart(2, '0')} P1=${p1.toString(16).padStart(2, '0')} P2=${p2.toString(16).padStart(2, '0')} Lc=${lc} Le=${le}`);
        console.log(`${LOG_TAG} DATA=${cmdHex}`);

        let response;
        try {
            response = this.transmit(command);
        } catch (err) {
            console.log(`${LOG_TAG} ${now()} !! transmit threw ${err}`);
            throw err;
        }

        const respBytes = response.getBytes();
        const respHex = bytesToHex(respBytes);

        const sw = response.getSW();
        const sw1 = ((sw >> 8) & 0xff).toString(16).padStart(2, '0');
        const sw2 = (sw & 0xff).toString(16).padStart(2, '0');
        const data = bytesToHex(response.getData());

        console.log(`${LOG_TAG} ${now()} <- RAPDU`);
        console.log(`${LOG_TAG} SW=${sw1}${sw2} DATA=${data}`);
        console.log(`${LOG_TAG} RAW=${respHex}`);
        console.log(`${LOG_TAG} --------------------------------------------`);

        return response;
    };

    console.log(`${LOG_TAG} Hook installed on IsoDepCardService.transmit`);
});
