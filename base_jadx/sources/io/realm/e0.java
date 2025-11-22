package io.realm;

import io.realm.h0;
import io.realm.internal.core.NativeRealmAny;
import java.io.Serializable;

/* loaded from: classes2.dex */
public abstract class e0 extends k0 {

    /* renamed from: c, reason: collision with root package name */
    public final Object f7502c;

    public e0(Serializable serializable, h0.a aVar, NativeRealmAny nativeRealmAny) {
        super(aVar, nativeRealmAny);
        this.f7502c = serializable;
    }

    public e0(Object obj, h0.a aVar) {
        super(aVar);
        this.f7502c = obj;
    }

    @Override // io.realm.k0
    public final <T> T d(Class<T> cls) {
        return cls.cast(this.f7502c);
    }

    public boolean equals(Object obj) {
        if (obj == null || !getClass().equals(obj.getClass())) {
            return false;
        }
        Object obj2 = ((e0) obj).f7502c;
        Object obj3 = this.f7502c;
        return obj3 == null ? obj2 == null : obj3.equals(obj2);
    }

    public final int hashCode() {
        Object obj = this.f7502c;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        return this.f7502c.toString();
    }
}
