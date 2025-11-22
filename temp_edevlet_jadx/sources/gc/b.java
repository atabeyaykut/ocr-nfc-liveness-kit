package gc;

import cc.s1;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import ma.g;
import ma.v0;
import ma.w0;
import x9.l;

/* loaded from: classes2.dex */
public final class b extends j implements l<s1, Boolean> {

    /* renamed from: a, reason: collision with root package name */
    public static final b f6613a = new b();

    public b() {
        super(1);
    }

    @Override // x9.l
    public final Boolean invoke(s1 s1Var) {
        s1 it = s1Var;
        h.f(it, "it");
        g gVarN = it.M0().n();
        return Boolean.valueOf(gVarN != null && ((gVarN instanceof v0) || (gVarN instanceof w0)));
    }
}
