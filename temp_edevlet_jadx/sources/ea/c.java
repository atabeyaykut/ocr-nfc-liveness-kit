package ea;

import cc.a1;
import cc.c1;
import cc.e0;
import cc.f0;
import cc.k1;
import cc.s0;
import cc.t1;
import da.p;
import fc.k;
import g.d;
import ga.n;
import ga.p0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.h;
import l9.f;
import m9.v;
import ma.g;
import ma.w0;

/* loaded from: classes2.dex */
public final class c {

    public /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5161a;

        static {
            int[] r12 = new int[d.d(3).length];
            try {
                r12[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                r12[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                r12[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f5161a = r12;
        }
    }

    public static final p0 a(n nVar, boolean z10) {
        k s0Var;
        v vVar = v.f10173a;
        g gVarI = nVar.i();
        if (gVarI == null) {
            throw new f("Cannot create type for an unsupported classifier: " + nVar + " (" + n.class + ')', 1);
        }
        c1 c1VarI = gVarI.i();
        h.e(c1VarI, "descriptor.typeConstructor");
        List<w0> parameters = c1VarI.getParameters();
        h.e(parameters, "typeConstructor.parameters");
        if (parameters.size() != 0) {
            throw new IllegalArgumentException("Class declares " + parameters.size() + " type parameters, but 0 were provided.");
        }
        a1.f2258b.getClass();
        a1 a1Var = a1.f2259c;
        List<w0> parameters2 = c1VarI.getParameters();
        h.e(parameters2, "typeConstructor.parameters");
        ArrayList arrayList = new ArrayList(m9.n.Q0(vVar));
        Iterator<E> it = vVar.iterator();
        int r6 = 0;
        while (true) {
            if (!it.hasNext()) {
                return new p0(f0.f(a1Var, c1VarI, arrayList, z10, null), null);
            }
            Object next = it.next();
            int r92 = r6 + 1;
            if (r6 < 0) {
                b8.f.k0();
                throw null;
            }
            p pVar = (p) next;
            p0 p0Var = (p0) pVar.f4716b;
            e0 e0Var = p0Var != null ? p0Var.f6098a : null;
            int r72 = pVar.f4715a;
            int r73 = r72 == 0 ? -1 : a.f5161a[d.c(r72)];
            if (r73 == -1) {
                w0 w0Var = parameters2.get(r6);
                h.e(w0Var, "parameters[index]");
                s0Var = new s0(w0Var);
            } else if (r73 == 1) {
                t1 t1Var = t1.INVARIANT;
                h.c(e0Var);
                s0Var = new k1(e0Var, t1Var);
            } else if (r73 == 2) {
                t1 t1Var2 = t1.IN_VARIANCE;
                h.c(e0Var);
                s0Var = new k1(e0Var, t1Var2);
            } else {
                if (r73 != 3) {
                    throw new j7.p();
                }
                t1 t1Var3 = t1.OUT_VARIANCE;
                h.c(e0Var);
                s0Var = new k1(e0Var, t1Var3);
            }
            arrayList.add(s0Var);
            r6 = r92;
        }
    }
}
