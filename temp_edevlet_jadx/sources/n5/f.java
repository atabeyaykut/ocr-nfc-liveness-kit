package n5;

import com.google.crypto.tink.shaded.protobuf.a0;
import com.google.crypto.tink.shaded.protobuf.q0;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import u5.e0;

/* loaded from: classes2.dex */
public abstract class f<KeyProtoT extends q0> {

    /* renamed from: a, reason: collision with root package name */
    public final Class<KeyProtoT> f10570a;

    /* renamed from: b, reason: collision with root package name */
    public final Map<Class<?>, b<?, KeyProtoT>> f10571b;

    /* renamed from: c, reason: collision with root package name */
    public final Class<?> f10572c;

    public static abstract class a<KeyFormatProtoT extends q0, KeyT> {

        /* renamed from: a, reason: collision with root package name */
        public final Class<KeyFormatProtoT> f10573a;

        public a(Class<KeyFormatProtoT> cls) {
            this.f10573a = cls;
        }

        public abstract KeyT a(KeyFormatProtoT keyformatprotot) throws GeneralSecurityException;

        public abstract KeyFormatProtoT b(com.google.crypto.tink.shaded.protobuf.i iVar) throws a0;

        public abstract void c(KeyFormatProtoT keyformatprotot) throws GeneralSecurityException;
    }

    public static abstract class b<PrimitiveT, KeyT> {

        /* renamed from: a, reason: collision with root package name */
        public final Class<PrimitiveT> f10574a;

        public b(Class<PrimitiveT> cls) {
            this.f10574a = cls;
        }

        public abstract PrimitiveT a(KeyT keyt) throws GeneralSecurityException;
    }

    @SafeVarargs
    public f(Class<KeyProtoT> cls, b<?, KeyProtoT>... bVarArr) {
        this.f10570a = cls;
        HashMap map = new HashMap();
        for (b<?, KeyProtoT> bVar : bVarArr) {
            boolean zContainsKey = map.containsKey(bVar.f10574a);
            Class<?> cls2 = bVar.f10574a;
            if (zContainsKey) {
                throw new IllegalArgumentException("KeyTypeManager constructed with duplicate factories for primitive " + cls2.getCanonicalName());
            }
            map.put(cls2, bVar);
        }
        this.f10572c = bVarArr.length > 0 ? bVarArr[0].f10574a : Void.class;
        this.f10571b = Collections.unmodifiableMap(map);
    }

    public abstract String a();

    public final <P> P b(KeyProtoT keyprotot, Class<P> cls) throws GeneralSecurityException {
        b<?, KeyProtoT> bVar = this.f10571b.get(cls);
        if (bVar != null) {
            return (P) bVar.a(keyprotot);
        }
        throw new IllegalArgumentException("Requested primitive class " + cls.getCanonicalName() + " not supported.");
    }

    public abstract a<?, KeyProtoT> c();

    public abstract e0.b d();

    public abstract KeyProtoT e(com.google.crypto.tink.shaded.protobuf.i iVar) throws a0;

    public abstract void f(KeyProtoT keyprotot) throws GeneralSecurityException;
}
