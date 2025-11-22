package tb;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f15648a;

    public b(String str) {
        if (str != null) {
            this.f15648a = str;
        } else {
            a(5);
            throw null;
        }
    }

    public static /* synthetic */ void a(int r10) {
        String str = (r10 == 3 || r10 == 6 || r10 == 7 || r10 == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r10 == 3 || r10 == 6 || r10 == 7 || r10 == 8) ? 2 : 3];
        switch (r10) {
            case 1:
                objArr[0] = "classId";
                break;
            case 2:
            case 4:
                objArr[0] = "fqName";
                break;
            case 3:
            case 6:
            case 7:
            case 8:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName";
                break;
            case 5:
            default:
                objArr[0] = "internalName";
                break;
        }
        if (r10 == 3) {
            objArr[1] = "byFqNameWithoutInnerClasses";
        } else if (r10 == 6) {
            objArr[1] = "getFqNameForClassNameWithoutDollars";
        } else if (r10 == 7) {
            objArr[1] = "getPackageFqName";
        } else if (r10 != 8) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName";
        } else {
            objArr[1] = "getInternalName";
        }
        switch (r10) {
            case 1:
                objArr[2] = "byClassId";
                break;
            case 2:
            case 4:
                objArr[2] = "byFqNameWithoutInnerClasses";
                break;
            case 3:
            case 6:
            case 7:
            case 8:
                break;
            case 5:
                objArr[2] = "<init>";
                break;
            default:
                objArr[2] = "byInternalName";
                break;
        }
        String str2 = String.format(str, objArr);
        if (r10 != 3 && r10 != 6 && r10 != 7 && r10 != 8) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static b b(lb.b bVar) {
        if (bVar == null) {
            a(1);
            throw null;
        }
        lb.c cVarH = bVar.h();
        String strReplace = bVar.i().b().replace('.', '$');
        if (cVarH.d()) {
            return new b(strReplace);
        }
        return new b(cVarH.b().replace('.', '/') + "/" + strReplace);
    }

    public static b c(lb.c cVar) {
        if (cVar != null) {
            return new b(cVar.b().replace('.', '/'));
        }
        a(2);
        throw null;
    }

    public static b d(String str) {
        if (str != null) {
            return new b(str);
        }
        a(0);
        throw null;
    }

    public final String e() {
        String str = this.f15648a;
        if (str != null) {
            return str;
        }
        a(8);
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        return this.f15648a.equals(((b) obj).f15648a);
    }

    public final int hashCode() {
        return this.f15648a.hashCode();
    }

    public final String toString() {
        return this.f15648a;
    }
}
