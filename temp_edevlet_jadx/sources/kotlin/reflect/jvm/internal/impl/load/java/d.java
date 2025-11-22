package kotlin.reflect.jvm.internal.impl.load.java;

import eb.w;
import ja.k;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.reflect.jvm.internal.impl.load.java.e;
import m9.e0;
import ma.k0;
import ma.l0;
import ma.q0;
import va.f;
import va.g;
import x9.l;

/* loaded from: classes2.dex */
public final class d {

    public static final class a extends j implements l<ma.b, Boolean> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f8984a = new a();

        public a() {
            super(1);
        }

        @Override // x9.l
        public final Boolean invoke(ma.b bVar) {
            ma.b it = bVar;
            h.f(it, "it");
            return Boolean.valueOf(a2.b.j(sb.b.k(it)));
        }
    }

    public static final class b extends j implements l<ma.b, Boolean> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f8985a = new b();

        public b() {
            super(1);
        }

        @Override // x9.l
        public final Boolean invoke(ma.b bVar) {
            ma.b it = bVar;
            h.f(it, "it");
            int r02 = kotlin.reflect.jvm.internal.impl.load.java.b.f8981m;
            q0 q0Var = (q0) it;
            return Boolean.valueOf(k.z(q0Var) && sb.b.b(q0Var, new kotlin.reflect.jvm.internal.impl.load.java.a(q0Var)) != null);
        }
    }

    public static final class c extends j implements l<ma.b, Boolean> {

        /* renamed from: a, reason: collision with root package name */
        public static final c f8986a = new c();

        public c() {
            super(1);
        }

        @Override // x9.l
        public final Boolean invoke(ma.b bVar) {
            ma.b bVarB;
            String strB;
            ma.b it = bVar;
            h.f(it, "it");
            boolean z10 = false;
            if (k.z(it)) {
                int r02 = kotlin.reflect.jvm.internal.impl.load.java.c.f8982m;
                if (((!e.f.contains(it.getName()) || (bVarB = sb.b.b(it, f.f18342a)) == null || (strB = w.b(bVarB)) == null) ? (char) 0 : e.f8989c.contains(strB) ? (char) 1 : ((e.b) e0.Q0(e.f8991e, strB)) == e.b.f9000b ? (char) 3 : (char) 2) != 0) {
                    z10 = true;
                }
            }
            return Boolean.valueOf(z10);
        }
    }

    public static final String a(ma.b bVar) {
        lb.f fVar;
        ma.b bVarB = k.z(bVar) ? b(bVar) : null;
        if (bVarB == null) {
            return null;
        }
        ma.b bVarK = sb.b.k(bVarB);
        if (bVarK instanceof l0) {
            k.z(bVarK);
            ma.b bVarB2 = sb.b.b(sb.b.k(bVarK), va.h.f18347a);
            if (bVarB2 == null || (fVar = g.f18343a.get(sb.b.g(bVarB2))) == null) {
                return null;
            }
            return fVar.o();
        }
        if (!(bVarK instanceof q0)) {
            return null;
        }
        int r02 = kotlin.reflect.jvm.internal.impl.load.java.b.f8981m;
        LinkedHashMap linkedHashMap = e.f8995j;
        String strB = w.b((q0) bVarK);
        lb.f fVar2 = strB == null ? null : (lb.f) linkedHashMap.get(strB);
        if (fVar2 != null) {
            return fVar2.o();
        }
        return null;
    }

    public static final <T extends ma.b> T b(T t10) {
        l lVar;
        h.f(t10, "<this>");
        if (!e.f8996k.contains(t10.getName()) && !g.f18346d.contains(sb.b.k(t10).getName())) {
            return null;
        }
        if (t10 instanceof l0 ? true : t10 instanceof k0) {
            lVar = a.f8984a;
        } else {
            if (!(t10 instanceof q0)) {
                return null;
            }
            lVar = b.f8985a;
        }
        return (T) sb.b.b(t10, lVar);
    }

    public static final <T extends ma.b> T c(T t10) {
        h.f(t10, "<this>");
        T t11 = (T) b(t10);
        if (t11 != null) {
            return t11;
        }
        int r02 = kotlin.reflect.jvm.internal.impl.load.java.c.f8982m;
        lb.f name = t10.getName();
        h.e(name, "name");
        if (kotlin.reflect.jvm.internal.impl.load.java.c.b(name)) {
            return (T) sb.b.b(t10, c.f8986a);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0131, code lost:
    
        if (r5 == null) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0133, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0134, code lost:
    
        if (r0 == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x013b, code lost:
    
        return !ja.k.z(r10);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean d(ma.e r10, ma.b r11) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.d.d(ma.e, ma.b):boolean");
    }
}
