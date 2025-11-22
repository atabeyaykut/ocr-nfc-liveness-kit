package nb;

import cc.e0;
import cc.i1;
import cc.t1;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class e extends kotlin.jvm.internal.j implements x9.l<i1, CharSequence> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f10716a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(d dVar) {
        super(1);
        this.f10716a = dVar;
    }

    @Override // x9.l
    public final CharSequence invoke(i1 i1Var) throws IOException {
        i1 it = i1Var;
        kotlin.jvm.internal.h.f(it, "it");
        if (it.c()) {
            return "*";
        }
        e0 type = it.getType();
        kotlin.jvm.internal.h.e(type, "it.type");
        String strU = this.f10716a.u(type);
        if (it.b() == t1.INVARIANT) {
            return strU;
        }
        return it.b() + ' ' + strU;
    }
}
