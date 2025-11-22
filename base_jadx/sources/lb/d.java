package lb;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import x9.l;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: e, reason: collision with root package name */
    public static final f f9670e = f.v("<root>");
    public static final Pattern f = Pattern.compile("\\.");

    /* renamed from: g, reason: collision with root package name */
    public static final a f9671g = new a();

    /* renamed from: a, reason: collision with root package name */
    public final String f9672a;

    /* renamed from: b, reason: collision with root package name */
    public transient c f9673b;

    /* renamed from: c, reason: collision with root package name */
    public transient d f9674c;

    /* renamed from: d, reason: collision with root package name */
    public transient f f9675d;

    public static class a implements l<String, f> {
        @Override // x9.l
        public final f invoke(String str) {
            return f.r(str);
        }
    }

    public d(String str) {
        if (str != null) {
            this.f9672a = str;
        } else {
            a(2);
            throw null;
        }
    }

    public d(String str, c cVar) {
        if (str == null) {
            a(0);
            throw null;
        }
        if (cVar == null) {
            a(1);
            throw null;
        }
        this.f9672a = str;
        this.f9673b = cVar;
    }

    public d(String str, d dVar, f fVar) {
        if (str == null) {
            a(3);
            throw null;
        }
        this.f9672a = str;
        this.f9674c = dVar;
        this.f9675d = fVar;
    }

    public static /* synthetic */ void a(int r82) {
        String str;
        int r22;
        switch (r82) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 9:
            case 15:
            case 16:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (r82) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                r22 = 2;
                break;
            case 9:
            case 15:
            case 16:
            default:
                r22 = 3;
                break;
        }
        Object[] objArr = new Object[r22];
        if (r82 != 1) {
            switch (r82) {
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 17:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/name/FqNameUnsafe";
                    break;
                case 9:
                    objArr[0] = "name";
                    break;
                case 15:
                    objArr[0] = "segment";
                    break;
                case 16:
                    objArr[0] = "shortName";
                    break;
                default:
                    objArr[0] = "fqName";
                    break;
            }
        } else {
            objArr[0] = "safe";
        }
        switch (r82) {
            case 4:
                objArr[1] = "asString";
                break;
            case 5:
            case 6:
                objArr[1] = "toSafe";
                break;
            case 7:
            case 8:
                objArr[1] = "parent";
                break;
            case 9:
            case 15:
            case 16:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/name/FqNameUnsafe";
                break;
            case 10:
            case 11:
                objArr[1] = "shortName";
                break;
            case 12:
            case 13:
                objArr[1] = "shortNameOrSpecial";
                break;
            case 14:
                objArr[1] = "pathSegments";
                break;
            case 17:
                objArr[1] = "toString";
                break;
        }
        switch (r82) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                break;
            case 9:
                objArr[2] = "child";
                break;
            case 15:
                objArr[2] = "startsWith";
                break;
            case 16:
                objArr[2] = "topLevel";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (r82) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                throw new IllegalStateException(str2);
            case 9:
            case 15:
            case 16:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public final d b(f fVar) {
        String strO;
        if (fVar == null) {
            a(9);
            throw null;
        }
        if (d()) {
            strO = fVar.o();
        } else {
            strO = this.f9672a + "." + fVar.o();
        }
        return new d(strO, this, fVar);
    }

    public final void c() {
        String str = this.f9672a;
        int r02 = str.lastIndexOf(46);
        if (r02 >= 0) {
            this.f9675d = f.r(str.substring(r02 + 1));
            this.f9674c = new d(str.substring(0, r02));
        } else {
            this.f9675d = f.r(str);
            this.f9674c = c.f9667c.i();
        }
    }

    public final boolean d() {
        return this.f9672a.isEmpty();
    }

    public final boolean e() {
        if (this.f9673b == null) {
            String str = this.f9672a;
            if (str == null) {
                a(4);
                throw null;
            }
            if (str.indexOf(60) >= 0) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d) && this.f9672a.equals(((d) obj).f9672a);
    }

    public final List<f> f() {
        List<f> listEmptyList;
        if (d()) {
            listEmptyList = Collections.emptyList();
        } else {
            String[] strArrSplit = f.split(this.f9672a);
            kotlin.jvm.internal.h.f(strArrSplit, "<this>");
            a transform = f9671g;
            kotlin.jvm.internal.h.f(transform, "transform");
            ArrayList arrayList = new ArrayList(strArrSplit.length);
            for (String str : strArrSplit) {
                arrayList.add(transform.invoke(str));
            }
            listEmptyList = arrayList;
        }
        if (listEmptyList != null) {
            return listEmptyList;
        }
        a(14);
        throw null;
    }

    public final f g() {
        f fVar = this.f9675d;
        if (fVar != null) {
            if (fVar != null) {
                return fVar;
            }
            a(10);
            throw null;
        }
        if (d()) {
            throw new IllegalStateException("root");
        }
        c();
        f fVar2 = this.f9675d;
        if (fVar2 != null) {
            return fVar2;
        }
        a(11);
        throw null;
    }

    public final c h() {
        c cVar = this.f9673b;
        if (cVar == null) {
            c cVar2 = new c(this);
            this.f9673b = cVar2;
            return cVar2;
        }
        if (cVar != null) {
            return cVar;
        }
        a(5);
        throw null;
    }

    public final int hashCode() {
        return this.f9672a.hashCode();
    }

    public final String toString() {
        String strO = d() ? f9670e.o() : this.f9672a;
        if (strO != null) {
            return strO;
        }
        a(17);
        throw null;
    }
}
