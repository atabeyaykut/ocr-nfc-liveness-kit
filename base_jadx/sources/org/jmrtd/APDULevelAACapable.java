package org.jmrtd;

import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardServiceException;

/* loaded from: classes2.dex */
public interface APDULevelAACapable {
    byte[] sendInternalAuthenticate(APDUWrapper aPDUWrapper, int r22, byte[] bArr) throws CardServiceException;
}
