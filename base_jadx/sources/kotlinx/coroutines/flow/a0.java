package kotlinx.coroutines.flow;

import java.util.Arrays;
import nc.k0;
import nc.l0;

/* loaded from: classes2.dex */
public class a0<T> extends qc.a<c0> implements z, g, f {

    /* renamed from: d, reason: collision with root package name */
    public final int f9014d;

    /* renamed from: e, reason: collision with root package name */
    public final int f9015e;
    public final pc.f f;

    /* renamed from: g, reason: collision with root package name */
    public Object[] f9016g;

    /* renamed from: h, reason: collision with root package name */
    public long f9017h;

    /* renamed from: j, reason: collision with root package name */
    public long f9018j;

    /* renamed from: k, reason: collision with root package name */
    public int f9019k;

    /* renamed from: l, reason: collision with root package name */
    public int f9020l;

    public static final class a implements k0 {

        /* renamed from: a, reason: collision with root package name */
        public final a0<?> f9021a;

        /* renamed from: b, reason: collision with root package name */
        public final long f9022b;

        /* renamed from: c, reason: collision with root package name */
        public final Object f9023c;

        /* renamed from: d, reason: collision with root package name */
        public final p9.d<l9.m> f9024d;

        public a(a0 a0Var, long j10, Object obj, nc.j jVar) {
            this.f9021a = a0Var;
            this.f9022b = j10;
            this.f9023c = obj;
            this.f9024d = jVar;
        }

        @Override // nc.k0
        public final void dispose() {
            a0<?> a0Var = this.f9021a;
            synchronized (a0Var) {
                if (this.f9022b >= a0Var.l()) {
                    Object[] objArr = a0Var.f9016g;
                    kotlin.jvm.internal.h.c(objArr);
                    int r32 = (int) this.f9022b;
                    if (objArr[(objArr.length - 1) & r32] == this) {
                        objArr[r32 & (objArr.length - 1)] = c5.v.f2050c;
                        a0Var.g();
                        l9.m mVar = l9.m.f9594a;
                    }
                }
            }
        }
    }

