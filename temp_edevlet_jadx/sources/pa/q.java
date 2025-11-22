package pa;

/* loaded from: classes2.dex */
public abstract class q extends p implements ma.k {

    /* renamed from: c, reason: collision with root package name */
    public final ma.j f12976c;

    /* renamed from: d, reason: collision with root package name */
    public final ma.r0 f12977d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(ma.j jVar, na.h hVar, lb.f fVar, ma.r0 r0Var) {
        super(hVar, fVar);
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
        this.f12976c = jVar;
        this.f12977d = r0Var;
    }

    public static /* synthetic */ void C(int r92) {
        String str = (r92 == 4 || r92 == 5 || r92 == 6) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r92 == 4 || r92 == 5 || r92 == 6) ? 2 : 3];
        switch (r92) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = "source";
                break;
            case 4:
            case 5:
            case 6:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        if (r92 == 4) {
            objArr[1] = "getOriginal";
        } else if (r92 == 5) {
            objArr[1] = "getContainingDeclaration";
        } else if (r92 != 6) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl";
        } else {
            objArr[1] = "getSource";
        }
        if (r92 != 4 && r92 != 5 && r92 != 6) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (r92 != 4 && r92 != 5 && r92 != 6) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public ma.j b() {
        ma.j jVar = this.f12976c;
        if (jVar != null) {
            return jVar;
        }
        C(5);
        throw null;
    }

    public ma.r0 getSource() {
        ma.r0 r0Var = this.f12977d;
        if (r0Var != null) {
            return r0Var;
        }
        C(6);
        throw null;
    }

    @Override // pa.p, ma.j
    /* renamed from: z0, reason: merged with bridge method [inline-methods] */
    public ma.m a() {
        return this;
    }
}
