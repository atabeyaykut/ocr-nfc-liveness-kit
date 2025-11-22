package org.bouncycastle.x509;

import java.util.Date;

/* loaded from: classes2.dex */
class CertStatus {
    public static final int UNDETERMINED = 12;
    public static final int UNREVOKED = 11;
    int certStatus = 11;
    Date revocationDate = null;

    public int getCertStatus() {
        return this.certStatus;
    }

    public Date getRevocationDate() {
        return this.revocationDate;
    }

    public void setCertStatus(int r12) {
        this.certStatus = r12;
    }

    public void setRevocationDate(Date date) {
        this.revocationDate = date;
    }
}
