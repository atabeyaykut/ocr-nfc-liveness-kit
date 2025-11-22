package org.bouncycastle.jcajce.provider.asymmetric.util;

/* loaded from: classes2.dex */
public class PrimeCertaintyCalculator {
    private PrimeCertaintyCalculator() {
    }

    public static int getDefaultCertainty(int r12) {
        if (r12 <= 1024) {
            return 80;
        }
        return (((r12 - 1) / 1024) * 16) + 96;
    }
}
