package wb;

import cc.e0;

/* loaded from: classes2.dex */
public abstract class a implements g {

    /* renamed from: a, reason: collision with root package name */
    public final e0 f18854a;

    /* renamed from: b, reason: collision with root package name */
    public final g f18855b;

    public a(e0 e0Var, g gVar) {
        if (e0Var == null) {
            c(0);
            throw null;
        }
        this.f18854a = e0Var;
        this.f18855b = gVar == null ? this : gVar;
    }

    public static /* synthetic */ void c(int r72) {
        String str = (r72 == 1 || r72 == 2) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r72 == 1 || r72 == 2) ? 2 : 3];
        if (r72 == 1 || r72 == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/AbstractReceiverValue";
        } else {
            objArr[0] = "receiverType";
        }
        if (r72 == 1) {
            objArr[1] = "getType";
        } else if (r72 != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/AbstractReceiverValue";
        } else {
            objArr[1] = "getOriginal";
        }
        if (r72 != 1 && r72 != 2) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (r72 != 1 && r72 != 2) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // wb.g
    public final e0 getType() {
        e0 e0Var = this.f18854a;
        if (e0Var != null) {
            return e0Var;
        }
        c(1);
        throw null;
    }
}
