package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
public final class n2 {

    /* renamed from: a, reason: collision with root package name */
    public final String f3240a;

    /* renamed from: b, reason: collision with root package name */
    public int f3241b = 0;

    public n2(String str) {
        this.f3240a = str;
    }

    public final int a() {
        int r02 = this.f3241b;
        this.f3241b = r02 + 1;
        String str = this.f3240a;
        char cCharAt = str.charAt(r02);
        if (cCharAt < 55296) {
            return cCharAt;
        }
        int r03 = cCharAt & 8191;
        int r32 = 13;
        while (true) {
            int r42 = this.f3241b;
            this.f3241b = r42 + 1;
            char cCharAt2 = str.charAt(r42);
            if (cCharAt2 < 55296) {
                return r03 | (cCharAt2 << r32);
            }
            r03 |= (cCharAt2 & 8191) << r32;
            r32 += 13;
        }
    }
}
