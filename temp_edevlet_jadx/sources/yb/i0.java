package yb;

import ma.b;

/* loaded from: classes2.dex */
public final class i0 {

    public /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f19422a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f19423b;

        static {
            int[] r02 = new int[gb.i.values().length];
            try {
                r02[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                r02[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                r02[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                r02[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f19422a = r02;
            int[] r03 = new int[b.a.values().length];
            try {
                r03[0] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                r03[1] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                r03[2] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                r03[3] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            int[] r04 = new int[gb.w.values().length];
            try {
                r04[0] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                r04[1] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                r04[4] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                r04[2] = 4;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                r04[3] = 5;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                r04[5] = 6;
            } catch (NoSuchFieldError unused14) {
            }
            f19423b = r04;
        }
    }

    public static final ma.o a(gb.w wVar) {
        ma.o oVar;
        String str;
        int r12 = wVar == null ? -1 : a.f19423b[wVar.ordinal()];
        if (r12 == 1) {
            oVar = ma.p.f10224d;
            str = "INTERNAL";
        } else if (r12 == 3) {
            oVar = ma.p.f10222b;
            str = "PRIVATE_TO_THIS";
        } else if (r12 == 4) {
            oVar = ma.p.f10223c;
            str = "PROTECTED";
        } else if (r12 == 5) {
            oVar = ma.p.f10225e;
            str = "PUBLIC";
        } else if (r12 != 6) {
            oVar = ma.p.f10221a;
            str = "PRIVATE";
        } else {
            oVar = ma.p.f;
            str = "LOCAL";
        }
        kotlin.jvm.internal.h.e(oVar, str);
        return oVar;
    }

    public static final b.a b(gb.i iVar) {
        int r22 = iVar == null ? -1 : a.f19422a[iVar.ordinal()];
        b.a aVar = b.a.DECLARATION;
        return r22 != 1 ? r22 != 2 ? r22 != 3 ? r22 != 4 ? aVar : b.a.SYNTHESIZED : b.a.DELEGATION : b.a.FAKE_OVERRIDE : aVar;
    }
}
