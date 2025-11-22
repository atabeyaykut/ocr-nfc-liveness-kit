package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;
import org.bson.types.Decimal128;

/* loaded from: classes2.dex */
public final class j extends x<Decimal128> {
    public j(a aVar, OsList osList, Class<Decimal128> cls) {
        super(aVar, osList, cls);
    }

    @Override // io.realm.x
    public final void a(Object obj) {
        this.f7889b.d((Decimal128) obj);
    }

    @Override // io.realm.x
    public final void c(Object obj) {
        if (obj != null && !(obj instanceof Decimal128)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "org.bson.types.Decimal128", obj.getClass().getName()));
        }
    }

    @Override // io.realm.x
    public final Decimal128 d(int r42) {
        return (Decimal128) this.f7889b.s(r42);
    }

    @Override // io.realm.x
    public final void f(int r32, Object obj) {
        this.f7889b.w(r32, (Decimal128) obj);
    }

    @Override // io.realm.x
    public final void h(int r32, Object obj) {
        this.f7889b.M(r32, (Decimal128) obj);
    }
}
