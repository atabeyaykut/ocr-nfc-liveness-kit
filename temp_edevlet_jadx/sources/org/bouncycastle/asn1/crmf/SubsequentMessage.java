package org.bouncycastle.asn1.crmf;

import android.support.v4.media.a;
import org.bouncycastle.asn1.ASN1Integer;

/* loaded from: classes2.dex */
public class SubsequentMessage extends ASN1Integer {
    public static final SubsequentMessage encrCert = new SubsequentMessage(0);
    public static final SubsequentMessage challengeResp = new SubsequentMessage(1);

    private SubsequentMessage(int r32) {
        super(r32);
    }

    public static SubsequentMessage valueOf(int r22) {
        if (r22 == 0) {
            return encrCert;
        }
        if (r22 == 1) {
            return challengeResp;
        }
        throw new IllegalArgumentException(a.d("unknown value: ", r22));
    }
}
