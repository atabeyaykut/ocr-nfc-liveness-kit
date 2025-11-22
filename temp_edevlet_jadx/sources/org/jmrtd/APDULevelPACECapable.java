package org.jmrtd;

import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardServiceException;

/* loaded from: classes2.dex */
public interface APDULevelPACECapable {
    byte[] sendGeneralAuthenticate(APDUWrapper aPDUWrapper, byte[] bArr, int r32, boolean z10) throws CardServiceException;

    void sendMSESetATMutualAuth(APDUWrapper aPDUWrapper, String str, int r32, byte[] bArr) throws CardServiceException;
}