    public a0(int r32) {
        pc.f fVar = pc.f.SUSPEND;
        this.f9014d = 1;
        this.f9015e = r32;
        this.f = fVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00b0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static q9.a h(kotlinx.coroutines.flow.a0 r8, kotlinx.coroutines.flow.g r9, p9.d r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.a0.h(kotlinx.coroutines.flow.a0, kotlinx.coroutines.flow.g, p9.d):q9.a");
    }

    @Override // kotlinx.coroutines.flow.z, kotlinx.coroutines.flow.f
    public final Object a(g<? super T> gVar, p9.d<?> dVar) throws Throwable {
        h(this, gVar, dVar);
        return q9.a.COROUTINE_SUSPENDED;
    }

    @Override // qc.a
    public final qc.b c() {
        return new c0();
    }

    @Override // qc.a
    public final qc.b[] d() {
        return new c0[2];
    }

    @Override // kotlinx.coroutines.flow.g
    public final Object emit(T t10, p9.d<? super l9.m> dVar) {
        p9.d<l9.m>[] dVarArrK;
        a aVar;
        if (!n(t10)) {
            nc.j jVar = new nc.j(1, c5.w.x(dVar));
            jVar.n();
            p9.d<l9.m>[] dVarArrK2 = b8.f.f1183g;
            synchronized (this) {
                if (o(t10)) {
                    jVar.resumeWith(l9.m.f9594a);
                    dVarArrK = k(dVarArrK2);
                    aVar = null;
                } else {
                    a aVar2 = new a(this, this.f9019k + this.f9020l + l(), t10, jVar);
                    j(aVar2);
                    this.f9020l++;
                    if (this.f9015e == 0) {
                        dVarArrK2 = k(dVarArrK2);
                    }
                    dVarArrK = dVarArrK2;
                    aVar = aVar2;
                }
            }
            if (aVar != null) {
                jVar.D(new l0(aVar));
            }
            int length = dVarArrK.length;
            int r12 = 0;
            while (r12 < length) {
                p9.d<l9.m> dVar2 = dVarArrK[r12];
                r12++;
                if (dVar2 != null) {
                    dVar2.resumeWith(l9.m.f9594a);
                }
            }
            Object objM = jVar.m();
            q9.a aVar3 = q9.a.COROUTINE_SUSPENDED;
            if (objM != aVar3) {
                objM = l9.m.f9594a;
            }
            if (objM == aVar3) {
                return objM;
            }
        }
        return l9.m.f9594a;
    }

    public final Object f(c0 c0Var, b0 b0Var) {
        nc.j jVar = new nc.j(1, c5.w.x(b0Var));
        jVar.n();
        synchronized (this) {
            if (p(c0Var) < 0) {
                c0Var.f9039b = jVar;
            } else {
                jVar.resumeWith(l9.m.f9594a);
            }
            l9.m mVar = l9.m.f9594a;
        }
        Object objM = jVar.m();
        return objM == q9.a.COROUTINE_SUSPENDED ? objM : l9.m.f9594a;
    }

    public final void g() {
        if (this.f9015e != 0 || this.f9020l > 1) {
            Object[] objArr = this.f9016g;
            kotlin.jvm.internal.h.c(objArr);
            while (this.f9020l > 0) {
                long jL = l();
                int r32 = this.f9019k;
                int r42 = this.f9020l;
                if (objArr[(objArr.length - 1) & ((int) ((jL + (r32 + r42)) - 1))] != c5.v.f2050c) {
                    return;
                }
                this.f9020l = r42 - 1;
                objArr[(objArr.length - 1) & ((int) (l() + this.f9019k + this.f9020l))] = null;
            }
        }
    }

    public final void i() {
        Object[] objArr;
        Object[] objArr2 = this.f9016g;
        kotlin.jvm.internal.h.c(objArr2);
        objArr2[(objArr2.length - 1) & ((int) l())] = null;
        this.f9019k--;
        long jL = l() + 1;
        if (this.f9017h < jL) {
            this.f9017h = jL;
        }
        if (this.f9018j < jL) {
            if (this.f13485b != 0 && (objArr = this.f13484a) != null) {
                int length = objArr.length;
                int r42 = 0;
                while (r42 < length) {
                    Object obj = objArr[r42];
                    r42++;
                    if (obj != null) {
                        c0 c0Var = (c0) obj;
                        long j10 = c0Var.f9038a;
                        if (j10 >= 0 && j10 < jL) {
                            c0Var.f9038a = jL;
                        }
                    }
                }
            }
            this.f9018j = jL;
        }
    }

    public final void j(Object obj) {
        int r02 = this.f9019k + this.f9020l;
        Object[] objArrM = this.f9016g;
        if (objArrM == null) {
            objArrM = m(null, 0, 2);
        } else if (r02 >= objArrM.length) {
            objArrM = m(objArrM, r02, objArrM.length * 2);
        }
        objArrM[((int) (l() + r02)) & (objArrM.length - 1)] = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v6, types: [java.lang.Object, java.lang.Object[]] */
    public final p9.d<l9.m>[] k(p9.d<l9.m>[] dVarArr) {
        Object[] objArr;
        c0 c0Var;
        nc.j jVar;
        int length = dVarArr.length;
        if (this.f13485b != 0 && (objArr = this.f13484a) != null) {
            int length2 = objArr.length;
            int r32 = 0;
            while (r32 < length2) {
                Object obj = objArr[r32];
                r32++;
                if (obj != null && (jVar = (c0Var = (c0) obj).f9039b) != null && p(c0Var) >= 0) {
                    int length3 = dVarArr.length;
                    dVarArr = dVarArr;
                    if (length >= length3) {
                        ?? CopyOf = Arrays.copyOf(dVarArr, Math.max(2, dVarArr.length * 2));
                        kotlin.jvm.internal.h.e(CopyOf, "copyOf(this, newSize)");
                        dVarArr = CopyOf;
                    }
                    dVarArr[length] = jVar;
                    c0Var.f9039b = null;
                    length++;
                }
            }
        }
        return dVarArr;
    }

    public final long l() {
        return Math.min(this.f9018j, this.f9017h);
    }

    public final Object[] m(Object[] objArr, int r92, int r10) {
        int r02 = 0;
        if (!(r10 > 0)) {
            throw new IllegalStateException("Buffer size overflow".toString());
        }
        Object[] objArr2 = new Object[r10];
        this.f9016g = objArr2;
        if (objArr == null) {
            return objArr2;
        }
        long jL = l();
        while (r02 < r92) {
            int r42 = r02 + 1;
            int r03 = (int) (r02 + jL);
            objArr2[r03 & (r10 - 1)] = objArr[(objArr.length - 1) & r03];
            r02 = r42;
        }
        return objArr2;
    }

    public final boolean n(T t10) {
        int r12;
        boolean z10;
        p9.d<l9.m>[] dVarArrK = b8.f.f1183g;
        synchronized (this) {
            r12 = 0;
            if (o(t10)) {
                dVarArrK = k(dVarArrK);
                z10 = true;
            } else {
                z10 = false;
            }
        }
        int length = dVarArrK.length;
        while (r12 < length) {
            p9.d<l9.m> dVar = dVarArrK[r12];
            r12++;
            if (dVar != null) {
                dVar.resumeWith(l9.m.f9594a);
            }
        }
        return z10;
    }

    public final boolean o(T t10) {
        int r02 = this.f13485b;
        int r12 = this.f9014d;
        if (r02 == 0) {
            if (r12 != 0) {
                j(t10);
                int r03 = this.f9019k + 1;
                this.f9019k = r03;
                if (r03 > r12) {
                    i();
                }
                this.f9018j = l() + this.f9019k;
            }
            return true;
        }
        int r04 = this.f9019k;
        int r22 = this.f9015e;
        if (r04 >= r22 && this.f9018j <= this.f9017h) {
            int r05 = this.f.ordinal();
            if (r05 == 0) {
                return false;
            }
            if (r05 == 2) {
                return true;
            }
        }
        j(t10);
        int r06 = this.f9019k + 1;
        this.f9019k = r06;
        if (r06 > r22) {
            i();
        }
        long jL = l() + this.f9019k;
        long j10 = this.f9017h;
        if (((int) (jL - j10)) > r12) {
            r(j10 + 1, this.f9018j, l() + this.f9019k, l() + this.f9019k + this.f9020l);
        }
        return true;
    }

    public final long p(c0 c0Var) {
        long j10 = c0Var.f9038a;
        if (j10 < l() + this.f9019k) {
            return j10;
        }
        if (this.f9015e <= 0 && j10 <= l() && this.f9020l != 0) {
            return j10;
        }
        return -1L;
    }

    public final Object q(c0 c0Var) {
        Object obj;
        p9.d<l9.m>[] dVarArrS = b8.f.f1183g;
        synchronized (this) {
            long jP = p(c0Var);
            if (jP < 0) {
                obj = c5.v.f2050c;
            } else {
                long j10 = c0Var.f9038a;
                Object[] objArr = this.f9016g;
                kotlin.jvm.internal.h.c(objArr);
                Object obj2 = objArr[((int) jP) & (objArr.length - 1)];
                if (obj2 instanceof a) {
                    obj2 = ((a) obj2).f9023c;
                }
                c0Var.f9038a = jP + 1;
                Object obj3 = obj2;
                dVarArrS = s(j10);
                obj = obj3;
            }
        }
        int length = dVarArrS.length;
        int r22 = 0;
        while (r22 < length) {
            p9.d<l9.m> dVar = dVarArrS[r22];
            r22++;
            if (dVar != null) {
                dVar.resumeWith(l9.m.f9594a);
            }
        }
        return obj;
    }

    public final void r(long j10, long j11, long j12, long j13) {
        long jMin = Math.min(j11, j10);
        for (long jL = l(); jL < jMin; jL = 1 + jL) {
            Object[] objArr = this.f9016g;
            kotlin.jvm.internal.h.c(objArr);
            objArr[(objArr.length - 1) & ((int) jL)] = null;
        }
        this.f9017h = j10;
        this.f9018j = j11;
        this.f9019k = (int) (j12 - jMin);
        this.f9020l = (int) (j13 - j12);
    }

    public final p9.d<l9.m>[] s(long j10) {
        long j11;
        p9.d<l9.m>[] dVarArr;
        Object[] objArr;
        long j12 = this.f9018j;
        p9.d<l9.m>[] dVarArr2 = b8.f.f1183g;
        if (j10 > j12) {
            return dVarArr2;
        }
        long jL = l();
        long j13 = this.f9019k + jL;
        long j14 = 1;
        int r72 = this.f9015e;
        if (r72 == 0 && this.f9020l > 0) {
            j13++;
        }
        if (this.f13485b != 0 && (objArr = this.f13484a) != null) {
            int length = objArr.length;
            int r12 = 0;
            while (r12 < length) {
                Object obj = objArr[r12];
                r12++;
                if (obj != null) {
                    long j15 = ((c0) obj).f9038a;
                    if (j15 >= 0 && j15 < j13) {
                        j13 = j15;
                    }
                }
            }
        }
        if (j13 <= this.f9018j) {
            return dVarArr2;
        }
        long jL2 = l() + this.f9019k;
        int r82 = this.f13485b > 0 ? Math.min(this.f9020l, r72 - ((int) (jL2 - j13))) : this.f9020l;
        long j16 = this.f9020l + jL2;
        kotlinx.coroutines.internal.u uVar = c5.v.f2050c;
        if (r82 > 0) {
            p9.d<l9.m>[] dVarArr3 = new p9.d[r82];
            Object[] objArr2 = this.f9016g;
            kotlin.jvm.internal.h.c(objArr2);
            long j17 = jL2;
            int r16 = 0;
            while (true) {
                if (jL2 >= j16) {
                    j11 = j13;
                    jL2 = j17;
                    dVarArr = dVarArr3;
                    break;
                }
                long j18 = jL2 + j14;
                int r122 = (int) jL2;
                Object obj2 = objArr2[(objArr2.length - 1) & r122];
                if (obj2 == uVar) {
                    dVarArr3 = dVarArr3;
                    jL2 = j18;
                    j13 = j13;
                } else {
                    if (obj2 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter");
                    }
                    a aVar = (a) obj2;
                    int r52 = r16 + 1;
                    dVarArr3[r16] = aVar.f9024d;
                    objArr2[(objArr2.length - 1) & r122] = uVar;
                    j11 = j13;
                    p9.d<l9.m>[] dVarArr4 = dVarArr3;
                    long j19 = j17;
                    objArr2[((int) j19) & (objArr2.length - 1)] = aVar.f9023c;
                    j17 = j19 + 1;
                    if (r52 >= r82) {
                        dVarArr = dVarArr4;
                        jL2 = j17;
                        break;
                    }
                    dVarArr3 = dVarArr4;
                    r16 = r52;
                    jL2 = j18;
                    j13 = j11;
                    j14 = 1;
                }
            }
        } else {
            j11 = j13;
            dVarArr = dVarArr2;
        }
        int r13 = (int) (jL2 - jL);
        long j20 = this.f13485b == 0 ? jL2 : j11;
        long jMax = Math.max(this.f9017h, jL2 - Math.min(this.f9014d, r13));
        if (r72 == 0 && jMax < j16) {
            Object[] objArr3 = this.f9016g;
            kotlin.jvm.internal.h.c(objArr3);
            if (kotlin.jvm.internal.h.a(objArr3[((int) jMax) & (objArr3.length - 1)], uVar)) {
                jL2++;
                jMax++;
            }
        }
        r(jMax, j20, jL2, j16);
        g();
        return (dVarArr.length == 0) ^ true ? k(dVarArr) : dVarArr;
    }
}
