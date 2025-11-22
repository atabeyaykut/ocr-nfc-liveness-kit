package wb;

import cc.e0;

/* loaded from: classes2.dex */
public final class d extends a {

    /* renamed from: c, reason: collision with root package name */
    public final ma.a f18860c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(ma.a aVar, e0 e0Var, g gVar) {
        super(e0Var, gVar);
        if (aVar == null) {
            c(0);
            throw null;
        }
        if (e0Var == null) {
            c(1);
            throw null;
        }
        this.f18860c = aVar;
    }

    public static /* synthetic */ void c(int r82) {
        String str = r82 != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[r82 != 2 ? 3 : 2];
        if (r82 == 1) {
            objArr[0] = "receiverType";
        } else if (r82 == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ExtensionReceiver";
        } else if (r82 != 3) {
            objArr[0] = "callableDescriptor";
        } else {
            objArr[0] = "newType";
        }
        if (r82 != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ExtensionReceiver";
        } else {
            objArr[1] = "getDeclarationDescriptor";
        }
        if (r82 != 2) {
            if (r82 != 3) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "replaceType";
            }
        }
        String str2 = String.format(str, objArr);
        if (r82 == 2) {
            throw new IllegalStateException(str2);
        }
    }

    public final String toString() {
        return getType() + ": Ext {" + this.f18860c + "}";
    }
}
