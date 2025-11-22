package org.jmrtd.protocol;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.scuba.smartcards.APDUEvent;
import net.sf.scuba.smartcards.APDUListener;
import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardService;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.smartcards.CommandAPDU;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ResponseAPDU;
import net.sf.scuba.util.Hex;
import org.jmrtd.Util;
import org.jmrtd.WrappedAPDUEvent;

/* loaded from: classes2.dex */
public class SecureMessagingAPDUSender {
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd.protocol");
    private int apduCount = 0;
    private CardService service;

    public SecureMessagingAPDUSender(CardService cardService) {
        this.service = cardService;
    }

    private byte[] continueSendingUsingResponseChaining(APDUWrapper aPDUWrapper, short s7, byte[] bArr) throws IOException, CardServiceException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            if ((65280 & s7) != 24832) {
                break;
            }
            try {
                try {
                    byteArrayOutputStream.write(bArr);
                    int r92 = s7 & 255;
                    if (r92 <= 0) {
                        break;
                    }
                    ResponseAPDU responseAPDUTransmit = transmit(aPDUWrapper, new CommandAPDU(0, -64, 0, 0, r92));
                    byte[] data = responseAPDUTransmit.getData();
                    s7 = (short) responseAPDUTransmit.getSW();
                    bArr = data;
                } catch (IOException e10) {
                    throw new CardServiceException("Could not write to stream", e10, s7);
                }
            } finally {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e11) {
                    LOGGER.log(Level.FINE, "Error closing stream", (Throwable) e11);
                }
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    private List<ResponseAPDU> sendUsingCommandChaining(CommandAPDU commandAPDU, int r14) throws CardServiceException {
        List<byte[]> listPartition = Util.partition(r14, commandAPDU.getData());
        ArrayList arrayList = new ArrayList(listPartition.size());
        int r32 = 0;
        for (byte[] bArr : listPartition) {
            r32++;
            boolean z10 = r32 >= listPartition.size();
            int cla = commandAPDU.getCLA();
            arrayList.add(this.service.transmit(new CommandAPDU(!z10 ? cla | 16 : cla, commandAPDU.getINS(), commandAPDU.getP1(), commandAPDU.getP2(), bArr, commandAPDU.getNe())));
        }
        return arrayList;
    }

    public void addAPDUListener(APDUListener aPDUListener) {
        this.service.addAPDUListener(aPDUListener);
    }

    public boolean isExtendedAPDULengthSupported() {
        return this.service.isExtendedAPDULengthSupported();
    }

    public void notifyExchangedAPDU(APDUEvent aPDUEvent) {
        Collection<APDUListener> aPDUListeners = this.service.getAPDUListeners();
        if (aPDUListeners == null || aPDUListeners.isEmpty()) {
            return;
        }
        Iterator<APDUListener> it = aPDUListeners.iterator();
        while (it.hasNext()) {
            it.next().exchangedAPDU(aPDUEvent);
        }
    }

    public void removeAPDUListener(APDUListener aPDUListener) {
        this.service.removeAPDUListener(aPDUListener);
    }

    public ResponseAPDU transmit(APDUWrapper aPDUWrapper, CommandAPDU commandAPDU) throws CardServiceException {
        CommandAPDU commandAPDUWrap = aPDUWrapper != null ? aPDUWrapper.wrap(commandAPDU) : commandAPDU;
        ResponseAPDU responseAPDUTransmit = this.service.transmit(commandAPDUWrap);
        short sw = (short) responseAPDUTransmit.getSW();
        if (aPDUWrapper == null) {
            int r52 = this.apduCount + 1;
            this.apduCount = r52;
            notifyExchangedAPDU(new APDUEvent(this, "PLAIN", r52, commandAPDUWrap, responseAPDUTransmit));
            return responseAPDUTransmit;
        }
        try {
            if ((sw & ISO7816.SW_WRONG_LENGTH) == 26368) {
                return responseAPDUTransmit;
            }
            try {
                if (responseAPDUTransmit.getBytes().length <= 2) {
                    throw new CardServiceException("Exception during transmission of wrapped APDU, C=" + Hex.bytesToHexString(commandAPDU.getBytes()), sw);
                }
                ResponseAPDU responseAPDUUnwrap = aPDUWrapper.unwrap(responseAPDUTransmit);
                String type = aPDUWrapper.getType();
                int r53 = this.apduCount + 1;
                this.apduCount = r53;
                notifyExchangedAPDU(new WrappedAPDUEvent(this, type, r53, commandAPDU, responseAPDUUnwrap, commandAPDUWrap, responseAPDUTransmit));
                return responseAPDUUnwrap;
            } catch (CardServiceException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new CardServiceException("Exception during transmission of wrapped APDU, C=" + Hex.bytesToHexString(commandAPDU.getBytes()), e11, sw);
            }
        } finally {
            String type2 = aPDUWrapper.getType();
            int r54 = this.apduCount + 1;
            this.apduCount = r54;
            notifyExchangedAPDU(new WrappedAPDUEvent(this, type2, r54, commandAPDU, responseAPDUTransmit, commandAPDUWrap, responseAPDUTransmit));
        }
    }
}
