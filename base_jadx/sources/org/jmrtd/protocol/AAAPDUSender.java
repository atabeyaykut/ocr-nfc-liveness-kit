package org.jmrtd.protocol;

import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardService;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.smartcards.CommandAPDU;
import net.sf.scuba.smartcards.ResponseAPDU;
import net.sf.scuba.util.Hex;
import org.jmrtd.APDULevelAACapable;

/* loaded from: classes2.dex */
public class AAAPDUSender implements APDULevelAACapable {
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd.protocol");
    private SecureMessagingAPDUSender secureMessagingSender;

    public AAAPDUSender(CardService cardService) {
        this.secureMessagingSender = new SecureMessagingAPDUSender(cardService);
    }

    @Override // org.jmrtd.APDULevelAACapable
    public synchronized byte[] sendInternalAuthenticate(APDUWrapper aPDUWrapper, int r14, byte[] bArr) throws CardServiceException {
        ResponseAPDU responseAPDUTransmit;
        int sw;
        short s7;
        if (bArr != null) {
            if (bArr.length == 8) {
                int r142 = r14 <= 1848 ? 256 : 65536;
                CommandAPDU commandAPDU = new CommandAPDU(0, -120, 0, 0, bArr, r142);
                byte[] data = null;
                try {
                    responseAPDUTransmit = this.secureMessagingSender.transmit(aPDUWrapper, commandAPDU);
                    try {
                        sw = responseAPDUTransmit.getSW();
                    } catch (CardServiceException e10) {
                        e = e10;
                        LOGGER.log(Level.INFO, "Exception during transmission of command APDU = " + Hex.bytesToHexString(commandAPDU.getBytes()), (Throwable) e);
                        sw = e.getSW();
                        s7 = (short) sw;
                        if (s7 != -28672) {
                        }
                        if ((65280 & s7) == 24832) {
                        }
                        if (responseAPDUTransmit != null) {
                        }
                        throw new CardServiceException("Internal Authenticate failed", s7);
                    }
                } catch (CardServiceException e11) {
                    e = e11;
                    responseAPDUTransmit = null;
                }
                s7 = (short) sw;
                if (s7 != -28672 && responseAPDUTransmit != null) {
                    return responseAPDUTransmit.getData();
                }
                if ((65280 & s7) == 24832 || r142 != 256) {
                    if (responseAPDUTransmit != null || responseAPDUTransmit.getData() == null) {
                        throw new CardServiceException("Internal Authenticate failed", s7);
                    }
                    LOGGER.warning("Internal Authenticate may not have succeeded, got status word " + Integer.toHexString(65535 & s7));
                    return responseAPDUTransmit.getData();
                }
                byte[] data2 = responseAPDUTransmit == null ? null : responseAPDUTransmit.getData();
                ResponseAPDU responseAPDUTransmit2 = this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, -120, 0, 0, bArr, 65536));
                if (responseAPDUTransmit2 != null) {
                    data = responseAPDUTransmit2.getData();
                }
                if (data2 == null && data == null) {
                    throw new CardServiceException("Internal Authenticate failed", s7);
                }
                if (data2 != null && data == null) {
                    return data2;
                }
                if (data2 != null || data == null) {
                    return data2.length > data.length ? data2 : data;
                }
                return data;
            }
        }
        throw new IllegalArgumentException("rndIFD wrong length");
    }
}
