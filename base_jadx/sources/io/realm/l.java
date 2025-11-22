package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class l extends x<Double> {
    public l(a aVar, OsList osList, Class<Double> cls) {
        super(aVar, osList, cls);
    }

    @Override // io.realm.x
    public final void a(Object obj) {
        this.f7889b.e(((Number) obj).doubleValue());
    }

    @Override // io.realm.x
    public final void c(Object obj) {
        if (obj != null && !(obj instanceof Number)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.Number", obj.getClass().getName()));
        }
    }

    @Override // io.realm.x
    public final Double d(int r42) {
        return (Double) this.f7889b.s(r42);
    }

    @Override // io.realm.x
    public final void f(int r42, Object obj) {
        this.f7889b.x(r42, ((Number) obj).doubleValue());
    }

    @Override // io.realm.x
    public final void h(int r42, Object obj) {
        this.f7889b.N(r42, ((Number) obj).doubleValue());
    }
}
