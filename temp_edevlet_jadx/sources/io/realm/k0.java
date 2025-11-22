package io.realm;

import io.realm.exceptions.RealmException;
import io.realm.h0;
import io.realm.internal.core.NativeRealmAny;

/* loaded from: classes2.dex */
public abstract class k0 {

    /* renamed from: a, reason: collision with root package name */
    public NativeRealmAny f7680a;

    /* renamed from: b, reason: collision with root package name */
    public final h0.a f7681b;

    public k0(h0.a aVar) {
        this.f7681b = aVar;
    }

    public k0(h0.a aVar, NativeRealmAny nativeRealmAny) {
        this.f7681b = aVar;
        this.f7680a = nativeRealmAny;
    }

    public static k0 b(a aVar, NativeRealmAny nativeRealmAny) {
        h0.a type = nativeRealmAny.getType();
        switch (type) {
            case INTEGER:
                return new w(nativeRealmAny);
            case BOOLEAN:
                return new f(nativeRealmAny);
            case STRING:
                return new c1(nativeRealmAny);
            case BINARY:
                return new d(nativeRealmAny);
            case DATE:
                return new i(nativeRealmAny);
            case FLOAT:
                return new r(nativeRealmAny);
            case DOUBLE:
                return new m(nativeRealmAny);
            case DECIMAL128:
                return new k(nativeRealmAny);
            case OBJECT_ID:
                return new a0(nativeRealmAny);
            case OBJECT:
                if (aVar instanceof g0) {
                    try {
                        return new u0(aVar, nativeRealmAny, nativeRealmAny.getModelClass(aVar.f7457e, aVar.f7455c.f7751i));
                    } catch (RealmException unused) {
                    }
                }
                return new o(aVar, nativeRealmAny);
            case UUID:
                return new d1(nativeRealmAny);
            case NULL:
                return new z(nativeRealmAny);
            default:
                throw new ClassCastException("Couldn't cast to " + type);
        }
    }

    public abstract NativeRealmAny a();

    public Class<?> c() {
        return this.f7681b.f7564a;
    }

    public abstract <T> T d(Class<T> cls);
}
