package com.airbnb.epoxy;

import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class b0 {
    public static long a(long j10) {
        long j11 = j10 ^ (j10 << 21);
        long j12 = j11 ^ (j11 >>> 35);
        return j12 ^ (j12 << 4);
    }

    public static long b(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            return 0L;
        }
        long jCharAt = -3750763034362895579L;
        for (int r32 = 0; r32 < charSequence.length(); r32++) {
            jCharAt = (jCharAt ^ charSequence.charAt(r32)) * 1099511628211L;
        }
        return jCharAt;
    }
}
