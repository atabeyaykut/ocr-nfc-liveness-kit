package org.bouncycastle.pqc.crypto.gemss;

import androidx.core.location.LocationRequestCompat;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* loaded from: classes2.dex */
public class GeMSSUtils {
    public static long CMP_LT_UINT(long j10, long j11) {
        long j12 = j10 >>> 63;
        long j13 = j11 >>> 63;
        long j14 = j12 ^ j13;
        return ((((j10 & LocationRequestCompat.PASSIVE_INTERVAL) - (j11 & LocationRequestCompat.PASSIVE_INTERVAL)) >>> 63) & (1 ^ j14)) ^ (((j12 - j13) >>> 63) & j14);
    }

    public static int Highest_One(int r12) {
        int r13 = r12 | (r12 >>> 1);
        int r14 = r13 | (r13 >>> 2);
        int r15 = r14 | (r14 >>> 4);
        int r16 = r15 | (r15 >>> 8);
        int r17 = r16 | (r16 >>> 16);
        return r17 ^ (r17 >>> 1);
    }

    public static long NORBITS_UINT(long j10) {
        return (((j10 | (j10 << 32)) >>> 32) - 1) >>> 63;
    }

    public static long ORBITS_UINT(long j10) {
        return (((j10 | (j10 << 32)) >>> 32) + BodyPartID.bodyIdMax) >>> 32;
    }

    public static long XORBITS_UINT(long j10) {
        long j11 = j10 ^ (j10 << 1);
        return (((j11 ^ (j11 << 2)) & (-8608480567731124088L)) * 1229782938247303441L) >>> 63;
    }

    public static long maskUINT(int r42) {
        if (r42 != 0) {
            return (1 << r42) - 1;
        }
        return -1L;
    }
}
