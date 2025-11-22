package com.google.crypto.tink.shaded.protobuf;

/* loaded from: classes2.dex */
public final class c1 implements o0 {

    /* renamed from: a, reason: collision with root package name */
    public final q0 f4244a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4245b;

    /* renamed from: c, reason: collision with root package name */
    public final Object[] f4246c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4247d;

    public c1(x xVar, String str, Object[] objArr) {
        char cCharAt;
        this.f4244a = xVar;
        this.f4245b = str;
        this.f4246c = objArr;
        int r42 = str.charAt(0);
        if (r42 >= 55296) {
            int r43 = r42 & 8191;
            int r02 = 1;
            int r12 = 13;
            while (true) {
                int r22 = r02 + 1;
                cCharAt = str.charAt(r02);
                if (cCharAt < 55296) {
                    break;
                }
                r43 |= (cCharAt & 8191) << r12;
                r12 += 13;
                r02 = r22;
            }
            r42 = r43 | (cCharAt << r12);
        }
        this.f4247d = r42;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.o0
    public final boolean a() {
        return (this.f4247d & 2) == 2;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.o0
    public final q0 b() {
        return this.f4244a;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.o0
    public final int c() {
        return (this.f4247d & 1) == 1 ? 1 : 2;
    }

    public final Object[] d() {
        return this.f4246c;
    }

    public final String e() {
        return this.f4245b;
    }
}
