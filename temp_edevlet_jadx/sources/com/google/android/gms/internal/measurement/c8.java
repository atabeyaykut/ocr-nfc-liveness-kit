package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class c8 implements p7 {

    /* renamed from: a, reason: collision with root package name */
    public final s7 f3412a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3413b;

    /* renamed from: c, reason: collision with root package name */
    public final Object[] f3414c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3415d;

    public c8(q6 q6Var, String str, Object[] objArr) {
        this.f3412a = q6Var;
        this.f3413b = str;
        this.f3414c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.f3415d = cCharAt;
            return;
        }
        int r42 = cCharAt & 8191;
        int r02 = 1;
        int r12 = 13;
        while (true) {
            int r22 = r02 + 1;
            char cCharAt2 = str.charAt(r02);
            if (cCharAt2 < 55296) {
                this.f3415d = r42 | (cCharAt2 << r12);
                return;
            } else {
                r42 |= (cCharAt2 & 8191) << r12;
                r12 += 13;
                r02 = r22;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final s7 a() {
        return this.f3412a;
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final boolean b() {
        return (this.f3415d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final int c() {
        return (this.f3415d & 1) == 1 ? 1 : 2;
    }

    public final String d() {
        return this.f3413b;
    }

    public final Object[] e() {
        return this.f3414c;
    }
}
