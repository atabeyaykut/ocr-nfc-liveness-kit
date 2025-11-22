package lb;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: c, reason: collision with root package name */
    public static final c f9667c = new c("");

    /* renamed from: a, reason: collision with root package name */
    public final d f9668a;

    /* renamed from: b, reason: collision with root package name */
    public transient c f9669b;

    public c(String str) {
        if (str != null) {
            this.f9668a = new d(str, this);
        } else {
            a(1);
            throw null;
        }
    }

    public c(d dVar) {
        if (dVar != null) {
            this.f9668a = dVar;
        } else {
            a(2);
            throw null;
        }
    }

    public c(d dVar, c cVar) {
        this.f9668a = dVar;
        this.f9669b = cVar;
    }

    public static /* synthetic */ void a(int r72) {
        String str;
        int r22;
        switch (r72) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 8:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (r72) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                r22 = 2;
                break;
            case 8:
            default:
                r22 = 3;
                break;
        }
        Object[] objArr = new Object[r22];
        switch (r72) {
            case 1:
            case 2:
            case 3:
                objArr[0] = "fqName";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/name/FqName";
                break;
            case 8:
                objArr[0] = "name";
                break;
            case 12:
                objArr[0] = "segment";
                break;
            case 13:
                objArr[0] = "shortName";
                break;
            default:
                objArr[0] = "names";
                break;
        }
        switch (r72) {
            case 4:
                objArr[1] = "asString";
                break;
            case 5:
                objArr[1] = "toUnsafe";
                break;
            case 6:
            case 7:
                objArr[1] = "parent";
                break;
            case 8:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/name/FqName";
                break;
            case 9:
                objArr[1] = "shortName";
                break;
            case 10:
                objArr[1] = "shortNameOrSpecial";
                break;
            case 11:
                objArr[1] = "pathSegments";
                break;
        }
        switch (r72) {
            case 1:
            case 2:
            case 3:
                objArr[2] = "<init>";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                break;
            case 8:
                objArr[2] = "child";
                break;
            case 12:
                objArr[2] = "startsWith";
                break;
            case 13:
                objArr[2] = "topLevel";
                break;
            default:
                objArr[2] = "fromSegments";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (r72) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                throw new IllegalStateException(str2);
            case 8:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public static c j(f fVar) {
        if (fVar == null) {
            a(13);
            throw null;
        }
        if (fVar != null) {
            return new c(new d(fVar.o(), f9667c.i(), fVar));
        }
        d.a(16);
        throw null;
    }

    public final String b() {
        String str = this.f9668a.f9672a;
        if (str != null) {
            return str;
        }
        d.a(4);
        throw null;
    }

    public final c c(f fVar) {
        if (fVar != null) {
            return new c(this.f9668a.b(fVar), this);
        }
        a(8);
        throw null;
    }

    public final boolean d() {
        return this.f9668a.d();
    }

    public final c e() {
        c cVar = this.f9669b;
        if (cVar != null) {
            if (cVar != null) {
                return cVar;
            }
            a(6);
            throw null;
        }
        if (d()) {
            throw new IllegalStateException("root");
        }
        d dVar = this.f9668a;
        d dVar2 = dVar.f9674c;
        if (dVar2 == null) {
            if (dVar.d()) {
                throw new IllegalStateException("root");
            }
            dVar.c();
            dVar2 = dVar.f9674c;
            if (dVar2 == null) {
                d.a(8);
                throw null;
            }
        }
        c cVar2 = new c(dVar2);
        this.f9669b = cVar2;
        return cVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && this.f9668a.equals(((c) obj).f9668a);
    }

    public final f f() {
        f fVarG = this.f9668a.g();
        if (fVarG != null) {
            return fVarG;
        }
        a(9);
        throw null;
    }

    public final f g() {
        f fVarG;
        d dVar = this.f9668a;
        if (dVar.d()) {
            fVarG = d.f9670e;
            if (fVarG == null) {
                d.a(12);
                throw null;
            }
        } else {
            fVarG = dVar.g();
            if (fVarG == null) {
                d.a(13);
                throw null;
            }
        }
        return fVarG;
    }

    public final boolean h(f fVar) {
        if (fVar == null) {
            a(12);
            throw null;
        }
        d dVar = this.f9668a;
        if (dVar.d()) {
            return false;
        }
        String str = dVar.f9672a;
        int length = str.indexOf(46);
        String strO = fVar.o();
        if (length == -1) {
            length = str.length();
        }
        return str.regionMatches(0, strO, 0, length);
    }

    public final int hashCode() {
        return this.f9668a.hashCode();
    }

    public final d i() {
        d dVar = this.f9668a;
        if (dVar != null) {
            return dVar;
        }
        a(5);
        throw null;
    }

    public final String toString() {
        return this.f9668a.toString();
    }
}
