package pa;

import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public final class d0 implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final List<g0> f12884a;

    /* renamed from: b, reason: collision with root package name */
    public final Set<g0> f12885b;

    /* renamed from: c, reason: collision with root package name */
    public final List<g0> f12886c;

    public d0(List list) {
        m9.x xVar = m9.x.f10175a;
        m9.v vVar = m9.v.f10173a;
        this.f12884a = list;
        this.f12885b = xVar;
        this.f12886c = vVar;
    }

    @Override // pa.c0
    public final List<g0> a() {
        return this.f12884a;
    }

    @Override // pa.c0
    public final Set<g0> b() {
        return this.f12885b;
    }

    @Override // pa.c0
    public final List<g0> c() {
        return this.f12886c;
    }
}
