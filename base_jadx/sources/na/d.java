package na;

import cc.e0;
import cc.m0;
import java.util.Map;
import ma.r0;

/* loaded from: classes2.dex */
public final class d implements c {

    /* renamed from: a, reason: collision with root package name */
    public final e0 f10634a;

    /* renamed from: b, reason: collision with root package name */
    public final Map<lb.f, qb.g<?>> f10635b;

    /* renamed from: c, reason: collision with root package name */
    public final r0 f10636c;

    public d(m0 m0Var, Map map, r0 r0Var) {
        if (m0Var == null) {
            b(0);
            throw null;
        }
        if (map == null) {
            b(1);
            throw null;
        }
        if (r0Var == null) {
            b(2);
            throw null;
        }
        this.f10634a = m0Var;
        this.f10635b = map;
        this.f10636c = r0Var;
    }

    public static /* synthetic */ void b(int r10) {
        String str = (r10 == 3 || r10 == 4 || r10 == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r10 == 3 || r10 == 4 || r10 == 5) ? 2 : 3];
        if (r10 == 1) {
            objArr[0] = "valueArguments";
        } else if (r10 == 2) {
            objArr[0] = "source";
        } else if (r10 == 3 || r10 == 4 || r10 == 5) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl";
        } else {
            objArr[0] = "annotationType";
        }
        if (r10 == 3) {
            objArr[1] = "getType";
        } else if (r10 == 4) {
            objArr[1] = "getAllValueArguments";
        } else if (r10 != 5) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl";
        } else {
            objArr[1] = "getSource";
        }
        if (r10 != 3 && r10 != 4 && r10 != 5) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (r10 != 3 && r10 != 4 && r10 != 5) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // na.c
    public final Map<lb.f, qb.g<?>> a() {
        Map<lb.f, qb.g<?>> map = this.f10635b;
        if (map != null) {
            return map;
        }
        b(4);
        throw null;
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
        r0 r0Var = this.f10636c;
        if (r0Var != null) {
            return r0Var;
        }
        b(5);
        throw null;
    }

    @Override // na.c
    public final e0 getType() {
        e0 e0Var = this.f10634a;
        if (e0Var != null) {
            return e0Var;
        }
        b(3);
        throw null;
    }

    public final String toString() {
        return nb.c.f10697a.p(this, null);
    }
}
