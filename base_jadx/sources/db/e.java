package db;

import cc.e0;
import java.util.Map;
import ma.r0;

/* loaded from: classes2.dex */
public final class e implements na.c {

    /* renamed from: a, reason: collision with root package name */
    public static final e f4740a = new e();

    @Override // na.c
    public final Map<lb.f, qb.g<?>> a() {
        throw new IllegalStateException("No methods should be called on this descriptor. Only its presence matters".toString());
    }

    @Override // na.c
    public final lb.c d() {
        ma.e eVarD = sb.b.d(this);
        if (eVarD == null) {
            return null;
        }
        if (ec.i.f(eVarD)) {
            eVarD = null;
        }
        if (eVarD != null) {
            return sb.b.c(eVarD);
        }
        return null;
    }

    @Override // na.c
    public final r0 getSource() {
        throw new IllegalStateException("No methods should be called on this descriptor. Only its presence matters".toString());
    }

    @Override // na.c
    public final e0 getType() {
        throw new IllegalStateException("No methods should be called on this descriptor. Only its presence matters".toString());
    }

    public final String toString() {
        return "[EnhancedType]";
    }
}
