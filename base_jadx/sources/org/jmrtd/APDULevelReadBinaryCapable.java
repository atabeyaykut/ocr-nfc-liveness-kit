package org.jmrtd;

import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardServiceException;

/* loaded from: classes2.dex */
public interface APDULevelReadBinaryCapable {
    byte[] sendReadBinary(APDUWrapper aPDUWrapper, int r22, int r32, int r42, boolean z10, boolean z11) throws CardServiceException;

    void sendSelectApplet(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException;

    void sendSelectFile(APDUWrapper aPDUWrapper, short s7) throws CardServiceException;

    void sendSelectMF() throws CardServiceException;
}
