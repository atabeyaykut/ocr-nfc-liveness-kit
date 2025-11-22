package pa;

/* loaded from: classes2.dex */
public abstract class m extends b {

    /* renamed from: e, reason: collision with root package name */
    public final ma.j f12959e;
    public final ma.r0 f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f12960g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(bc.l lVar, ma.j jVar, lb.f fVar, ma.r0 r0Var) {
        super(lVar, fVar);
        if (lVar == null) {
            z0(0);
            throw null;
        }
        if (jVar == null) {
            z0(1);
            throw null;
        }
        if (fVar == null) {
            z0(2);
            throw null;
        }
        if (r0Var == null) {
            z0(3);
            throw null;
        }
        this.f12959e = jVar;
        this.f = r0Var;
        this.f12960g = false;
    }

    public static /* synthetic */ void z0(int r92) {
        String str = (r92 == 4 || r92 == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r92 == 4 || r92 == 5) ? 2 : 3];
        if (r92 == 1) {
            objArr[0] = "containingDeclaration";
        } else if (r92 == 2) {
            objArr[0] = "name";
        } else if (r92 == 3) {
            objArr[0] = "source";
        } else if (r92 == 4 || r92 == 5) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase";
        } else {
            objArr[0] = "storageManager";
        }
        if (r92 == 4) {
            objArr[1] = "getContainingDeclaration";
        } else if (r92 != 5) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase";
        } else {
            objArr[1] = "getSource";
        }
        if (r92 != 4 && r92 != 5) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (r92 != 4 && r92 != 5) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // ma.e, ma.k, ma.j
    public final ma.j b() {
        ma.j jVar = this.f12959e;
        if (jVar != null) {
            return jVar;
        }
        z0(4);
        throw null;
    }

    @Override // ma.m
    public final ma.r0 getSource() {
        ma.r0 r0Var = this.f;
        if (r0Var != null) {
            return r0Var;
        }
        z0(5);
        throw null;
    }

    public boolean isExternal() {
        return this.f12960g;
    }
}
