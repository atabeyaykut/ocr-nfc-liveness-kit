package cc;

/* loaded from: classes2.dex */
public final class k1 extends j1 {

    /* renamed from: a, reason: collision with root package name */
    public final t1 f2326a;

    /* renamed from: b, reason: collision with root package name */
    public final e0 f2327b;

    /* JADX WARN: 'thıs' call moved to the top of the method (can break code semantics) */
    public k1(e0 e0Var) {
        this(e0Var, t1.INVARIANT);
        if (e0Var != null) {
        } else {
            d(2);
            throw null;
        }
    }

    public k1(e0 e0Var, t1 t1Var) {
        if (t1Var == null) {
            d(0);
            throw null;
        }
        if (e0Var == null) {
            d(1);
            throw null;
        }
        this.f2326a = t1Var;
        this.f2327b = e0Var;
    }

    public static /* synthetic */ void d(int r92) {
        String str = (r92 == 4 || r92 == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r92 == 4 || r92 == 5) ? 2 : 3];
        switch (r92) {
            case 1:
            case 2:
            case 3:
                objArr[0] = "type";
                break;
            case 4:
            case 5:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl";
                break;
            case 6:
                objArr[0] = "kotlinTypeRefiner";
                break;
            default:
                objArr[0] = "projection";
                break;
        }
        if (r92 == 4) {
            objArr[1] = "getProjectionKind";
        } else if (r92 != 5) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl";
        } else {
            objArr[1] = "getType";
        }
        if (r92 == 3) {
            objArr[2] = "replaceType";
        } else if (r92 != 4 && r92 != 5) {
            if (r92 != 6) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "refine";
            }
        }
        String str2 = String.format(str, objArr);
        if (r92 != 4 && r92 != 5) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // cc.i1
    public final i1 a(dc.f fVar) {
        if (fVar != null) {
            return new k1(fVar.x(this.f2327b), this.f2326a);
        }
        d(6);
        throw null;
    }

    @Override // cc.i1
    public final t1 b() {
        t1 t1Var = this.f2326a;
        if (t1Var != null) {
            return t1Var;
        }
        d(4);
        throw null;
    }

    @Override // cc.i1
    public final boolean c() {
        return false;
    }

    @Override // cc.i1
    public final e0 getType() {
        e0 e0Var = this.f2327b;
        if (e0Var != null) {
            return e0Var;
        }
        d(5);
        throw null;
    }
}
