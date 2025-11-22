package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f7652a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f7653b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f7654c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f7655d;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final long f7656a;

        /* renamed from: b, reason: collision with root package name */
        public final RealmFieldType f7657b;

        /* renamed from: c, reason: collision with root package name */
        public final String f7658c;

        public a(Property property) {
            long jB = property.b();
            RealmFieldType realmFieldTypeD = property.d();
            String strC = property.c();
            this.f7656a = jB;
            this.f7657b = realmFieldTypeD;
            this.f7658c = strC;
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder("ColumnDetails[");
            sb2.append(this.f7656a);
            sb2.append(", ");
            sb2.append(this.f7657b);
            sb2.append(", ");
            return androidx.camera.camera2.internal.c.h(sb2, this.f7658c, "]");
        }
    }

    public c() {
        throw null;
    }

    public c(int r22, boolean z10) {
        this.f7652a = new HashMap(r22);
        this.f7653b = new HashMap(r22);
        this.f7654c = new HashMap(r22);
        this.f7655d = z10;
    }

    public final long a(String str, String str2, OsObjectSchemaInfo osObjectSchemaInfo) {
        Property propertyB = osObjectSchemaInfo.b(str2);
        a aVar = new a(propertyB);
        this.f7652a.put(str, aVar);
        this.f7653b.put(str2, aVar);
        this.f7654c.put(str, str2);
        return propertyB.b();
    }

    public abstract void b(c cVar, c cVar2);

    public void c(c cVar) {
        if (!this.f7655d) {
            throw new UnsupportedOperationException("Attempt to modify an immutable ColumnInfo");
        }
        if (cVar == null) {
            throw new NullPointerException("Attempt to copy null ColumnInfo");
        }
        HashMap map = this.f7652a;
        map.clear();
        map.putAll(cVar.f7652a);
        HashMap map2 = this.f7653b;
        map2.clear();
        map2.putAll(cVar.f7653b);
        HashMap map3 = this.f7654c;
        map3.clear();
        map3.putAll(cVar.f7654c);
        b(cVar, this);
    }

    public a d(String str) {
        return (a) this.f7652a.get(str);
    }

    public long e(String str) {
        a aVar = (a) this.f7652a.get(str);
        if (aVar == null) {
            return -1L;
        }
        return aVar.f7656a;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ColumnInfo[");
        sb2.append("mutable=" + this.f7655d);
        sb2.append(",");
        HashMap map = this.f7652a;
        boolean z10 = false;
        if (map != null) {
            sb2.append("JavaFieldNames=[");
            boolean z11 = false;
            for (Map.Entry entry : map.entrySet()) {
                if (z11) {
                    sb2.append(",");
                }
                sb2.append((String) entry.getKey());
                sb2.append("->");
                sb2.append(entry.getValue());
                z11 = true;
            }
            sb2.append("]");
        }
        HashMap map2 = this.f7653b;
        if (map2 != null) {
            sb2.append(", InternalFieldNames=[");
            for (Map.Entry entry2 : map2.entrySet()) {
                if (z10) {
                    sb2.append(",");
                }
                sb2.append((String) entry2.getKey());
                sb2.append("->");
                sb2.append(entry2.getValue());
                z10 = true;
            }
            sb2.append("]");
        }
        sb2.append("]");
        return sb2.toString();
    }
}
