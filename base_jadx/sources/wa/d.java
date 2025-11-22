package wa;

import c5.y;
import cc.e0;
import ja.o;
import ma.a1;
import ma.b0;
import x9.l;

/* loaded from: classes2.dex */
public final class d extends kotlin.jvm.internal.j implements l<b0, e0> {

    /* renamed from: a, reason: collision with root package name */
    public static final d f18839a = new d();

    public d() {
        super(1);
    }

    @Override // x9.l
    public final e0 invoke(b0 b0Var) {
        b0 module = b0Var;
        kotlin.jvm.internal.h.f(module, "module");
        a1 a1VarN = y.n(c.f18836b, module.m().j(o.a.f8390t));
        e0 type = a1VarN != null ? a1VarN.getType() : null;
        return type == null ? ec.i.c(ec.h.UNMAPPED_ANNOTATION_TARGET_TYPE, new String[0]) : type;
    }
}
