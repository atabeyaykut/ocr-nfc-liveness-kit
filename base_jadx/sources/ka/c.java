package ka;

import ja.o;
import kotlin.jvm.internal.h;
import lb.f;
import mc.j;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'f' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: c, reason: collision with root package name */
    public static final a f8799c;

    /* renamed from: d, reason: collision with root package name */
    public static final c f8800d;

    /* renamed from: e, reason: collision with root package name */
    public static final c f8801e;
    public static final c f;

    /* renamed from: g, reason: collision with root package name */
    public static final c f8802g;

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ c[] f8803h;

    /* renamed from: a, reason: collision with root package name */
    public final lb.c f8804a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8805b;

    public static final class a {

        /* renamed from: ka.c$a$a, reason: collision with other inner class name */
        public static final class C0163a {

            /* renamed from: a, reason: collision with root package name */
            public final c f8806a;

            /* renamed from: b, reason: collision with root package name */
            public final int f8807b;

            public C0163a(c cVar, int r22) {
                this.f8806a = cVar;
                this.f8807b = r22;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0163a)) {
                    return false;
                }
                C0163a c0163a = (C0163a) obj;
                return this.f8806a == c0163a.f8806a && this.f8807b == c0163a.f8807b;
            }

            public final int hashCode() {
                return (this.f8806a.hashCode() * 31) + this.f8807b;
            }

            public final String toString() {
                StringBuilder sb2 = new StringBuilder("KindWithArity(kind=");
                sb2.append(this.f8806a);
                sb2.append(", arity=");
                return androidx.constraintlayout.core.a.d(sb2, this.f8807b, ')');
            }
        }

        public static C0163a a(String str, lb.c packageFqName) {
            c cVar;
            Integer numValueOf;
            h.f(packageFqName, "packageFqName");
            c[] cVarArrValues = c.values();
            int length = cVarArrValues.length;
            int r32 = 0;
            while (true) {
                if (r32 >= length) {
                    cVar = null;
                    break;
                }
                cVar = cVarArrValues[r32];
                if (h.a(cVar.f8804a, packageFqName) && j.D(str, cVar.f8805b, false)) {
                    break;
                }
                r32++;
            }
            if (cVar == null) {
                return null;
            }
            String strSubstring = str.substring(cVar.f8805b.length());
            h.e(strSubstring, "this as java.lang.String).substring(startIndex)");
            if (strSubstring.length() == 0) {
                numValueOf = null;
                break;
            }
            int length2 = strSubstring.length();
            int r12 = 0;
            for (int r02 = 0; r02 < length2; r02++) {
                int r33 = strSubstring.charAt(r02) - '0';
                if (!(r33 >= 0 && r33 < 10)) {
                    numValueOf = null;
                    break;
                }
                r12 = (r12 * 10) + r33;
            }
            numValueOf = Integer.valueOf(r12);
            if (numValueOf != null) {
                return new C0163a(cVar, numValueOf.intValue());
            }
            return null;
        }
    }

    static {
        c cVar = new c("Function", 0, o.f8364k, "Function");
        f8800d = cVar;
        c cVar2 = new c("SuspendFunction", 1, o.f8359e, "SuspendFunction");
        f8801e = cVar2;
        lb.c cVar3 = o.f8361h;
        c cVar4 = new c("KFunction", 2, cVar3, "KFunction");
        f = cVar4;
        c cVar5 = new c("KSuspendFunction", 3, cVar3, "KSuspendFunction");
        f8802g = cVar5;
        f8803h = new c[]{cVar, cVar2, cVar4, cVar5};
        f8799c = new a();
    }

    public c(String str, int r22, lb.c cVar, String str2) {
        this.f8804a = cVar;
        this.f8805b = str2;
    }

    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    public static c[] values() {
        return (c[]) f8803h.clone();
    }

    public final f n(int r32) {
        return f.t(this.f8805b + r32);
    }
}
