package org.jmrtd.protocol;

import androidx.browser.browseractions.b;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardService;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.smartcards.CommandAPDU;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ResponseAPDU;
import net.sf.scuba.util.Hex;
import org.jmrtd.APDULevelReadBinaryCapable;

/* loaded from: classes2.dex */
public class ReadBinaryAPDUSender implements APDULevelReadBinaryCapable {
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd.protocol");
    private SecureMessagingAPDUSender secureMessagingSender;
    private CardService service;

    public ReadBinaryAPDUSender(CardService cardService) {
        this.service = cardService;
        this.secureMessagingSender = new SecureMessagingAPDUSender(cardService);
    }

    private static void checkStatusWordAfterFileOperation(CommandAPDU commandAPDU, ResponseAPDU responseAPDU) throws CardServiceException {
        if (responseAPDU == null) {
            throw new CardServiceException("No response APDU");
        }
        byte[] data = responseAPDU.getData();
        short sw = (short) responseAPDU.getSW();
        String str = "CAPDU = " + Hex.bytesToHexString(commandAPDU.getBytes()) + ", RAPDU = " + Hex.bytesToHexString(responseAPDU.getBytes());
        if ((sw & ISO7816.SW_WRONG_LENGTH) == 26368 && (data == null || data.length == 0)) {
            throw new CardServiceException(b.e("Wrong length, ", str), sw);
        }
        if (sw != -28672) {
            if (sw == 25218) {
                if (data == null || data.length == 0) {
                    throw new CardServiceException(b.e("End of file, ", str), sw);
                }
            } else {
                if (sw != 27010) {
                    if (sw == 27266) {
                        throw new CardServiceException(b.e("File not found, ", str), sw);
                    }
                    if (sw != 27013 && sw != 27014) {
                        throw new CardServiceException(b.e("Error occured, ", str), sw);
                    }
                }
                throw new CardServiceException(b.e("Access to file denied, ", str), sw);
            }
        }
    }

    private static byte[] getResponseData(ResponseAPDU responseAPDU, boolean z10) throws CardServiceException {
        if (responseAPDU == null) {
            return null;
        }
        byte[] data = responseAPDU.getData();
        if (data == null) {
            throw new CardServiceException("Malformed read binary long response data");
        }
        if (!z10) {
            return data;
        }
        if (data[0] != 83) {
            throw new CardServiceException("Malformed read binary long response data");
        }
        int r12 = data[1];
        int r13 = (((byte) (r12 & 128)) == -128 ? (r12 & 15) + 1 : 1) + 1;
        int length = data.length - r13;
        byte[] bArr = new byte[length];
        System.arraycopy(data, r13, bArr, 0, length);
        return bArr;
    }

    @Override // org.jmrtd.APDULevelReadBinaryCapable
    public synchronized byte[] sendReadBinary(APDUWrapper aPDUWrapper, int r21, int r22, int r23, boolean z10, boolean z11) throws CardServiceException {
        CommandAPDU commandAPDU;
        int sw;
        int r82 = r23;
        synchronized (this) {
            ResponseAPDU responseAPDUTransmit = null;
            if (r82 == 0) {
                return null;
            }
            byte b10 = (byte) ((65280 & r22) >> 8);
            byte b11 = (byte) (r22 & 255);
            if (z11) {
                int r02 = r82 < 128 ? r82 + 2 : r82 < 256 ? r82 + 3 : r82;
                if (r02 > 256) {
                    r02 = 256;
                }
                commandAPDU = new CommandAPDU(0, -79, 0, 0, new byte[]{84, 2, b10, b11}, r02);
                r82 = r02;
            } else {
                commandAPDU = z10 ? new CommandAPDU(0, -80, (byte) r21, b11, r23) : new CommandAPDU(0, -80, b10, b11, r23);
            }
            try {
                responseAPDUTransmit = this.secureMessagingSender.transmit(aPDUWrapper, commandAPDU);
                sw = responseAPDUTransmit.getSW();
            } catch (CardServiceException e10) {
                if (this.service.isConnectionLost(e10)) {
                    throw e10;
                }
                LOGGER.log(Level.FINE, "Exception during READ BINARY", (Throwable) e10);
                sw = e10.getSW();
            }
            short s7 = (short) sw;
            byte[] responseData = getResponseData(responseAPDUTransmit, z11);
            if (responseData == null || responseData.length == 0) {
                LOGGER.warning("Empty response data: response APDU bytes = " + Arrays.toString(responseData) + ", le = " + r82 + ", sw = " + Integer.toHexString(s7));
            }
            checkStatusWordAfterFileOperation(commandAPDU, responseAPDUTransmit);
            return responseData;
        }
    }

    @Override // org.jmrtd.APDULevelReadBinaryCapable
    public synchronized void sendSelectApplet(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException {
        if (bArr == null) {
            throw new IllegalArgumentException("AID cannot be null");
        }
        CommandAPDU commandAPDU = new CommandAPDU(0, -92, 4, 12, bArr);
        checkStatusWordAfterFileOperation(commandAPDU, this.secureMessagingSender.transmit(aPDUWrapper, commandAPDU));
    }

    @Override // org.jmrtd.APDULevelReadBinaryCapable
    public synchronized void sendSelectFile(APDUWrapper aPDUWrapper, short s7) throws CardServiceException {
        CommandAPDU commandAPDU = new CommandAPDU(0, -92, 2, 12, new byte[]{(byte) ((s7 >> 8) & 255), (byte) (s7 & 255)}, 0);
        ResponseAPDU responseAPDUTransmit = this.secureMessagingSender.transmit(aPDUWrapper, commandAPDU);
        if (responseAPDUTransmit == null) {
            return;
        }
        checkStatusWordAfterFileOperation(commandAPDU, responseAPDUTransmit);
    }

    @Override // org.jmrtd.APDULevelReadBinaryCapable
    public synchronized void sendSelectMF() throws CardServiceException {
        CommandAPDU commandAPDU = new CommandAPDU(0, -92, 0, 12, new byte[]{63, 0});
        checkStatusWordAfterFileOperation(commandAPDU, this.secureMessagingSender.transmit(null, commandAPDU));
    }
}
