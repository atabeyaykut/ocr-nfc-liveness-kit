package pa;

/* loaded from: classes2.dex */
public abstract class p extends na.b implements ma.j {

    /* renamed from: b, reason: collision with root package name */
    public final lb.f f12975b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(na.h hVar, lb.f fVar) {
        super(hVar);
        if (hVar == null) {
            C(0);
            throw null;
        }
        if (fVar == null) {
            C(1);
            throw null;
        }
        this.f12975b = fVar;
    }

    public static /* synthetic */ void C(int r92) {
        String str = (r92 == 2 || r92 == 3 || r92 == 5 || r92 == 6) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r92 == 2 || r92 == 3 || r92 == 5 || r92 == 6) ? 2 : 3];
        switch (r92) {
            case 1:
                objArr[0] = "name";
                break;
            case 2:
            case 3:
            case 5:
            case 6:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl";
                break;
            case 4:
                objArr[0] = "descriptor";
                break;
            default:
                objArr[0] = "annotations";
                break;
        }
        if (r92 == 2) {
            objArr[1] = "getName";
        } else if (r92 == 3) {
            objArr[1] = "getOriginal";
        } else if (r92 == 5 || r92 == 6) {
            objArr[1] = "toString";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl";
        }
        if (r92 != 2 && r92 != 3) {
            if (r92 == 4) {
                objArr[2] = "toString";
            } else if (r92 != 5 && r92 != 6) {
                objArr[2] = "<init>";
            }
        }
        String str2 = String.format(str, objArr);
        if (r92 != 2 && r92 != 3 && r92 != 5 && r92 != 6) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static String e0(ma.j jVar) {
        if (jVar == null) {
            C(4);
            throw null;
        }
        try {
            String str = nb.c.f10698b.F(jVar) + "[" + jVar.getClass().getSimpleName() + "@" + Integer.toHexString(System.identityHashCode(jVar)) + "]";
            if (str != null) {
                return str;
            }
            C(5);
            throw null;
        } catch (Throwable unused) {
            String str2 = jVar.getClass().getSimpleName() + " " + jVar.getName();
            if (str2 != null) {
                return str2;
            }
            C(6);
            throw null;
        }
    }

    public ma.j a() {
        return this;
    }

    @Override // ma.j
    public final lb.f getName() {
        lb.f fVar = this.f12975b;
        if (fVar != null) {
            return fVar;
        }
        C(2);
        throw null;
    }

    public String toString() {
        return e0(this);
    }
}
