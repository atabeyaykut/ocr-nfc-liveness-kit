package com.google.android.gms.internal.clearcut;

import java.io.IOException;

/* loaded from: classes.dex */
public final class t3 extends IOException {
    public t3(int r32, int r42) {
        StringBuilder sb2 = new StringBuilder(108);
        sb2.append("CodedOutputStream was writing to a flat byte array and ran out of space (pos ");
        sb2.append(r32);
        sb2.append(" limit ");
        sb2.append(r42);
        sb2.append(").");
        super(sb2.toString());
    }
}
