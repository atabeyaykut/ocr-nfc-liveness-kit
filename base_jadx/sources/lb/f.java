package lb;

/* loaded from: classes2.dex */
public final class f implements Comparable<f> {

    /* renamed from: a, reason: collision with root package name */
    public final String f9676a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f9677b;

    public f(String str, boolean z10) {
        if (str == null) {
            n(0);
            throw null;
        }
        this.f9676a = str;
        this.f9677b = z10;
    }

    public static /* synthetic */ void n(int r92) {
        String str = (r92 == 1 || r92 == 2 || r92 == 3 || r92 == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r92 == 1 || r92 == 2 || r92 == 3 || r92 == 4) ? 2 : 3];
        if (r92 == 1 || r92 == 2 || r92 == 3 || r92 == 4) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/name/Name";
        } else {
            objArr[0] = "name";
        }
        if (r92 == 1) {
            objArr[1] = "asString";
        } else if (r92 == 2) {
            objArr[1] = "getIdentifier";
        } else if (r92 == 3 || r92 == 4) {
            objArr[1] = "asStringStripSpecialMarkers";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/name/Name";
        }
        switch (r92) {
            case 1:
            case 2:
            case 3:
            case 4:
                break;
            case 5:
                objArr[2] = "identifier";
                break;
            case 6:
                objArr[2] = "isValidIdentifier";
                break;
            case 7:
                objArr[2] = "special";
                break;
            case 8:
                objArr[2] = "guessByFirstCharacter";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (r92 != 1 && r92 != 2 && r92 != 3 && r92 != 4) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static f r(String str) {
        if (str != null) {
            return str.startsWith("<") ? v(str) : t(str);
        }
        n(8);
        throw null;
    }

    public static f t(String str) {
        if (str != null) {
            return new f(str, false);
        }
        n(5);
        throw null;
    }

    public static boolean u(String str) {
        if (str == null) {
            n(6);
            throw null;
        }
        if (str.isEmpty() || str.startsWith("<")) {
            return false;
        }
        for (int r02 = 0; r02 < str.length(); r02++) {
            char cCharAt = str.charAt(r02);
            if (cCharAt == '.' || cCharAt == '/' || cCharAt == '\\') {
                return false;
            }
        }
        return true;
    }

    public static f v(String str) {
        if (str == null) {
            n(7);
            throw null;
        }
        if (str.startsWith("<")) {
            return new f(str, true);
        }
        throw new IllegalArgumentException("special name must start with '<': ".concat(str));
    }

    @Override // java.lang.Comparable
    public final int compareTo(f fVar) {
        return this.f9676a.compareTo(fVar.f9676a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f9677b == fVar.f9677b && this.f9676a.equals(fVar.f9676a);
    }

    public final int hashCode() {
        return (this.f9676a.hashCode() * 31) + (this.f9677b ? 1 : 0);
    }

    public final String o() {
        String str = this.f9676a;
        if (str != null) {
            return str;
        }
        n(1);
        throw null;
    }

    public final String q() {
        if (this.f9677b) {
            throw new IllegalStateException("not identifier: " + this);
        }
        String strO = o();
        if (strO != null) {
            return strO;
        }
        n(2);
        throw null;
    }

    public final String toString() {
        return this.f9676a;
    }
}
