package ec;

import cc.c1;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import m9.v;
import ma.l0;

/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public static final i f5277a = new i();

    /* renamed from: b, reason: collision with root package name */
    public static final c f5278b = c.f5241a;

    /* renamed from: c, reason: collision with root package name */
    public static final a f5279c;

    /* renamed from: d, reason: collision with root package name */
    public static final f f5280d;

    /* renamed from: e, reason: collision with root package name */
    public static final f f5281e;
    public static final Set<l0> f;

    static {
        String str = String.format("<Error class: %s>", Arrays.copyOf(new Object[]{"unknown class"}, 1));
        kotlin.jvm.internal.h.e(str, "format(this, *args)");
        f5279c = new a(lb.f.v(str));
        f5280d = c(h.CYCLIC_SUPERTYPES, new String[0]);
        f5281e = c(h.ERROR_PROPERTY_TYPE, new String[0]);
        f = x5.a.r(new d());
    }

    public static final e a(int r12, boolean z10, String... formatParams) {
        androidx.camera.core.impl.utils.f.j(r12, "kind");
        kotlin.jvm.internal.h.f(formatParams, "formatParams");
        return z10 ? new j(r12, (String[]) Arrays.copyOf(formatParams, formatParams.length)) : new e(r12, (String[]) Arrays.copyOf(formatParams, formatParams.length));
    }

    public static final e b(int r12, String... strArr) {
        androidx.camera.core.impl.utils.f.j(r12, "kind");
        return a(r12, false, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static final f c(h hVar, String... strArr) {
        v vVar = v.f10173a;
        String[] formatParams = (String[]) Arrays.copyOf(strArr, strArr.length);
        kotlin.jvm.internal.h.f(formatParams, "formatParams");
        return e(hVar, vVar, d(hVar, (String[]) Arrays.copyOf(formatParams, formatParams.length)), (String[]) Arrays.copyOf(formatParams, formatParams.length));
    }

    public static g d(h hVar, String... formatParams) {
        kotlin.jvm.internal.h.f(formatParams, "formatParams");
        return new g(hVar, (String[]) Arrays.copyOf(formatParams, formatParams.length));
    }

    public static f e(h hVar, List list, c1 c1Var, String... formatParams) {
        kotlin.jvm.internal.h.f(formatParams, "formatParams");
        return new f(c1Var, b(7, c1Var.toString()), hVar, list, false, (String[]) Arrays.copyOf(formatParams, formatParams.length));
    }

    public static final boolean f(ma.j jVar) {
        return jVar != null && ((jVar instanceof a) || (jVar.b() instanceof a) || jVar == f5278b);
    }
}
