package net.sf.scuba.smartcards;

import android.annotation.TargetApi;
import android.nfc.Tag;
import android.nfc.tech.IsoDep;
import android.nfc.tech.NfcA;
import android.nfc.tech.NfcB;
import java.io.IOException;

/* loaded from: classes2.dex */
public class IsoDepCardService extends CardService {
    private int apduCount = 0;
    private IsoDep isoDep;

    public IsoDepCardService(IsoDep isoDep) {
        this.isoDep = isoDep;
    }

    private boolean isDirectConnectionLost(Throwable th2) {
        if (!isISODepConnected()) {
            return true;
        }
        if (th2 == null) {
            return false;
        }
        if (th2.getClass().getName().contains("TagLostException")) {
            return true;
        }
        String message = th2.getMessage();
        if (message == null) {
            message = "";
        }
        if (message.toLowerCase().contains("tag was lost")) {
            return true;
        }
        return (th2 instanceof CardServiceException) && (message.toLowerCase().contains("not connected") || message.toLowerCase().contains("failed response"));
    }

    private boolean isISODepConnected() {
        try {
            return this.isoDep.isConnected();
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // net.sf.scuba.smartcards.CardService
    public void close() throws IOException {
        try {
            this.isoDep.close();
            this.state = 0;
        } catch (IOException unused) {
        }
    }

    @Override // net.sf.scuba.smartcards.CardService
    public byte[] getATR() {
        Tag tag;
        IsoDep isoDep = this.isoDep;
        if (isoDep == null || (tag = isoDep.getTag()) == null) {
            return null;
        }
        if (NfcA.get(tag) == null && NfcB.get(tag) != null) {
            return this.isoDep.getHiLayerResponse();
        }
        return this.isoDep.getHistoricalBytes();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x001d, code lost:
    
        return false;
     */
    @Override // net.sf.scuba.smartcards.CardService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isConnectionLost(java.lang.Exception r4) {
        /*
            r3 = this;
            boolean r0 = r3.isDirectConnectionLost(r4)
            r1 = 1
            if (r0 == 0) goto L8
            return r1
        L8:
            r0 = 0
            if (r4 != 0) goto Lc
            return r0
        Lc:
            java.lang.Throwable r2 = r4.getCause()
            if (r2 == 0) goto L1d
            if (r4 == r2) goto L1d
            boolean r4 = r3.isDirectConnectionLost(r2)
            if (r4 == 0) goto L1b
            return r1
        L1b:
            r4 = r2
            goto Lc
        L1d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.sf.scuba.smartcards.IsoDepCardService.isConnectionLost(java.lang.Exception):boolean");
    }

    @Override // net.sf.scuba.smartcards.CardService
    @TargetApi(16)
    public boolean isExtendedAPDULengthSupported() {
        return this.isoDep.isExtendedLengthApduSupported();
    }

    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    @Override // net.sf.scuba.smartcards.CardService
    public boolean isOpen() {
        ?? r02 = this.isoDep.isConnected() ? 1 : 0;
        this.state = r02;
        return r02;
    }

    @Override // net.sf.scuba.smartcards.CardService
    public void open() throws IOException, CardServiceException {
        if (isOpen()) {
            return;
        }
        try {
            this.isoDep.connect();
            if (!this.isoDep.isConnected()) {
                throw new CardServiceException("Failed to connect");
            }
            this.state = 1;
        } catch (IOException e10) {
            throw new CardServiceException("Failed to connect", e10);
        }
    }

    @Override // net.sf.scuba.smartcards.CardService
    public ResponseAPDU transmit(CommandAPDU commandAPDU) throws IOException, CardServiceException {
        try {
            if (!this.isoDep.isConnected()) {
                throw new CardServiceException("Not connected");
            }
            byte[] bArrTransceive = this.isoDep.transceive(commandAPDU.getBytes());
            if (bArrTransceive == null || bArrTransceive.length < 2) {
                throw new CardServiceException("Failed response");
            }
            ResponseAPDU responseAPDU = new ResponseAPDU(bArrTransceive);
            int r6 = this.apduCount + 1;
            this.apduCount = r6;
            notifyExchangedAPDU(new APDUEvent(this, "ISODep", r6, commandAPDU, responseAPDU));
            return responseAPDU;
        } catch (CardServiceException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new CardServiceException("Could not tranceive APDU", e11);
        }
    }
}
