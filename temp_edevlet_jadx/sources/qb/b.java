package qb;

import cc.e0;
import ja.o;
import java.util.List;
import ma.b0;

/* loaded from: classes2.dex */
public class b extends g<List<? extends g<?>>> {

    /* renamed from: b, reason: collision with root package name */
    public final x9.l<b0, e0> f13466b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public b(List<? extends g<?>> list, x9.l<? super b0, ? extends e0> computeType) {
        super(list);
        kotlin.jvm.internal.h.f(computeType, "computeType");
        this.f13466b = computeType;
    }

    @Override // qb.g
    public final e0 a(b0 module) {
        kotlin.jvm.internal.h.f(module, "module");
        e0 e0VarInvoke = this.f13466b.invoke(module);
        if (!ja.k.y(e0VarInvoke) && !ja.k.F(e0VarInvoke) && !ja.k.B(e0VarInvoke, o.a.V.i()) && !ja.k.B(e0VarInvoke, o.a.W.i()) && !ja.k.B(e0VarInvoke, o.a.X.i())) {
            ja.k.B(e0VarInvoke, o.a.Y.i());
        }
        return e0VarInvoke;
    }
}
