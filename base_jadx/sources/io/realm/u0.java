package io.realm;

import io.realm.h0;
import io.realm.internal.core.NativeRealmAny;
import java.util.Collections;

/* loaded from: classes2.dex */
public class u0 extends k0 {

    /* renamed from: c, reason: collision with root package name */
    public final Class<? extends s0> f7847c;

    /* renamed from: d, reason: collision with root package name */
    public final s0 f7848d;

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends s0> u0(a aVar, NativeRealmAny nativeRealmAny, Class<T> cls) {
        super(h0.a.OBJECT, nativeRealmAny);
        this.f7847c = cls;
        this.f7848d = aVar.e(cls, nativeRealmAny.getRealmModelRowKey(), Collections.emptyList());
    }

    public u0(s0 s0Var) {
        super(h0.a.OBJECT);
        this.f7848d = s0Var;
        this.f7847c = s0Var.getClass();
    }

    @Override // io.realm.k0
    public final NativeRealmAny a() {
        s0 s0Var = this.f7848d;
        if (s0Var instanceof io.realm.internal.n) {
            return new NativeRealmAny((io.realm.internal.n) io.realm.internal.n.class.cast(s0Var));
        }
        throw new IllegalStateException("Native RealmAny instances only allow managed Realm objects or primitives");
    }

    @Override // io.realm.k0
    public Class<?> c() {
        Class<? extends s0> cls = this.f7847c;
        return io.realm.internal.n.class.isAssignableFrom(cls) ? cls.getSuperclass() : cls;
    }

    @Override // io.realm.k0
    public final <T> T d(Class<T> cls) {
        return cls.cast(this.f7848d);
    }

    public final boolean equals(Object obj) {
        if (obj == null || !getClass().equals(obj.getClass())) {
            return false;
        }
        s0 s0Var = ((u0) obj).f7848d;
        s0 s0Var2 = this.f7848d;
        return s0Var2 == null ? s0Var == null : s0Var2.equals(s0Var);
    }

    public final int hashCode() {
        return this.f7848d.hashCode();
    }

    public final String toString() {
        return this.f7848d.toString();
    }
}
