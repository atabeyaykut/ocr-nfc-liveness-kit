package io.realm;

import io.realm.internal.OsList;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class h extends x<Date> {
    public h(a aVar, OsList osList, Class<Date> cls) {
        super(aVar, osList, cls);
    }

    @Override // io.realm.x
    public final void a(Object obj) {
        this.f7889b.c((Date) obj);
    }

    @Override // io.realm.x
    public final void c(Object obj) {
        if (obj != null && !(obj instanceof Date)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.util.Date", obj.getClass().getName()));
        }
    }

    @Override // io.realm.x
    public final Date d(int r42) {
        return (Date) this.f7889b.s(r42);
    }

    @Override // io.realm.x
    public final void f(int r32, Object obj) {
        this.f7889b.v(r32, (Date) obj);
    }

    @Override // io.realm.x
    public final void h(int r32, Object obj) {
        this.f7889b.L(r32, (Date) obj);
    }
}
