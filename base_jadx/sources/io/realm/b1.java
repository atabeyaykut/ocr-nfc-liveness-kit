package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class b1 extends x<String> {
    public b1(a aVar, OsList osList, Class<String> cls) {
        super(aVar, osList, cls);
    }

    @Override // io.realm.x
    public final void a(Object obj) {
        this.f7889b.l((String) obj);
    }

    @Override // io.realm.x
    public final void c(Object obj) {
        if (obj != null && !(obj instanceof String)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.String", obj.getClass().getName()));
        }
    }

    @Override // io.realm.x
    public final String d(int r42) {
        return (String) this.f7889b.s(r42);
    }

    @Override // io.realm.x
    public final void f(int r32, Object obj) {
        this.f7889b.E(r32, (String) obj);
    }

    @Override // io.realm.x
    public final void h(int r32, Object obj) {
        this.f7889b.U(r32, (String) obj);
    }
}
