package pa;

import na.h;

/* loaded from: classes2.dex */
public final class y extends d {

    /* renamed from: c, reason: collision with root package name */
    public final ma.e f13050c;

    /* renamed from: d, reason: collision with root package name */
    public final wb.e f13051d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(b bVar) {
        super(h.a.f10653a);
        if (bVar == null) {
            C(0);
            throw null;
        }
        this.f13050c = bVar;
        this.f13051d = new wb.e(bVar);
    }

    public static /* synthetic */ void C(int r82) {
        String str = (r82 == 1 || r82 == 2) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r82 == 1 || r82 == 2) ? 2 : 3];
        if (r82 == 1 || r82 == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazyClassReceiverParameterDescriptor";
        } else if (r82 != 3) {
            objArr[0] = "descriptor";
        } else {
            objArr[0] = "newOwner";
        }
        if (r82 == 1) {
            objArr[1] = "getValue";
        } else if (r82 != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazyClassReceiverParameterDescriptor";
        } else {
            objArr[1] = "getContainingDeclaration";
        }
        if (r82 != 1 && r82 != 2) {
            if (r82 != 3) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "copy";
            }
        }
        String str2 = String.format(str, objArr);
        if (r82 != 1 && r82 != 2) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // ma.j
    public final ma.j b() {
        ma.e eVar = this.f13050c;
        if (eVar != null) {
            return eVar;
        }
        C(2);
        throw null;
    }

    @Override // ma.o0
    public final wb.g getValue() {
        wb.e eVar = this.f13051d;
        if (eVar != null) {
            return eVar;
        }
        C(1);
        throw null;
    }

    @Override // pa.p
    public final String toString() {
        return "class " + this.f13050c.getName() + "::this";
    }
}
