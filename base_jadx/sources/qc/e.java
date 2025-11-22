package qc;

import java.util.ArrayList;
import m9.t;
import nc.a0;
import nc.w;
import pc.u;

/* loaded from: classes2.dex */
public abstract class e<T> implements kotlinx.coroutines.flow.f {

    /* renamed from: a, reason: collision with root package name */
    public final p9.f f13494a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13495b;

    /* renamed from: c, reason: collision with root package name */
    public final pc.f f13496c;

    public e(p9.f fVar, int r22, pc.f fVar2) {
        this.f13494a = fVar;
        this.f13495b = r22;
        this.f13496c = fVar2;
    }

    @Override // kotlinx.coroutines.flow.f
    public Object a(kotlinx.coroutines.flow.g<? super T> gVar, p9.d<? super l9.m> dVar) {
        Object objT = b8.f.t(new c(null, gVar, this), dVar);
        return objT == q9.a.COROUTINE_SUSPENDED ? objT : l9.m.f9594a;
    }

    public String b() {
        return null;
    }

    public abstract Object c(pc.r<? super T> rVar, p9.d<? super l9.m> dVar);

    public abstract e<T> d(p9.f fVar, int r22, pc.f fVar2);

    /* JADX WARN: Removed duplicated region for block: B:14:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.flow.f<T> e(p9.f r5, int r6, pc.f r7) {
        /*
            r4 = this;
            p9.f r0 = r4.f13494a
            p9.f r5 = r5.plus(r0)
            pc.f r1 = pc.f.SUSPEND
            pc.f r2 = r4.f13496c
            int r3 = r4.f13495b
            if (r7 == r1) goto Lf
            goto L26
        Lf:
            r7 = -3
            if (r3 != r7) goto L13
            goto L25
        L13:
            if (r6 != r7) goto L16
            goto L1c
        L16:
            r7 = -2
            if (r3 != r7) goto L1a
            goto L25
        L1a:
            if (r6 != r7) goto L1e
        L1c:
            r6 = r3
            goto L25
        L1e:
            int r6 = r6 + r3
            if (r6 < 0) goto L22
            goto L25
        L22:
            r6 = 2147483647(0x7fffffff, float:NaN)
        L25:
            r7 = r2
        L26:
            boolean r0 = kotlin.jvm.internal.h.a(r5, r0)
            if (r0 == 0) goto L31
            if (r6 != r3) goto L31
            if (r7 != r2) goto L31
            return r4
        L31:
            qc.e r5 = r4.d(r5, r6, r7)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: qc.e.e(p9.f, int, pc.f):kotlinx.coroutines.flow.f");
    }

    public u<T> f(a0 a0Var) {
        int r12 = this.f13495b;
        if (r12 == -3) {
            r12 = -2;
        }
        x9.p dVar = new d(this, null);
        pc.q qVar = new pc.q(w.b(a0Var, this.f13494a), b8.f.e(r12, this.f13496c, 4));
        qVar.l0(3, qVar, dVar);
        return qVar;
    }

    public String toString() {
        ArrayList arrayList = new ArrayList(4);
        String strB = b();
        if (strB != null) {
            arrayList.add(strB);
        }
        p9.g gVar = p9.g.f12870a;
        p9.f fVar = this.f13494a;
        if (fVar != gVar) {
            arrayList.add(kotlin.jvm.internal.h.k(fVar, "context="));
        }
        int r22 = this.f13495b;
        if (r22 != -3) {
            arrayList.add(kotlin.jvm.internal.h.k(Integer.valueOf(r22), "capacity="));
        }
        pc.f fVar2 = pc.f.SUSPEND;
        pc.f fVar3 = this.f13496c;
        if (fVar3 != fVar2) {
            arrayList.add(kotlin.jvm.internal.h.k(fVar3, "onBufferOverflow="));
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append('[');
        return android.support.v4.media.a.h(sb2, t.g1(arrayList, ", ", null, null, null, 62), ']');
    }
}
