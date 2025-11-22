package u2;

import java.util.Set;

/* loaded from: classes.dex */
public final class t implements r2.g {

    /* renamed from: a, reason: collision with root package name */
    public final Set<r2.b> f17853a;

    /* renamed from: b, reason: collision with root package name */
    public final s f17854b;

    /* renamed from: c, reason: collision with root package name */
    public final v f17855c;

    public t(Set set, j jVar, v vVar) {
        this.f17853a = set;
        this.f17854b = jVar;
        this.f17855c = vVar;
    }

    @Override // r2.g
    public final u a(String str, r2.b bVar, r2.e eVar) {
        Set<r2.b> set = this.f17853a;
        if (set.contains(bVar)) {
            return new u(this.f17854b, str, bVar, eVar, this.f17855c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", bVar, set));
    }
}
