package c5;

import c8.a;
import cc.a1;
import com.google.android.gms.internal.measurement.q9;
import java.io.EOFException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlinx.coroutines.CoroutineExceptionHandler;
import p9.e;
import s4.ca;

/* loaded from: classes.dex */
public /* synthetic */ class v implements p2, ca, r2.e, yb.u, c6.h, com.bumptech.glide.manager.i, id.c, yc.u {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ v f2048a = new v();

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ v f2049b = new v();

    /* renamed from: c, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.u f2050c = new kotlinx.coroutines.internal.u("NO_VALUE");

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ v f2051d = new v();

    /* renamed from: e, reason: collision with root package name */
    public static final v f2052e = new v();
    public static final /* synthetic */ v f = new v();

    /* renamed from: g, reason: collision with root package name */
    public static v f2053g;

    public static final boolean A(ma.e eVar) {
        LinkedHashSet linkedHashSet = ja.c.f8320a;
        if (ob.i.l(eVar)) {
            LinkedHashSet linkedHashSet2 = ja.c.f8320a;
            lb.b bVarF = sb.b.f(eVar);
            if (m9.t.V0(linkedHashSet2, bVarF != null ? bVarF.g() : null)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean B(ed.e isProbablyUtf8) {
        kotlin.jvm.internal.h.f(isProbablyUtf8, "$this$isProbablyUtf8");
        try {
            ed.e eVar = new ed.e();
            long j10 = isProbablyUtf8.f5304b;
            isProbablyUtf8.e(0L, j10 > 64 ? 64L : j10, eVar);
            for (int r82 = 0; r82 < 16; r82++) {
                if (eVar.I()) {
                    return true;
                }
                int r12 = eVar.t();
                if (Character.isISOControl(r12) && !Character.isWhitespace(r12)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static nc.t1 C(nc.a0 a0Var, p9.f fVar, int r42, x9.p pVar, int r6) {
        if ((r6 & 1) != 0) {
            fVar = p9.g.f12870a;
        }
        if ((r6 & 2) != 0) {
            r42 = 1;
        }
        p9.f fVarB = nc.w.b(a0Var, fVar);
        nc.t1 j1Var = r42 == 2 ? new nc.j1(fVarB, pVar) : new nc.t1(fVarB, true);
        j1Var.l0(r42, j1Var, pVar);
        return j1Var;
    }

    public static final void D(nc.a0 a0Var, gf.d interactor, x9.p pVar) {
        kotlin.jvm.internal.h.f(a0Var, "<this>");
        kotlin.jvm.internal.h.f(interactor, "interactor");
        C(a0Var, interactor.b(), 0, new gf.a(pVar, interactor, null), 2);
    }

    public static final cc.m0 E(cc.e0 e0Var) {
        kotlin.jvm.internal.h.f(e0Var, "<this>");
        cc.s1 s1VarP0 = e0Var.P0();
        if (s1VarP0 instanceof cc.y) {
            return ((cc.y) s1VarP0).f2377b;
        }
        if (s1VarP0 instanceof cc.m0) {
            return (cc.m0) s1VarP0;
        }
        throw new j7.p();
    }

    public static final ArrayList F(ma.f0 f0Var, lb.c fqName) {
        kotlin.jvm.internal.h.f(f0Var, "<this>");
        kotlin.jvm.internal.h.f(fqName, "fqName");
        ArrayList arrayList = new ArrayList();
        p(f0Var, fqName, arrayList);
        return arrayList;
    }

    public static final Object G(Object obj, kotlinx.coroutines.internal.j jVar) {
        if (obj == null) {
            return jVar;
        }
        if (obj instanceof ArrayList) {
            ((ArrayList) obj).add(jVar);
            return obj;
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(jVar);
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final cc.a1 H(cc.a1 r6, na.h r7) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.h.f(r6, r0)
            na.h r0 = cc.l.a(r6)
            if (r0 != r7) goto Lc
            return r6
        Lc:
            cc.k r0 = cc.l.b(r6)
            r1 = 1
            if (r0 == 0) goto L58
            boolean r2 = r6.isEmpty()
            if (r2 == 0) goto L1a
            goto L49
        L1a:
            ic.c<T> r2 = r6.f7362a
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            java.util.Iterator r2 = r2.iterator()
        L25:
            boolean r4 = r2.hasNext()
            if (r4 == 0) goto L3d
            java.lang.Object r4 = r2.next()
            r5 = r4
            cc.y0 r5 = (cc.y0) r5
            boolean r5 = kotlin.jvm.internal.h.a(r5, r0)
            r5 = r5 ^ r1
            if (r5 == 0) goto L25
            r3.add(r4)
            goto L25
        L3d:
            int r0 = r3.size()
            ic.c<T> r2 = r6.f7362a
            int r2 = r2.l()
            if (r0 != r2) goto L4b
        L49:
            r0 = r6
            goto L54
        L4b:
            cc.a1$a r0 = cc.a1.f2258b
            r0.getClass()
            cc.a1 r0 = cc.a1.a.c(r3)
        L54:
            if (r0 != 0) goto L57
            goto L58
        L57:
            r6 = r0
        L58:
            java.util.Iterator r0 = r7.iterator()
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L69
            boolean r0 = r7.isEmpty()
            if (r0 == 0) goto L69
            return r6
        L69:
            cc.k r0 = new cc.k
            r0.<init>(r7)
            da.d r7 = r0.b()
            cc.a1$a r2 = cc.a1.f2258b
            int r7 = r2.b(r7)
            ic.c<T> r2 = r6.f7362a
            java.lang.Object r7 = r2.get(r7)
            if (r7 == 0) goto L81
            goto L82
        L81:
            r1 = 0
        L82:
            if (r1 == 0) goto L85
            goto La3
        L85:
            boolean r7 = r6.isEmpty()
            if (r7 == 0) goto L95
            cc.a1 r6 = new cc.a1
            java.util.List r7 = b8.f.S(r0)
            r6.<init>(r7)
            goto La3
        L95:
            java.util.List r6 = m9.t.v1(r6)
            java.util.Collection r6 = (java.util.Collection) r6
            java.util.ArrayList r6 = m9.t.n1(r0, r6)
            cc.a1 r6 = cc.a1.a.c(r6)
        La3:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.v.H(cc.a1, na.h):cc.a1");
    }

    public static final long I(long j10, long j11, long j12, String str) {
        String property;
        int r02 = kotlinx.coroutines.internal.v.f9177a;
        try {
            property = System.getProperty(str);
        } catch (SecurityException unused) {
            property = null;
        }
        if (property == null) {
            return j10;
        }
        Long lU = mc.i.u(property);
        if (lU == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + property + '\'').toString());
        }
        long jLongValue = lU.longValue();
        if (j11 <= jLongValue && jLongValue <= j12) {
            return jLongValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j11 + ".." + j12 + ", but is '" + jLongValue + '\'').toString());
    }

    public static int J(String str, int r82, int r92, int r10, int r11) {
        if ((r11 & 4) != 0) {
            r92 = 1;
        }
        if ((r11 & 8) != 0) {
            r10 = Integer.MAX_VALUE;
        }
        return (int) I(r82, r92, r10, str);
    }

    public static ab.a K(int r82, boolean z10, boolean z11, pa.k kVar, int r12) {
        boolean z12 = (r12 & 1) != 0 ? false : z10;
        boolean z13 = (r12 & 2) != 0 ? false : z11;
        if ((r12 & 4) != 0) {
            kVar = null;
        }
        androidx.camera.core.impl.utils.f.j(r82, "<this>");
        return new ab.a(r82, z13, z12, kVar != null ? x5.a.r(kVar) : null, 34);
    }

    public static final cc.a1 L(na.h hVar) {
        kotlin.jvm.internal.h.f(hVar, "<this>");
        if (hVar.isEmpty()) {
            cc.a1.f2258b.getClass();
            return cc.a1.f2259c;
        }
        a1.a aVar = cc.a1.f2258b;
        List listS = b8.f.S(new cc.k(hVar));
        aVar.getClass();
        return a1.a.c(listS);
    }

    public static final cc.m0 M(cc.e0 e0Var) {
        kotlin.jvm.internal.h.f(e0Var, "<this>");
        cc.s1 s1VarP0 = e0Var.P0();
        if (s1VarP0 instanceof cc.y) {
            return ((cc.y) s1VarP0).f2378c;
        }
        if (s1VarP0 instanceof cc.m0) {
            return (cc.m0) s1VarP0;
        }
        throw new j7.p();
    }

    public static final Object N(p9.f fVar, x9.p pVar, p9.d dVar) {
        p9.f context = dVar.getContext();
        p9.f fVarPlus = !((Boolean) fVar.fold(Boolean.FALSE, nc.x.f10850a)).booleanValue() ? context.plus(fVar) : nc.w.a(context, fVar, false);
        x5.a.h(fVarPlus);
        if (fVarPlus == context) {
            kotlinx.coroutines.internal.r rVar = new kotlinx.coroutines.internal.r(dVar, fVarPlus);
            return com.google.android.gms.internal.clearcut.d0.B(rVar, rVar, pVar);
        }
        e.a aVar = e.a.f12868a;
        if (kotlin.jvm.internal.h.a(fVarPlus.get(aVar), context.get(aVar))) {
            nc.z1 z1Var = new nc.z1(dVar, fVarPlus);
            Object objC = kotlinx.coroutines.internal.w.c(fVarPlus, null);
            try {
                return com.google.android.gms.internal.clearcut.d0.B(z1Var, z1Var, pVar);
            } finally {
                kotlinx.coroutines.internal.w.a(fVarPlus, objC);
            }
        }
        nc.h0 h0Var = new nc.h0(dVar, fVarPlus);
        try {
            a2.b.m(w.x(w.g(h0Var, h0Var, pVar)), l9.m.f9594a, null);
            return h0Var.m0();
        } catch (Throwable th2) {
            h0Var.resumeWith(w.j(th2));
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final cc.s1 O(cc.s1 s1Var, cc.e0 e0Var) {
        kotlin.jvm.internal.h.f(s1Var, "<this>");
        if (s1Var instanceof cc.r1) {
            return O(((cc.r1) s1Var).E0(), e0Var);
        }
        if (e0Var == null || kotlin.jvm.internal.h.a(e0Var, s1Var)) {
            return s1Var;
        }
        if (s1Var instanceof cc.m0) {
            return new cc.p0((cc.m0) s1Var, e0Var);
        }
        if (s1Var instanceof cc.y) {
            return new cc.a0((cc.y) s1Var, e0Var);
        }
        throw new j7.p();
    }

    public static final cc.y m(cc.e0 e0Var) {
        kotlin.jvm.internal.h.f(e0Var, "<this>");
        cc.s1 s1VarP0 = e0Var.P0();
        kotlin.jvm.internal.h.d(s1VarP0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.FlexibleType");
        return (cc.y) s1VarP0;
    }

    public static nc.f0 n(nc.a0 a0Var, kotlinx.coroutines.scheduling.b bVar, x9.p pVar, int r6) {
        p9.f fVar = bVar;
        if ((r6 & 1) != 0) {
            fVar = p9.g.f12870a;
        }
        int r62 = (r6 & 2) != 0 ? 1 : 0;
        p9.f fVarB = nc.w.b(a0Var, fVar);
        nc.f0 i1Var = r62 == 2 ? new nc.i1(fVarB, pVar) : new nc.f0(fVarB, true);
        i1Var.l0(r62, i1Var, pVar);
        return i1Var;
    }

    public static final void o(com.airbnb.epoxy.f0 f0Var, x9.l lVar) {
        kotlin.jvm.internal.h.f(f0Var, "<this>");
        wf.c cVar = new wf.c(0);
        lVar.invoke(cVar);
        f0Var.add(cVar.f18896a);
    }

    public static final void p(ma.f0 f0Var, lb.c fqName, ArrayList arrayList) {
        kotlin.jvm.internal.h.f(f0Var, "<this>");
        kotlin.jvm.internal.h.f(fqName, "fqName");
        if (f0Var instanceof ma.h0) {
            ((ma.h0) f0Var).b(fqName, arrayList);
        } else {
            arrayList.addAll(f0Var.a(fqName));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0039 A[PHI: r8
      0x0039: PHI (r8v8 android.database.Cursor) = (r8v7 android.database.Cursor), (r8v9 android.database.Cursor) binds: [B:19:0x0037, B:12:0x002c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String r(android.content.Context r8, android.net.Uri r9, java.lang.String r10, java.lang.String[] r11) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "_data"
            java.lang.String[] r3 = new java.lang.String[]{r0}
            r7 = 0
            android.content.ContentResolver r1 = r8.getContentResolver()     // Catch: java.lang.Throwable -> L2f java.lang.Exception -> L31
            kotlin.jvm.internal.h.c(r9)     // Catch: java.lang.Throwable -> L2f java.lang.Exception -> L31
            r6 = 0
            r2 = r9
            r4 = r10
            r5 = r11
            android.database.Cursor r8 = r1.query(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L2f java.lang.Exception -> L31
            if (r8 == 0) goto L2c
            boolean r9 = r8.moveToFirst()     // Catch: java.lang.Exception -> L2a java.lang.Throwable -> L3d
            if (r9 == 0) goto L2c
            int r9 = r8.getColumnIndexOrThrow(r0)     // Catch: java.lang.Exception -> L2a java.lang.Throwable -> L3d
            java.lang.String r9 = r8.getString(r9)     // Catch: java.lang.Exception -> L2a java.lang.Throwable -> L3d
            r8.close()
            return r9
        L2a:
            r9 = move-exception
            goto L34
        L2c:
            if (r8 == 0) goto L3c
            goto L39
        L2f:
            r8 = move-exception
            goto L40
        L31:
            r8 = move-exception
            r9 = r8
            r8 = r7
        L34:
            r9.printStackTrace()     // Catch: java.lang.Throwable -> L3d
            if (r8 == 0) goto L3c
        L39:
            r8.close()
        L3c:
            return r7
        L3d:
            r9 = move-exception
            r7 = r8
            r8 = r9
        L40:
            if (r7 == 0) goto L45
            r7.close()
        L45:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.v.r(android.content.Context, android.net.Uri, java.lang.String, java.lang.String[]):java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final cc.e0 s(cc.e0 e0Var) {
        kotlin.jvm.internal.h.f(e0Var, "<this>");
        if (e0Var instanceof cc.r1) {
            return ((cc.r1) e0Var).C();
        }
        return null;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:138:0x02b8
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:44:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x024a  */
    /* JADX WARN: Type inference failed for: r13v0, types: [android.content.Context, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.io.File, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v11, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String t(android.content.Context r13, android.net.Uri r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 708
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.v.t(android.content.Context, android.net.Uri):java.lang.String");
    }

    public static final void u(p9.f fVar, Throwable th2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) fVar.get(CoroutineExceptionHandler.a.f9009a);
            if (coroutineExceptionHandler == null) {
                nc.z.a(fVar, th2);
            } else {
                coroutineExceptionHandler.handleException(fVar, th2);
            }
        } catch (Throwable th3) {
            if (th2 != th3) {
                RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th3);
                b8.f.k(runtimeException, th2);
                th2 = runtimeException;
            }
            nc.z.a(fVar, th2);
        }
    }

    public static final cc.s1 v(cc.s1 s1Var, cc.e0 origin) {
        kotlin.jvm.internal.h.f(s1Var, "<this>");
        kotlin.jvm.internal.h.f(origin, "origin");
        return O(s1Var, s(origin));
    }

    public static final cc.s1 w(ArrayList arrayList) {
        cc.m0 m0Var;
        int size = arrayList.size();
        if (size == 0) {
            throw new IllegalStateException("Expected some types".toString());
        }
        if (size == 1) {
            return (cc.s1) m9.t.p1(arrayList);
        }
        ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
        Iterator it = arrayList.iterator();
        boolean z10 = false;
        boolean z11 = false;
        while (it.hasNext()) {
            cc.s1 s1Var = (cc.s1) it.next();
            z10 = z10 || y(s1Var);
            if (s1Var instanceof cc.m0) {
                m0Var = (cc.m0) s1Var;
            } else {
                if (!(s1Var instanceof cc.y)) {
                    throw new j7.p();
                }
                if (cc.w.a(s1Var)) {
                    return s1Var;
                }
                m0Var = ((cc.y) s1Var).f2377b;
                z11 = true;
            }
            arrayList2.add(m0Var);
        }
        if (z10) {
            return ec.i.c(ec.h.INTERSECTION_OF_ERROR_TYPES, arrayList.toString());
        }
        if (!z11) {
            return dc.r.f4853a.b(arrayList2);
        }
        ArrayList arrayList3 = new ArrayList(m9.n.Q0(arrayList));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList3.add(M((cc.s1) it2.next()));
        }
        dc.r rVar = dc.r.f4853a;
        return cc.f0.c(rVar.b(arrayList2), rVar.b(arrayList3));
    }

    public static final boolean x(ma.f0 f0Var, lb.c fqName) {
        kotlin.jvm.internal.h.f(f0Var, "<this>");
        kotlin.jvm.internal.h.f(fqName, "fqName");
        return f0Var instanceof ma.h0 ? ((ma.h0) f0Var).c(fqName) : F(f0Var, fqName).isEmpty();
    }

    public static final boolean y(cc.e0 e0Var) {
        kotlin.jvm.internal.h.f(e0Var, "<this>");
        cc.s1 s1VarP0 = e0Var.P0();
        return (s1VarP0 instanceof ec.f) || ((s1VarP0 instanceof cc.y) && (((cc.y) s1VarP0).T0() instanceof ec.f));
    }

    public static final boolean z(cc.e0 e0Var) {
        kotlin.jvm.internal.h.f(e0Var, "<this>");
        return e0Var.P0() instanceof cc.y;
    }

    @Override // c5.p2
    public Object a() {
        List<q2<?>> list = r2.f1889a;
        return Long.valueOf(q9.f3696b.a().F());
    }

    @Override // r2.e
    public Object apply(Object obj) {
        return (byte[]) obj;
    }

    @Override // id.c
    public void b(String str, String str2, Object... objArr) {
    }

    @Override // s4.ca
    public Object c(Object obj) {
        return ((a.d) obj).a();
    }

    @Override // com.bumptech.glide.manager.i
    public void d() {
    }

    @Override // id.c
    public void e(Exception exc, String str, String str2, Object... objArr) {
    }

    @Override // id.c
    public void f(Exception exc, String str, String str2, Object... objArr) {
    }

    @Override // id.c
    public void g(String str, String str2, Object... objArr) {
    }

    @Override // yb.u
    public void h(pa.b descriptor, ArrayList arrayList) {
        kotlin.jvm.internal.h.f(descriptor, "descriptor");
        throw new IllegalStateException("Incomplete hierarchy for class " + descriptor.getName() + ", unresolved classes " + arrayList);
    }

    @Override // c6.h
    public Object i(c6.y yVar) {
        return new v7.d(yVar.c(v7.i.class));
    }

    @Override // id.c
    public void j(String str, String str2, Object... objArr) {
    }

    @Override // yb.u
    public void k(ma.b descriptor) {
        kotlin.jvm.internal.h.f(descriptor, "descriptor");
        throw new IllegalStateException("Cannot infer visibility for " + descriptor);
    }

    @Override // id.c
    public void l(String str, String str2, Object... objArr) {
    }

    public cc.i1 q(ma.w0 w0Var, cc.x typeAttr, cc.f1 typeParameterUpperBoundEraser, cc.e0 erasedUpperBound) {
        kotlin.jvm.internal.h.f(typeAttr, "typeAttr");
        kotlin.jvm.internal.h.f(typeParameterUpperBoundEraser, "typeParameterUpperBoundEraser");
        kotlin.jvm.internal.h.f(erasedUpperBound, "erasedUpperBound");
        return new cc.k1(erasedUpperBound, cc.t1.OUT_VARIANCE);
    }
}
