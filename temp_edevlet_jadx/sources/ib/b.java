package ib;

import gb.b;
import gb.j;
import gb.w;
import mb.i;

/* loaded from: classes2.dex */
public final class b {
    public static final a A;
    public static final a B;
    public static final a C;
    public static final a D;
    public static final a E;
    public static final a F;
    public static final a G;
    public static final a H;
    public static final a I;
    public static final a J;
    public static final a K;
    public static final a L;
    public static final a M;

    /* renamed from: a, reason: collision with root package name */
    public static final a f7324a;

    /* renamed from: b, reason: collision with root package name */
    public static final a f7325b;

    /* renamed from: c, reason: collision with root package name */
    public static final a f7326c;

    /* renamed from: d, reason: collision with root package name */
    public static final C0126b f7327d;

    /* renamed from: e, reason: collision with root package name */
    public static final C0126b f7328e;
    public static final C0126b f;

    /* renamed from: g, reason: collision with root package name */
    public static final a f7329g;

    /* renamed from: h, reason: collision with root package name */
    public static final a f7330h;

    /* renamed from: i, reason: collision with root package name */
    public static final a f7331i;

    /* renamed from: j, reason: collision with root package name */
    public static final a f7332j;

    /* renamed from: k, reason: collision with root package name */
    public static final a f7333k;

    /* renamed from: l, reason: collision with root package name */
    public static final a f7334l;

    /* renamed from: m, reason: collision with root package name */
    public static final a f7335m;

    /* renamed from: n, reason: collision with root package name */
    public static final a f7336n;

    /* renamed from: o, reason: collision with root package name */
    public static final C0126b f7337o;

    /* renamed from: p, reason: collision with root package name */
    public static final a f7338p;

    /* renamed from: q, reason: collision with root package name */
    public static final a f7339q;

    /* renamed from: r, reason: collision with root package name */
    public static final a f7340r;

    /* renamed from: s, reason: collision with root package name */
    public static final a f7341s;

    /* renamed from: t, reason: collision with root package name */
    public static final a f7342t;

    /* renamed from: u, reason: collision with root package name */
    public static final a f7343u;

    /* renamed from: v, reason: collision with root package name */
    public static final a f7344v;
    public static final a w;

    /* renamed from: x, reason: collision with root package name */
    public static final a f7345x;

    /* renamed from: y, reason: collision with root package name */
    public static final a f7346y;

    /* renamed from: z, reason: collision with root package name */
    public static final a f7347z;

    public static class a extends c<Boolean> {
        public a(int r22) {
            super(r22, 1);
        }

        public final Boolean c(int r42) {
            Boolean boolValueOf = Boolean.valueOf((r42 & (1 << this.f7349a)) != 0);
            if (boolValueOf != null) {
                return boolValueOf;
            }
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField", "get"));
        }

        public final int d(Boolean bool) {
            if (bool.booleanValue()) {
                return 1 << this.f7349a;
            }
            return 0;
        }
    }

    /* renamed from: ib.b$b, reason: collision with other inner class name */
    public static class C0126b<E extends i.a> extends c<E> {

        /* renamed from: c, reason: collision with root package name */
        public final E[] f7348c;

