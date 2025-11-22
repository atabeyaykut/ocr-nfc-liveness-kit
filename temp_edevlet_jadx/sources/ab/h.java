package ab;

import cc.a1;
import cc.e0;
import cc.i1;
import cc.l0;
import cc.m0;
import cc.s1;
import cc.y;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.j;
import m9.n;
import m9.t;
import vb.i;
import x9.l;

/* loaded from: classes2.dex */
public final class h extends y implements l0 {

    public static final class a extends j implements l<String, CharSequence> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f161a = new a();

        public a() {
            super(1);
        }

        @Override // x9.l
        public final CharSequence invoke(String str) {
            String it = str;
            kotlin.jvm.internal.h.f(it, "it");
            return "(raw) ".concat(it);
        }
    }

    /* JADX WARN: 'thıs' call moved to the top of the method (can break code semantics) */
    public h(m0 lowerBound, m0 upperBound) {
        this(lowerBound, upperBound, false);
        kotlin.jvm.internal.h.f(lowerBound, "lowerBound");
        kotlin.jvm.internal.h.f(upperBound, "upperBound");
    }

    public h(m0 m0Var, m0 m0Var2, boolean z10) {
        super(m0Var, m0Var2);
        if (z10) {
            return;
        }
        dc.d.f4825a.d(m0Var, m0Var2);
    }

    public static final ArrayList W0(nb.c cVar, m0 m0Var) {
        List<i1> listK0 = m0Var.K0();
        ArrayList arrayList = new ArrayList(n.Q0(listK0));
        Iterator<T> it = listK0.iterator();
        while (it.hasNext()) {
            arrayList.add(cVar.v((i1) it.next()));
        }
        return arrayList;
    }

    public static final String X0(String str, String str2) {
        if (!mc.n.H(str, '<')) {
            return str;
        }
        return mc.n.e0(str, '<') + '<' + str2 + '>' + mc.n.d0('>', str, str);
    }

    @Override // cc.s1
    public final s1 Q0(boolean z10) {
        return new h(this.f2377b.Q0(z10), this.f2378c.Q0(z10));
    }

    @Override // cc.s1
    public final s1 S0(a1 newAttributes) {
        kotlin.jvm.internal.h.f(newAttributes, "newAttributes");
        return new h(this.f2377b.S0(newAttributes), this.f2378c.S0(newAttributes));
    }

    @Override // cc.y
    public final m0 T0() {
        return this.f2377b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cc.y
    public final String U0(nb.c renderer, nb.j options) throws IOException {
        kotlin.jvm.internal.h.f(renderer, "renderer");
        kotlin.jvm.internal.h.f(options, "options");
        m0 m0Var = this.f2377b;
        String strU = renderer.u(m0Var);
        m0 m0Var2 = this.f2378c;
        String strU2 = renderer.u(m0Var2);
        if (options.m()) {
            return "raw (" + strU + ".." + strU2 + ')';
        }
        if (m0Var2.K0().isEmpty()) {
            return renderer.r(strU, strU2, c5.y.o(this));
        }
        ArrayList arrayListW0 = W0(renderer, m0Var);
        ArrayList arrayListW02 = W0(renderer, m0Var2);
        String strG1 = t.g1(arrayListW0, ", ", null, null, a.f161a, 30);
        ArrayList arrayListA1 = t.A1(arrayListW0, arrayListW02);
        boolean z10 = true;
        if (!arrayListA1.isEmpty()) {
            Iterator it = arrayListA1.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                l9.g gVar = (l9.g) it.next();
                String str = (String) gVar.f9582a;
                String str2 = (String) gVar.f9583b;
                if (!(kotlin.jvm.internal.h.a(str, mc.n.U("out ", str2)) || kotlin.jvm.internal.h.a(str2, "*"))) {
                    z10 = false;
                    break;
                }
            }
        }
        if (z10) {
            strU2 = X0(strU2, strG1);
        }
        String strX0 = X0(strU, strG1);
        return kotlin.jvm.internal.h.a(strX0, strU2) ? strX0 : renderer.r(strX0, strU2, c5.y.o(this));
    }

    @Override // cc.s1
    /* renamed from: V0, reason: merged with bridge method [inline-methods] */
    public final y O0(dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        e0 e0VarX = kotlinTypeRefiner.x(this.f2377b);
        kotlin.jvm.internal.h.d(e0VarX, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        e0 e0VarX2 = kotlinTypeRefiner.x(this.f2378c);
        kotlin.jvm.internal.h.d(e0VarX2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        return new h((m0) e0VarX, (m0) e0VarX2, true);
    }

    @Override // cc.y, cc.e0
    public final i o() {
        ma.g gVarN = M0().n();
        ma.e eVar = gVarN instanceof ma.e ? (ma.e) gVarN : null;
        if (eVar != null) {
            i iVarJ = eVar.J(new g());
            kotlin.jvm.internal.h.e(iVarJ, "classDescriptor.getMemberScope(RawSubstitution())");
            return iVarJ;
        }
        throw new IllegalStateException(("Incorrect classifier: " + M0().n()).toString());
    }
}
