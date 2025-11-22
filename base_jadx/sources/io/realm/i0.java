package io.realm;

import io.realm.internal.OsList;
import io.realm.internal.core.NativeRealmAny;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class i0 extends x<h0> {
    public i0(a aVar, OsList osList, Class<h0> cls) {
        super(aVar, osList, cls);
    }

    @Override // io.realm.x
    public final void a(Object obj) {
        this.f7889b.j(g.c(this.f7888a, (h0) obj).a());
    }

    @Override // io.realm.x
    public final void c(Object obj) {
        if (obj != null && !(obj instanceof h0)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.util.RealmAny", obj.getClass().getName()));
        }
    }

    @Override // io.realm.x
    public final h0 d(int r42) {
        NativeRealmAny nativeRealmAny = (NativeRealmAny) this.f7889b.s(r42);
        if (nativeRealmAny == null) {
            nativeRealmAny = new NativeRealmAny();
        }
        return new h0(k0.b(this.f7888a, nativeRealmAny));
    }

    @Override // io.realm.x
    public final void f(int r42, Object obj) {
        b(r42);
        this.f7889b.C(r42, g.c(this.f7888a, (h0) obj).a());
    }

    @Override // io.realm.x
    public final void h(int r42, Object obj) {
        this.f7889b.S(r42, g.c(this.f7888a, (h0) obj).a());
    }
}
