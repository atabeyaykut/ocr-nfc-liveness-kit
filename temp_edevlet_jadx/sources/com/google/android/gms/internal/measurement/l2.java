package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class l2 implements t6 {

    /* renamed from: a, reason: collision with root package name */
    public static final l2 f3606a = new l2();

    @Override // com.google.android.gms.internal.measurement.t6
    public final boolean f(int r52) {
        char c10;
        if (r52 != 0) {
            c10 = 2;
            if (r52 != 1) {
                if (r52 != 2) {
                    c10 = 4;
                    if (r52 != 3) {
                        c10 = r52 != 4 ? (char) 0 : (char) 5;
                    }
                } else {
                    c10 = 3;
                }
            }
        } else {
            c10 = 1;
        }
        return c10 != 0;
    }
}
