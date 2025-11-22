package org.jmrtd.protocol;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardService;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.smartcards.CommandAPDU;
import net.sf.scuba.smartcards.ResponseAPDU;
import net.sf.scuba.tlv.TLVUtil;
import org.jmrtd.APDULevelPACECapable;
import org.jmrtd.Util;
import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes2.dex */
public class PACEAPDUSender implements APDULevelPACECapable {
    public static final byte CAN_PACE_KEY_REFERENCE = 2;
    private static final byte INS_PACE_GENERAL_AUTHENTICATE = -122;
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd.protocol");
    public static final byte MRZ_PACE_KEY_REFERENCE = 1;
    public static final byte NO_PACE_KEY_REFERENCE = 0;
    public static final byte PIN_PACE_KEY_REFERENCE = 3;
    public static final byte PUK_PACE_KEY_REFERENCE = 4;
    private SecureMessagingAPDUSender secureMessagingSender;

    public PACEAPDUSender(CardService cardService) {
        this.secureMessagingSender = new SecureMessagingAPDUSender(cardService);
    }

    @Override // org.jmrtd.APDULevelPACECapable
    public synchronized byte[] sendGeneralAuthenticate(APDUWrapper aPDUWrapper, byte[] bArr, int r11, boolean z10) throws CardServiceException {
        ResponseAPDU responseAPDUTransmit;
        responseAPDUTransmit = this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(z10 ? 0 : 16, -122, 0, 0, TLVUtil.wrapDO(124, bArr), r11));
        short sw = (short) responseAPDUTransmit.getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending general authenticate failed", sw);
        }
        return TLVUtil.unwrapDO(124, responseAPDUTransmit.getData());
    }

    @Override // org.jmrtd.APDULevelPACECapable
    public synchronized void sendMSESetATMutualAuth(APDUWrapper aPDUWrapper, String str, int r92, byte[] bArr) throws CardServiceException {
        try {
            if (str == null) {
                throw new IllegalArgumentException("OID cannot be null");
            }
            byte[] oIDBytes = Util.toOIDBytes(str);
            if (r92 != 1 && r92 != 2 && r92 != 3 && r92 != 4) {
                throw new IllegalArgumentException("Unsupported key type reference (MRZ, CAN, etc), found " + r92);
            }
            byte[] bArrWrapDO = TLVUtil.wrapDO(ISO781611.CREATION_DATE_AND_TIME_TAG, new byte[]{(byte) r92});
            if (bArr != null) {
                bArr = TLVUtil.wrapDO(132, bArr);
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byteArrayOutputStream.write(oIDBytes);
                byteArrayOutputStream.write(bArrWrapDO);
                if (bArr != null) {
                    byteArrayOutputStream.write(bArr);
                }
                short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, 34, 193, 164, byteArrayOutputStream.toByteArray())).getSW();
                if (sw != -28672) {
                    throw new CardServiceException("Sending MSE AT failed", sw);
                }
            } catch (IOException e10) {
                LOGGER.log(Level.WARNING, "Error while copying data", (Throwable) e10);
                throw new IllegalStateException("Error while copying data");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
