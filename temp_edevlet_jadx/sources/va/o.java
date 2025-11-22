package va;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.HashMap;
import ma.e0;
import ma.p;

/* loaded from: classes2.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public static final a f18358a;

    /* renamed from: b, reason: collision with root package name */
    public static final b f18359b;

    /* renamed from: c, reason: collision with root package name */
    public static final c f18360c;

    /* renamed from: d, reason: collision with root package name */
    public static final HashMap f18361d;

    public static class a extends ma.o {
        public a(qa.a aVar) {
            super(aVar);
        }

        public static /* synthetic */ void e(int r32) {
            Object[] objArr = new Object[3];
            if (r32 != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$1";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // ma.q
        public final boolean c(p.b bVar, ma.n nVar, ma.j jVar) {
            if (jVar != null) {
                return o.c(nVar, jVar);
            }
            e(1);
            throw null;
        }
    }

    public static class b extends ma.o {
        public b(qa.c cVar) {
            super(cVar);
        }

        public static /* synthetic */ void e(int r32) {
            Object[] objArr = new Object[3];
            if (r32 != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$2";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // ma.q
        public final boolean c(p.b bVar, ma.n nVar, ma.j jVar) {
            if (jVar != null) {
                return o.b(bVar, nVar, jVar);
            }
            e(1);
            throw null;
        }
    }

    public static class c extends ma.o {
        public c(qa.b bVar) {
            super(bVar);
        }

        public static /* synthetic */ void e(int r32) {
            Object[] objArr = new Object[3];
            if (r32 != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$3";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // ma.q
        public final boolean c(p.b bVar, ma.n nVar, ma.j jVar) {
            if (jVar != null) {
                return o.b(bVar, nVar, jVar);
            }
            e(1);
            throw null;
        }
    }

    static {
        a aVar = new a(qa.a.f13463c);
        f18358a = aVar;
        b bVar = new b(qa.c.f13465c);
        f18359b = bVar;
        c cVar = new c(qa.b.f13464c);
        f18360c = cVar;
        HashMap map = new HashMap();
        f18361d = map;
        map.put(aVar.f10220a, aVar);
        map.put(bVar.f10220a, bVar);
        map.put(cVar.f10220a, cVar);
    }

    public static /* synthetic */ void a(int r92) {
        String str = (r92 == 5 || r92 == 6) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r92 == 5 || r92 == 6) ? 2 : 3];
        switch (r92) {
            case 1:
                objArr[0] = TypedValues.TransitionType.S_FROM;
                break;
            case 2:
                objArr[0] = "first";
                break;
            case 3:
                objArr[0] = "second";
                break;
            case 4:
                objArr[0] = "visibility";
                break;
            case 5:
            case 6:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities";
                break;
            default:
                objArr[0] = "what";
                break;
        }
        if (r92 == 5 || r92 == 6) {
            objArr[1] = "toDescriptorVisibility";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities";
        }
        if (r92 == 2 || r92 == 3) {
            objArr[2] = "areInSamePackage";
        } else if (r92 == 4) {
            objArr[2] = "toDescriptorVisibility";
        } else if (r92 != 5 && r92 != 6) {
            objArr[2] = "isVisibleForProtectedAndPackage";
        }
        String str2 = String.format(str, objArr);
        if (r92 != 5 && r92 != 6) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static boolean b(p.b bVar, ma.n nVar, ma.j jVar) {
        if (jVar == null) {
            a(1);
            throw null;
        }
        if (c(ob.i.v(nVar), jVar)) {
            return true;
        }
        return ma.p.f10223c.c(bVar, nVar, jVar);
    }

    public static boolean c(ma.j jVar, ma.j jVar2) {
        if (jVar == null) {
            a(2);
            throw null;
        }
        if (jVar2 == null) {
            a(3);
            throw null;
        }
        e0 e0Var = (e0) ob.i.i(jVar, e0.class, false);
        e0 e0Var2 = (e0) ob.i.i(jVar2, e0.class, false);
        return (e0Var2 == null || e0Var == null || !e0Var.d().equals(e0Var2.d())) ? false : true;
    }
}
