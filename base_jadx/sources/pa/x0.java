package pa;

/* loaded from: classes2.dex */
public abstract class x0 extends w0 {
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public bc.j<qb.g<?>> f13048g;

    /* renamed from: h, reason: collision with root package name */
    public x9.a<bc.j<qb.g<?>>> f13049h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x0(ma.j jVar, na.h hVar, lb.f fVar, boolean z10, ma.r0 r0Var) {
        super(jVar, hVar, fVar, null, r0Var);
        if (jVar == null) {
            C(0);
            throw null;
        }
        if (hVar == null) {
            C(1);
            throw null;
        }
        if (fVar == null) {
            C(2);
            throw null;
        }
        if (r0Var == null) {
            C(3);
            throw null;
        }
        this.f = z10;
    }

    public static /* synthetic */ void C(int r72) {
        Object[] objArr = new Object[3];
        if (r72 == 1) {
            objArr[0] = "annotations";
        } else if (r72 == 2) {
            objArr[0] = "name";
        } else if (r72 == 3) {
            objArr[0] = "source";
        } else if (r72 == 4 || r72 == 5) {
            objArr[0] = "compileTimeInitializerFactory";
        } else {
            objArr[0] = "containingDeclaration";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorWithInitializerImpl";
        if (r72 == 4) {
            objArr[2] = "setCompileTimeInitializerFactory";
        } else if (r72 != 5) {
            objArr[2] = "<init>";
        } else {
            objArr[2] = "setCompileTimeInitializer";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public final void E0(bc.j<qb.g<?>> jVar, x9.a<bc.j<qb.g<?>>> aVar) {
        if (aVar == null) {
            C(5);
            throw null;
        }
        this.f13049h = aVar;
        if (jVar == null) {
            jVar = aVar.invoke();
        }
        this.f13048g = jVar;
    }

    @Override // ma.b1
    public final qb.g<?> S() {
        bc.j<qb.g<?>> jVar = this.f13048g;
        if (jVar != null) {
            return jVar.invoke();
        }
        return null;
    }

    @Override // ma.b1
    public final boolean f0() {
        return this.f;
    }
}
