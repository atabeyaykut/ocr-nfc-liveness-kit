package org.bouncycastle.pqc.legacy.crypto.qtesla;

import android.support.v4.media.a;

/* loaded from: classes2.dex */
public class QTESLASecurityCategory {
    public static final int PROVABLY_SECURE_I = 5;
    public static final int PROVABLY_SECURE_III = 6;

    private QTESLASecurityCategory() {
    }

    public static String getName(int r22) {
        if (r22 == 5) {
            return "qTESLA-p-I";
        }
        if (r22 == 6) {
            return "qTESLA-p-III";
        }
        throw new IllegalArgumentException(a.d("unknown security category: ", r22));
    }

    public static int getPrivateSize(int r22) {
        if (r22 == 5) {
            return 5224;
        }
        if (r22 == 6) {
            return 12392;
        }
        throw new IllegalArgumentException(a.d("unknown security category: ", r22));
    }

    public static int getPublicSize(int r22) {
        if (r22 == 5) {
            return 14880;
        }
        if (r22 == 6) {
            return 38432;
        }
        throw new IllegalArgumentException(a.d("unknown security category: ", r22));
    }

    public static int getSignatureSize(int r22) {
        if (r22 == 5) {
            return 2592;
        }
        if (r22 == 6) {
            return 5664;
        }
        throw new IllegalArgumentException(a.d("unknown security category: ", r22));
    }

    public static void validate(int r22) {
        if (r22 != 5 && r22 != 6) {
            throw new IllegalArgumentException(a.d("unknown security category: ", r22));
        }
    }
}
