package qb;

import cc.a1;
import cc.c1;
import cc.e0;
import cc.f0;
import cc.k1;
import cc.m0;
import cc.n1;
import cc.t1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import ma.b0;
import ma.w0;

/* loaded from: classes2.dex */
public final class o implements c1 {

    /* renamed from: a, reason: collision with root package name */
    public final long f13475a;

    /* renamed from: b, reason: collision with root package name */
    public final b0 f13476b;

    /* renamed from: c, reason: collision with root package name */
    public final Set<e0> f13477c;

    /* renamed from: d, reason: collision with root package name */
    public final m0 f13478d;

    /* renamed from: e, reason: collision with root package name */
    public final l9.j f13479e;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<List<m0>> {
        public a() {
            super(0);
        }

        @Override // x9.a
        public final List<m0> invoke() {
            boolean z10 = true;
            o oVar = o.this;
            m0 m0VarQ = oVar.m().k("Comparable").q();
            kotlin.jvm.internal.h.e(m0VarQ, "builtIns.comparable.defaultType");
            ArrayList arrayListY = b8.f.Y(n1.d(m0VarQ, b8.f.S(new k1(oVar.f13478d, t1.IN_VARIANCE)), null, 2));
            b0 b0Var = oVar.f13476b;
            kotlin.jvm.internal.h.f(b0Var, "<this>");
            m0[] m0VarArr = new m0[4];
            ja.k kVarM = b0Var.m();
            kVarM.getClass();
            m0 m0VarS = kVarM.s(ja.l.INT);
            if (m0VarS == null) {
                ja.k.a(58);
                throw null;
            }
            m0VarArr[0] = m0VarS;
            ja.k kVarM2 = b0Var.m();
            kVarM2.getClass();
            m0 m0VarS2 = kVarM2.s(ja.l.LONG);
            if (m0VarS2 == null) {
                ja.k.a(59);
                throw null;
            }
            m0VarArr[1] = m0VarS2;
            ja.k kVarM3 = b0Var.m();
            kVarM3.getClass();
            m0 m0VarS3 = kVarM3.s(ja.l.BYTE);
            if (m0VarS3 == null) {
                ja.k.a(56);
                throw null;
            }
            m0VarArr[2] = m0VarS3;
            ja.k kVarM4 = b0Var.m();
            kVarM4.getClass();
            m0 m0VarS4 = kVarM4.s(ja.l.SHORT);
            if (m0VarS4 == null) {
                ja.k.a(57);
                throw null;
            }
            m0VarArr[3] = m0VarS4;
            List listT = b8.f.T(m0VarArr);
            if (!(listT instanceof Collection) || !listT.isEmpty()) {
                Iterator it = listT.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (!(!oVar.f13477c.contains((e0) it.next()))) {
                        z10 = false;
                        break;
                    }
                }
            }
            if (!z10) {
                m0 m0VarQ2 = oVar.m().k("Number").q();
                if (m0VarQ2 == null) {
                    ja.k.a(55);
                    throw null;
                }
                arrayListY.add(m0VarQ2);
            }
            return arrayListY;
        }
    }

    public o() {
        throw null;
    }

    public o(long j10, b0 b0Var, Set set) {
        a1.f2258b.getClass();
        this.f13478d = f0.d(a1.f2259c, this);
        this.f13479e = c5.y.w(new a());
        this.f13475a = j10;
        this.f13476b = b0Var;
        this.f13477c = set;
    }

    @Override // cc.c1
    public final List<w0> getParameters() {
        return m9.v.f10173a;
    }

    @Override // cc.c1
    public final Collection<e0> l() {
        return (List) this.f13479e.getValue();
    }

    @Override // cc.c1
    public final ja.k m() {
        return this.f13476b.m();
    }

    @Override // cc.c1
    public final ma.g n() {
        return null;
    }

    @Override // cc.c1
    public final boolean o() {
        return false;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("IntegerLiteralType");
        sb2.append("[" + m9.t.g1(this.f13477c, ",", null, null, p.f13481a, 30) + ']');
        return sb2.toString();
    }
}
