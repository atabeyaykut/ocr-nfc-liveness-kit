package io.realm;

import io.realm.internal.Table;
import io.realm.internal.c;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;

/* loaded from: classes2.dex */
public abstract class x0 {

    /* renamed from: d, reason: collision with root package name */
    public static final Map<Class<?>, b> f7891d;

    /* renamed from: e, reason: collision with root package name */
    public static final Map<Class<?>, b> f7892e;
    public static final Map<Class<?>, b> f;

    /* renamed from: g, reason: collision with root package name */
    public static final Map<Class<?>, b> f7893g;

    /* renamed from: a, reason: collision with root package name */
    public final io.realm.a f7894a;

    /* renamed from: b, reason: collision with root package name */
    public final Table f7895b;

    /* renamed from: c, reason: collision with root package name */
    public final io.realm.internal.c f7896c;

    public static final class a extends io.realm.internal.c {

        /* renamed from: e, reason: collision with root package name */
        public final Table f7897e;

        public a(Table table) {
            super(0, false);
            this.f7897e = table;
        }

        @Override // io.realm.internal.c
        public final void b(io.realm.internal.c cVar, io.realm.internal.c cVar2) {
            throw new UnsupportedOperationException("DynamicColumnIndices cannot copy");
        }

        @Override // io.realm.internal.c
        public final void c(io.realm.internal.c cVar) {
            throw new UnsupportedOperationException("DynamicColumnIndices cannot be copied");
        }

        @Override // io.realm.internal.c
        public final c.a d(String str) {
            throw new UnsupportedOperationException("DynamicColumnIndices do not support 'getColumnDetails'");
        }

        @Override // io.realm.internal.c
        public final long e(String str) {
            return this.f7897e.h(str);
        }
    }

    public static final class b {
    }

    static {
        HashMap map = new HashMap();
        RealmFieldType realmFieldType = RealmFieldType.INTEGER;
        map.put(String.class, new b());
        map.put(Short.TYPE, new b());
        map.put(Short.class, new b());
        Class cls = Integer.TYPE;
        map.put(cls, new b());
        map.put(Integer.class, new b());
        Class cls2 = Long.TYPE;
        map.put(cls2, new b());
        map.put(Long.class, new b());
        Class cls3 = Float.TYPE;
        map.put(cls3, new b());
        map.put(Float.class, new b());
        map.put(Double.TYPE, new b());
        map.put(Double.class, new b());
        Class cls4 = Boolean.TYPE;
        map.put(cls4, new b());
        map.put(Boolean.class, new b());
        map.put(Byte.TYPE, new b());
        map.put(Byte.class, new b());
        map.put(byte[].class, new b());
        map.put(Date.class, new b());
        map.put(ObjectId.class, new b());
        map.put(Decimal128.class, new b());
        map.put(UUID.class, new b());
        map.put(h0.class, new b());
        f7891d = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        map2.put(String.class, new b());
        map2.put(Short.TYPE, new b());
        map2.put(Short.class, new b());
        map2.put(cls, new b());
        map2.put(Integer.class, new b());
        map2.put(cls2, new b());
        map2.put(Long.class, new b());
        map2.put(cls3, new b());
        map2.put(Float.class, new b());
        map2.put(Double.TYPE, new b());
        map2.put(Double.class, new b());
        map2.put(cls4, new b());
        map2.put(Boolean.class, new b());
        map2.put(Byte.TYPE, new b());
        map2.put(Byte.class, new b());
        map2.put(byte[].class, new b());
        map2.put(Date.class, new b());
        map2.put(ObjectId.class, new b());
        map2.put(Decimal128.class, new b());
        map2.put(UUID.class, new b());
        map2.put(h0.class, new b());
        f7892e = Collections.unmodifiableMap(map2);
        HashMap map3 = new HashMap();
        map3.put(String.class, new b());
        map3.put(Short.TYPE, new b());
        map3.put(Short.class, new b());
        map3.put(cls, new b());
        map3.put(Integer.class, new b());
        map3.put(cls2, new b());
        map3.put(Long.class, new b());
        map3.put(cls3, new b());
        map3.put(Float.class, new b());
        map3.put(Double.TYPE, new b());
        map3.put(Double.class, new b());
        map3.put(cls4, new b());
        map3.put(Boolean.class, new b());
        map3.put(Byte.TYPE, new b());
        map3.put(Byte.class, new b());
        map3.put(byte[].class, new b());
        map3.put(Date.class, new b());
        map3.put(ObjectId.class, new b());
        map3.put(Decimal128.class, new b());
        map3.put(UUID.class, new b());
        map3.put(h0.class, new b());
        f = Collections.unmodifiableMap(map3);
        HashMap map4 = new HashMap();
        map4.put(v0.class, new b());
        map4.put(q0.class, new b());
        map4.put(p0.class, new b());
        map4.put(a1.class, new b());
        f7893g = Collections.unmodifiableMap(map4);
    }

    public x0(io.realm.a aVar, Table table, io.realm.internal.c cVar) {
        this.f7894a = aVar;
        this.f7895b = table;
        this.f7896c = cVar;
    }

    public final long a(String str) {
        Table table = this.f7895b;
        long jH = table.h(str);
        if (jH != -1) {
            return jH;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "Field name '%s' does not exist on schema for '%s'", str, table.f()));
    }

    public abstract String b(String str);
}
