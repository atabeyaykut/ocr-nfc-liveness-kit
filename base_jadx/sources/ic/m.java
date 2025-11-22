package ic;

import c5.y;
import cc.e0;
import cc.f0;
import cc.m0;
import cc.q1;
import cc.s0;
import ic.f;
import ja.m;
import ja.o;
import java.util.List;
import ma.a1;
import ma.b0;
import ma.w0;

/* loaded from: classes2.dex */
public final class m implements f {

    /* renamed from: a, reason: collision with root package name */
    public static final m f7375a = new m();

    @Override // ic.f
    public final String a(ma.u uVar) {
        return f.a.a(this, uVar);
    }

    @Override // ic.f
    public final boolean b(ma.u functionDescriptor) {
        m0 m0VarE;
        kotlin.jvm.internal.h.f(functionDescriptor, "functionDescriptor");
        a1 secondParameter = functionDescriptor.g().get(1);
        m.b bVar = ja.m.f8349d;
        kotlin.jvm.internal.h.e(secondParameter, "secondParameter");
        b0 b0VarJ = sb.b.j(secondParameter);
        bVar.getClass();
        ma.e eVarA = ma.t.a(b0VarJ, o.a.Q);
        if (eVarA == null) {
            m0VarE = null;
        } else {
            cc.a1.f2258b.getClass();
            cc.a1 a1Var = cc.a1.f2259c;
            List<w0> parameters = eVarA.i().getParameters();
            kotlin.jvm.internal.h.e(parameters, "kPropertyClass.typeConstructor.parameters");
            Object objP1 = m9.t.p1(parameters);
            kotlin.jvm.internal.h.e(objP1, "kPropertyClass.typeConstructor.parameters.single()");
            m0VarE = f0.e(a1Var, eVarA, b8.f.S(new s0((w0) objP1)));
        }
        if (m0VarE == null) {
            return false;
        }
        e0 type = secondParameter.getType();
        kotlin.jvm.internal.h.e(type, "secondParameter.type");
        return y.u(m0VarE, q1.i(type));
    }

    @Override // ic.f
    public final String getDescription() {
        return "second parameter must be of type KProperty<*> or its supertype";
    }
}
