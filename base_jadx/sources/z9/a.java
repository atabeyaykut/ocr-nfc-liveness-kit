package z9;

import da.m;
import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public abstract class a<V> {

    /* renamed from: a, reason: collision with root package name */
    public V f19883a;

    public a(V v10) {
        this.f19883a = v10;
    }

    public void a(m property) {
        h.f(property, "property");
    }

    public final Object b(m property) {
        h.f(property, "property");
        return this.f19883a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c(Object obj, m property) {
        h.f(property, "property");
        a(property);
        this.f19883a = obj;
    }
}