        /* JADX WARN: Illegal instructions before constructor call */
        public C0126b(int r52, E[] eArr) {
            int r02 = 1;
            if (eArr == null) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "enumEntries", "kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField", "bitWidth"));
            }
            int length = eArr.length - 1;
            if (length != 0) {
                for (int r22 = 31; r22 >= 0; r22--) {
                    if (((1 << r22) & length) != 0) {
                        r02 = 1 + r22;
                    }
                }
                throw new IllegalStateException("Empty enum: " + eArr.getClass());
            }
            super(r52, r02);
            this.f7348c = eArr;
        }

        public final Object c(int r6) {
            int r02 = (1 << this.f7350b) - 1;
            int r12 = this.f7349a;
            int r62 = (r6 & (r02 << r12)) >> r12;
            for (E e10 : this.f7348c) {
                if (e10.f() == r62) {
                    return e10;
                }
            }
            return null;
        }
    }

    public static abstract class c<E> {

        /* renamed from: a, reason: collision with root package name */
        public final int f7349a;

        /* renamed from: b, reason: collision with root package name */
        public final int f7350b;

        public c(int r12, int r22) {
            this.f7349a = r12;
            this.f7350b = r22;
        }

        public static a a(c<?> cVar) {
            return new a(cVar.f7349a + cVar.f7350b);
        }

        public static a b() {
            return new a(0);
        }
    }

    static {
        a aVarB = c.b();
        f7324a = aVarB;
        f7325b = c.a(aVarB);
        a aVarB2 = c.b();
        f7326c = aVarB2;
        C0126b c0126b = new C0126b(1, w.values());
        f7327d = c0126b;
        j[] jVarArrValues = j.values();
        int r32 = 1 + c0126b.f7350b;
        C0126b c0126b2 = new C0126b(r32, jVarArrValues);
        f7328e = c0126b2;
        b.c[] cVarArrValues = b.c.values();
        int r52 = c0126b2.f7350b;
        C0126b c0126b3 = new C0126b(r32 + r52, cVarArrValues);
        f = c0126b3;
        a aVarA = c.a(c0126b3);
        f7329g = aVarA;
        a aVarA2 = c.a(aVarA);
        f7330h = aVarA2;
        a aVarA3 = c.a(aVarA2);
        f7331i = aVarA3;
        a aVarA4 = c.a(aVarA3);
        f7332j = aVarA4;
        a aVarA5 = c.a(aVarA4);
        f7333k = aVarA5;
        f7334l = c.a(aVarA5);
        a aVarA6 = c.a(c0126b);
        f7335m = aVarA6;
        f7336n = c.a(aVarA6);
        C0126b c0126b4 = new C0126b(r32 + r52, gb.i.values());
        f7337o = c0126b4;
        a aVarA7 = c.a(c0126b4);
        f7338p = aVarA7;
        a aVarA8 = c.a(aVarA7);
        f7339q = aVarA8;
        a aVarA9 = c.a(aVarA8);
        f7340r = aVarA9;
        a aVarA10 = c.a(aVarA9);
        f7341s = aVarA10;
        a aVarA11 = c.a(aVarA10);
        f7342t = aVarA11;
        a aVarA12 = c.a(aVarA11);
        f7343u = aVarA12;
        a aVarA13 = c.a(aVarA12);
        f7344v = aVarA13;
        w = c.a(aVarA13);
        a aVarA14 = c.a(c0126b4);
        f7345x = aVarA14;
        a aVarA15 = c.a(aVarA14);
        f7346y = aVarA15;
        a aVarA16 = c.a(aVarA15);
        f7347z = aVarA16;
        a aVarA17 = c.a(aVarA16);
        A = aVarA17;
        a aVarA18 = c.a(aVarA17);
        B = aVarA18;
        a aVarA19 = c.a(aVarA18);
        C = aVarA19;
        a aVarA20 = c.a(aVarA19);
        D = aVarA20;
        a aVarA21 = c.a(aVarA20);
        E = aVarA21;
        F = c.a(aVarA21);
        a aVarA22 = c.a(aVarB2);
        G = aVarA22;
        a aVarA23 = c.a(aVarA22);
        H = aVarA23;
        I = c.a(aVarA23);
        a aVarA24 = c.a(c0126b2);
        J = aVarA24;
        a aVarA25 = c.a(aVarA24);
        K = aVarA25;
        L = c.a(aVarA25);
        M = c.b();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void a(int r5) {
        /*
            r0 = 3
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r1 = 1
            r2 = 0
            r3 = 2
            if (r5 == r1) goto L2b
            if (r5 == r3) goto L26
            r4 = 5
            if (r5 == r4) goto L2b
            r4 = 6
            if (r5 == r4) goto L21
            r4 = 8
            if (r5 == r4) goto L2b
            r4 = 9
            if (r5 == r4) goto L21
            r4 = 11
            if (r5 == r4) goto L2b
            java.lang.String r4 = "visibility"
            r0[r2] = r4
            goto L2f
        L21:
            java.lang.String r4 = "memberKind"
            r0[r2] = r4
            goto L2f
        L26:
            java.lang.String r4 = "kind"
            r0[r2] = r4
            goto L2f
        L2b:
            java.lang.String r4 = "modality"
            r0[r2] = r4
        L2f:
            java.lang.String r2 = "kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags"
            r0[r1] = r2
            switch(r5) {
                case 3: goto L4a;
                case 4: goto L45;
                case 5: goto L45;
                case 6: goto L45;
                case 7: goto L40;
                case 8: goto L40;
                case 9: goto L40;
                case 10: goto L3b;
                case 11: goto L3b;
                default: goto L36;
            }
        L36:
            java.lang.String r5 = "getClassFlags"
            r0[r3] = r5
            goto L4e
        L3b:
            java.lang.String r5 = "getAccessorFlags"
            r0[r3] = r5
            goto L4e
        L40:
            java.lang.String r5 = "getPropertyFlags"
            r0[r3] = r5
            goto L4e
        L45:
            java.lang.String r5 = "getFunctionFlags"
            r0[r3] = r5
            goto L4e
        L4a:
            java.lang.String r5 = "getConstructorFlags"
            r0[r3] = r5
        L4e:
            java.lang.String r5 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
            java.lang.String r5 = java.lang.String.format(r5, r0)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r0.<init>(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ib.b.a(int):void");
    }
}
