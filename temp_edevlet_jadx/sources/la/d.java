package la;

import java.util.ArrayList;
import java.util.List;
import ma.b0;
import ma.e0;

/* loaded from: classes2.dex */
public final class d extends kotlin.jvm.internal.j implements x9.l<b0, ja.b> {

    /* renamed from: a, reason: collision with root package name */
    public static final d f9614a = new d();

    public d() {
        super(1);
    }

    @Override // x9.l
    public final ja.b invoke(b0 b0Var) {
        b0 module = b0Var;
        kotlin.jvm.internal.h.f(module, "module");
        List<e0> listD = module.I0(e.f).D();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listD) {
            if (obj instanceof ja.b) {
                arrayList.add(obj);
            }
        }
        return (ja.b) m9.t.a1(arrayList);
    }
}
