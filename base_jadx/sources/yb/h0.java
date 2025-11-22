package yb;

import cc.t1;
import gb.b;
import gb.p;
import gb.r;

/* loaded from: classes2.dex */
public final class h0 {

    public /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f19420a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f19421b;

        static {
            int[] r02 = new int[gb.j.values().length];
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
            f19420a = r02;
            int[] r03 = new int[ma.a0.values().length];
            try {
                r03[0] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                r03[2] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                r03[3] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                r03[1] = 4;
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
            int[] r05 = new int[b.c.values().length];
            try {
                r05[0] = 1;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                r05[1] = 2;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                r05[2] = 3;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                r05[3] = 4;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                r05[4] = 5;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                r05[5] = 6;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                r05[6] = 7;
            } catch (NoSuchFieldError unused21) {
            }
            f19421b = r05;
            int[] r06 = new int[g.d.d(6).length];
            try {
                r06[0] = 1;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                r06[1] = 2;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                r06[2] = 3;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                r06[3] = 4;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                r06[4] = 5;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                r06[5] = 6;
            } catch (NoSuchFieldError unused27) {
            }
            int[] r07 = new int[r.c.values().length];
            try {
                r07[0] = 1;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                r07[1] = 2;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                r07[2] = 3;
            } catch (NoSuchFieldError unused30) {
            }
            int[] r08 = new int[p.b.c.values().length];
            try {
                r08[0] = 1;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                r08[1] = 2;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                r08[2] = 3;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                r08[3] = 4;
            } catch (NoSuchFieldError unused34) {
            }
            int[] r09 = new int[t1.values().length];
            try {
                r09[1] = 1;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                r09[2] = 2;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                r09[0] = 3;
            } catch (NoSuchFieldError unused37) {
            }
        }
    }

    public static ma.a0 a(gb.j jVar) {
        int r22 = jVar == null ? -1 : a.f19420a[jVar.ordinal()];
        ma.a0 a0Var = ma.a0.FINAL;
        return r22 != 1 ? r22 != 2 ? r22 != 3 ? r22 != 4 ? a0Var : ma.a0.SEALED : ma.a0.ABSTRACT : ma.a0.OPEN : a0Var;
    }
}
