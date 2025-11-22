package cc;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class w0 {

    /* renamed from: a, reason: collision with root package name */
    public final w0 f2372a;

    /* renamed from: b, reason: collision with root package name */
    public final ma.v0 f2373b;

    /* renamed from: c, reason: collision with root package name */
    public final List<i1> f2374c;

    /* renamed from: d, reason: collision with root package name */
    public final Map<ma.w0, i1> f2375d;

    public static final class a {
        public static w0 a(w0 w0Var, ma.v0 typeAliasDescriptor, List arguments) {
            kotlin.jvm.internal.h.f(typeAliasDescriptor, "typeAliasDescriptor");
            kotlin.jvm.internal.h.f(arguments, "arguments");
            List<ma.w0> parameters = typeAliasDescriptor.i().getParameters();
            kotlin.jvm.internal.h.e(parameters, "typeAliasDescriptor.typeConstructor.parameters");
            List<ma.w0> list = parameters;
            ArrayList arrayList = new ArrayList(m9.n.Q0(list));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((ma.w0) it.next()).a());
            }
            return new w0(w0Var, typeAliasDescriptor, arguments, m9.e0.S0(m9.t.A1(arrayList, arguments)));
        }
    }

    public w0(w0 w0Var, ma.v0 v0Var, List list, Map map) {
        this.f2372a = w0Var;
        this.f2373b = v0Var;
        this.f2374c = list;
        this.f2375d = map;
    }

    public final boolean a(ma.v0 descriptor) {
        kotlin.jvm.internal.h.f(descriptor, "descriptor");
        if (!kotlin.jvm.internal.h.a(this.f2373b, descriptor)) {
            w0 w0Var = this.f2372a;
            if (!(w0Var != null ? w0Var.a(descriptor) : false)) {
                return false;
            }
        }
        return true;
    }
}
