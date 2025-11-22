package org.jmrtd.protocol;

import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardService;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.smartcards.CommandAPDU;
import net.sf.scuba.smartcards.ResponseAPDU;
import net.sf.scuba.tlv.TLVUtil;
import org.jmrtd.APDULevelEACCACapable;

/* loaded from: classes2.dex */
public class EACCAAPDUSender implements APDULevelEACCACapable {
    private static final byte INS_BSI_GENERAL_AUTHENTICATE = -122;
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd.protocol");
    private SecureMessagingAPDUSender secureMessagingSender;

    public EACCAAPDUSender(CardService cardService) {
        this.secureMessagingSender = new SecureMessagingAPDUSender(cardService);
    }

    public synchronized byte[] sendGeneralAuthenticate(APDUWrapper aPDUWrapper, byte[] bArr, int r14, boolean z10) throws CardServiceException {
        byte[] data;
        byte[] bArrWrapDO = TLVUtil.wrapDO(124, bArr);
        ResponseAPDU responseAPDUTransmit = this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(z10 ? 0 : 16, -122, 0, 0, bArrWrapDO, r14));
        short sw = (short) responseAPDUTransmit.getSW();
        if (sw == 26368) {
            responseAPDUTransmit = this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(z10 ? 0 : 16, -122, 0, 0, bArrWrapDO, 256));
        }
        if (sw != -28672) {
            throw new CardServiceException("Sending general authenticate failed", sw);
        }
        data = responseAPDUTransmit.getData();
        try {
            data = TLVUtil.unwrapDO(124, data);
        } catch (Exception e10) {
            LOGGER.log(Level.WARNING, "Could not unwrap response to GENERAL AUTHENTICATE", (Throwable) e10);
        }
        return data;
    }

    @Override // org.jmrtd.APDULevelEACCACapable
    public synchronized byte[] sendGeneralAuthenticate(APDUWrapper aPDUWrapper, byte[] bArr, boolean z10) throws CardServiceException {
        return sendGeneralAuthenticate(aPDUWrapper, bArr, 256, z10);
    }

    @Override // org.jmrtd.APDULevelEACCACapable
    public synchronized void sendMSEKAT(APDUWrapper aPDUWrapper, byte[] bArr, byte[] bArr2) throws CardServiceException {
        byte[] bArr3 = new byte[bArr.length + (bArr2 != null ? bArr2.length : 0)];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        if (bArr2 != null) {
            System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        }
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, 34, 65, 166, bArr3)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending MSE KAT failed", sw);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0066 A[Catch: all -> 0x0079, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0007, B:8:0x0010, B:9:0x0023, B:13:0x0037, B:23:0x0071, B:24:0x0078, B:17:0x0066, B:12:0x002e, B:14:0x004b), top: B:28:0x0007, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006f A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0071 A[Catch: all -> 0x0079, TRY_ENTER, TryCatch #0 {, blocks: (B:5:0x0007, B:8:0x0010, B:9:0x0023, B:13:0x0037, B:23:0x0071, B:24:0x0078, B:17:0x0066, B:12:0x002e, B:14:0x004b), top: B:28:0x0007, inners: #1 }] */
    @Override // org.jmrtd.APDULevelEACCACapable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void sendMSESetATIntAuth(net.sf.scuba.smartcards.APDUWrapper r7, java.lang.String r8, java.math.BigInteger r9) throws net.sf.scuba.smartcards.CardServiceException {
        /*
            r6 = this;
            monitor-enter(r6)
            r3 = 65
            r4 = 164(0xa4, float:2.3E-43)
            if (r9 == 0) goto L4b
            java.math.BigInteger r0 = java.math.BigInteger.ZERO     // Catch: java.lang.Throwable -> L79
            int r0 = r9.compareTo(r0)     // Catch: java.lang.Throwable -> L79
            if (r0 >= 0) goto L10
            goto L4b
        L10:
            byte[] r8 = org.jmrtd.Util.toOIDBytes(r8)     // Catch: java.lang.Throwable -> L79
            byte[] r9 = org.jmrtd.Util.i2os(r9)     // Catch: java.lang.Throwable -> L79
            r0 = 132(0x84, float:1.85E-43)
            byte[] r9 = net.sf.scuba.tlv.TLVUtil.wrapDO(r0, r9)     // Catch: java.lang.Throwable -> L79
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L79
            r0.<init>()     // Catch: java.lang.Throwable -> L79
            r0.write(r8)     // Catch: java.io.IOException -> L2d java.lang.Throwable -> L79
            r0.write(r9)     // Catch: java.io.IOException -> L2d java.lang.Throwable -> L79
            r0.close()     // Catch: java.io.IOException -> L2d java.lang.Throwable -> L79
            goto L37
        L2d:
            r8 = move-exception
            java.util.logging.Logger r9 = org.jmrtd.protocol.EACCAAPDUSender.LOGGER     // Catch: java.lang.Throwable -> L79
            java.util.logging.Level r1 = java.util.logging.Level.WARNING     // Catch: java.lang.Throwable -> L79
            java.lang.String r2 = "Exception"
            r9.log(r1, r2, r8)     // Catch: java.lang.Throwable -> L79
        L37:
            net.sf.scuba.smartcards.CommandAPDU r8 = new net.sf.scuba.smartcards.CommandAPDU     // Catch: java.lang.Throwable -> L79
            r1 = 0
            r2 = 34
            byte[] r5 = r0.toByteArray()     // Catch: java.lang.Throwable -> L79
            r0 = r8
            r0.<init>(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L79
            org.jmrtd.protocol.SecureMessagingAPDUSender r9 = r6.secureMessagingSender     // Catch: java.lang.Throwable -> L79
            net.sf.scuba.smartcards.ResponseAPDU r7 = r9.transmit(r7, r8)     // Catch: java.lang.Throwable -> L79
            goto L62
        L4b:
            net.sf.scuba.smartcards.CommandAPDU r9 = new net.sf.scuba.smartcards.CommandAPDU     // Catch: java.lang.Throwable -> L79
            r1 = 0
            r2 = 34
            byte[] r5 = org.jmrtd.Util.toOIDBytes(r8)     // Catch: java.lang.Throwable -> L79
            r3 = 65
            r4 = 164(0xa4, float:2.3E-43)
            r0 = r9
            r0.<init>(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L79
            org.jmrtd.protocol.SecureMessagingAPDUSender r8 = r6.secureMessagingSender     // Catch: java.lang.Throwable -> L79
            net.sf.scuba.smartcards.ResponseAPDU r7 = r8.transmit(r7, r9)     // Catch: java.lang.Throwable -> L79
        L62:
            if (r7 != 0) goto L66
            r7 = -1
            goto L6b
        L66:
            int r7 = r7.getSW()     // Catch: java.lang.Throwable -> L79
            short r7 = (short) r7
        L6b:
            r8 = -28672(0xffffffffffff9000, float:NaN)
            if (r7 != r8) goto L71
            monitor-exit(r6)
            return
        L71:
            net.sf.scuba.smartcards.CardServiceException r8 = new net.sf.scuba.smartcards.CardServiceException     // Catch: java.lang.Throwable -> L79
            java.lang.String r9 = "Sending MSE AT failed"
            r8.<init>(r9, r7)     // Catch: java.lang.Throwable -> L79
            throw r8     // Catch: java.lang.Throwable -> L79
        L79:
            r7 = move-exception
            monitor-exit(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jmrtd.protocol.EACCAAPDUSender.sendMSESetATIntAuth(net.sf.scuba.smartcards.APDUWrapper, java.lang.String, java.math.BigInteger):void");
    }
}
