package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class t0<T> extends x<T> {

    /* renamed from: d, reason: collision with root package name */
    public final String f7846d;

    public t0(a aVar, OsList osList, Class cls) {
        super(aVar, osList, cls);
        this.f7846d = null;
    }

    @Override // io.realm.x
    public final void a(Object obj) {
        s0 s0VarB = (s0) obj;
        a aVar = this.f7888a;
        boolean zA = g.a(aVar, s0VarB, this.f7846d);
        boolean zD = g.d(aVar, s0VarB);
        OsList osList = this.f7889b;
        if (!zD) {
            if (zA) {
                s0VarB = g.b(aVar, s0VarB);
            }
            osList.k(((io.realm.internal.n) s0VarB).b().f7531c.Y());
        } else {
            if (obj instanceof p) {
                throw new IllegalArgumentException("Embedded objects are not supported by RealmLists of DynamicRealmObjects yet.");
            }
            g.e((g0) aVar, s0VarB, osList.n());
        }
    }

    @Override // io.realm.x
    public final void c(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("RealmList does not accept null values.");
        }
        if (!(obj instanceof s0)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.String", obj.getClass().getName()));
        }
    }

    @Override // io.realm.x
    public final T d(int r42) {
        return (T) this.f7888a.g(this.f7890c, this.f7846d, this.f7889b.r(r42));
    }

    @Override // io.realm.x
    public final void e(int r22) {
        throw new RuntimeException("Should not reach here.");
    }

    @Override // io.realm.x
    public final void f(int r6, Object obj) {
        b(r6);
        s0 s0VarB = (s0) obj;
        a aVar = this.f7888a;
        boolean zA = g.a(aVar, s0VarB, this.f7846d);
        boolean zD = g.d(aVar, s0VarB);
        OsList osList = this.f7889b;
        if (!zD) {
            if (zA) {
                s0VarB = g.b(aVar, s0VarB);
            }
            osList.D(r6, ((io.realm.internal.n) s0VarB).b().f7531c.Y());
        } else {
            if (obj instanceof p) {
                throw new IllegalArgumentException("Embedded objects are not supported by RealmLists of DynamicRealmObjects yet.");
            }
            g.e((g0) aVar, s0VarB, osList.o(r6));
        }
    }

    @Override // io.realm.x
    public final void g(int r22) {
        throw new RuntimeException("Should not reach here.");
    }

    @Override // io.realm.x
    public final void h(int r6, Object obj) {
        s0 s0VarB = (s0) obj;
        a aVar = this.f7888a;
        boolean zA = g.a(aVar, s0VarB, this.f7846d);
        boolean zD = g.d(aVar, s0VarB);
        OsList osList = this.f7889b;
        if (!zD) {
            if (zA) {
                s0VarB = g.b(aVar, s0VarB);
            }
            osList.T(r6, ((io.realm.internal.n) s0VarB).b().f7531c.Y());
        } else {
            if (obj instanceof p) {
                throw new IllegalArgumentException("Embedded objects are not supported by RealmLists of DynamicRealmObjects yet.");
            }
            g.e((g0) aVar, s0VarB, osList.p(r6));
        }
    }
}
