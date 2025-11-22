package io.realm;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import io.realm.internal.core.NativeRealmAny;
import java.util.Date;
import java.util.UUID;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;

/* loaded from: classes2.dex */
public final class h0 {

    /* renamed from: a, reason: collision with root package name */
    public final k0 f7550a;

    public enum a {
        INTEGER(RealmFieldType.INTEGER, Long.class),
        BOOLEAN(RealmFieldType.BOOLEAN, Boolean.class),
        STRING(RealmFieldType.STRING, String.class),
        BINARY(RealmFieldType.BINARY, Byte[].class),
        DATE(RealmFieldType.DATE, Date.class),
        FLOAT(RealmFieldType.FLOAT, Float.class),
        DOUBLE(RealmFieldType.DOUBLE, Double.class),
        DECIMAL128(RealmFieldType.DECIMAL128, Decimal128.class),
        OBJECT_ID(RealmFieldType.OBJECT_ID, ObjectId.class),
        OBJECT(RealmFieldType.TYPED_LINK, s0.class),
        UUID(RealmFieldType.UUID, UUID.class),
        NULL(null, null);


        /* renamed from: q, reason: collision with root package name */
        public static final a[] f7562q = new a[19];

        /* renamed from: a, reason: collision with root package name */
        public final Class<?> f7564a;

        /* renamed from: b, reason: collision with root package name */
        public final RealmFieldType f7565b;

        static {
            for (a aVar : values()) {
                if (aVar != NULL) {
                    f7562q[aVar.f7565b.getNativeValue()] = aVar;
                }
            }
            f7562q[RealmFieldType.OBJECT.getNativeValue()] = OBJECT;
        }

        a(RealmFieldType realmFieldType, Class cls) {
            this.f7565b = realmFieldType;
            this.f7564a = cls;
        }
    }

    public h0(k0 k0Var) {
        this.f7550a = k0Var;
    }

    public final long a() {
        NativeRealmAny nativeRealmAny;
        k0 k0Var = this.f7550a;
        synchronized (k0Var) {
            if (k0Var.f7680a == null) {
                k0Var.f7680a = k0Var.a();
            }
            nativeRealmAny = k0Var.f7680a;
        }
        return nativeRealmAny.getNativePtr();
    }

    @SuppressFBWarnings({"NP_METHOD_PARAMETER_TIGHTENS_ANNOTATION"})
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof h0) {
            return this.f7550a.equals(((h0) obj).f7550a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f7550a.hashCode();
    }

    public final String toString() {
        return this.f7550a.toString();
    }
}
