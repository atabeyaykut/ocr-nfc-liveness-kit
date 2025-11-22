package com.google.android.gms.internal.vision;

/* loaded from: classes.dex */
public final class b3 implements l2 {

    /* renamed from: a, reason: collision with root package name */
    public final n2 f3907a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3908b;

    /* renamed from: c, reason: collision with root package name */
    public final Object[] f3909c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3910d;

    public b3(i1 i1Var, String str, Object[] objArr) {
        this.f3907a = i1Var;
        this.f3908b = str;
        this.f3909c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.f3910d = cCharAt;
            return;
        }
        int r42 = cCharAt & 8191;
        int r02 = 1;
        int r12 = 13;
        while (true) {
            int r22 = r02 + 1;
            char cCharAt2 = str.charAt(r02);
            if (cCharAt2 < 55296) {
                this.f3910d = r42 | (cCharAt2 << r12);
                return;
            } else {
                r42 |= (cCharAt2 & 8191) << r12;
                r12 += 13;
                r02 = r22;
            }
        }
    }

    @Override // com.google.android.gms.internal.vision.l2
    public final int a() {
        return (this.f3910d & 1) == 1 ? 1 : 2;
    }

    @Override // com.google.android.gms.internal.vision.l2
    public final boolean b() {
        return (this.f3910d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.vision.l2
    public final n2 c() {
        return this.f3907a;
    }

    public final String d() {
        return this.f3908b;
    }

    public final Object[] e() {
        return this.f3909c;
    }
}
