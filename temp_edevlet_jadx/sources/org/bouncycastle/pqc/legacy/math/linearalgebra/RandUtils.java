package org.bouncycastle.pqc.legacy.math.linearalgebra;

import java.security.SecureRandom;

/* loaded from: classes2.dex */
public class RandUtils {
    public static int nextInt(SecureRandom secureRandom, int r42) {
        int r02;
        int r12;
        if (((-r42) & r42) == r42) {
            return (int) ((r42 * (secureRandom.nextInt() >>> 1)) >> 31);
        }
        do {
            r02 = secureRandom.nextInt() >>> 1;
            r12 = r02 % r42;
        } while ((r42 - 1) + (r02 - r12) < 0);
        return r12;
    }
}
