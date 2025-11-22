package pa;

/* loaded from: classes2.dex */
public final class o0 extends d {

    /* renamed from: c, reason: collision with root package name */
    public final ma.j f12973c;

    /* renamed from: d, reason: collision with root package name */
    public final wb.g f12974d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0(ma.j jVar, wb.a aVar, na.h hVar) {
        super(hVar);
        if (jVar == null) {
            C(0);
            throw null;
        }
        if (hVar == null) {
            C(2);
            throw null;
        }
        this.f12973c = jVar;
        this.f12974d = aVar;
    }

    public static /* synthetic */ void C(int r82) {
        String str = (r82 == 3 || r82 == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r82 == 3 || r82 == 4) ? 2 : 3];
        switch (r82) {
            case 1:
                objArr[0] = "value";
                break;
            case 2:
                objArr[0] = "annotations";
                break;
            case 3:
            case 4:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl";
                break;
            case 5:
                objArr[0] = "newOwner";
                break;
            case 6:
                objArr[0] = "outType";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        if (r82 == 3) {
            objArr[1] = "getValue";
        } else if (r82 != 4) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl";
        } else {
            objArr[1] = "getContainingDeclaration";
        }
        if (r82 != 3 && r82 != 4) {
            if (r82 == 5) {
                objArr[2] = "copy";
            } else if (r82 != 6) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "setOutType";
            }
        }
        String str2 = String.format(str, objArr);
        if (r82 != 3 && r82 != 4) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // ma.j
    public final ma.j b() {
        ma.j jVar = this.f12973c;
        if (jVar != null) {
            return jVar;
        }
        C(4);
        throw null;
    }

    @Override // ma.o0
    public final wb.g getValue() {
        wb.g gVar = this.f12974d;
        if (gVar != null) {
            return gVar;
        }
        C(3);
        throw null;
    }
}
