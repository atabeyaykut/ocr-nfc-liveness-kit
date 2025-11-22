package va;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public abstract class b<TAnnotation> {

    /* renamed from: c, reason: collision with root package name */
    @Deprecated
    public static final LinkedHashMap f18321c;

    /* renamed from: a, reason: collision with root package name */
    public final s f18322a;

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap<Object, TAnnotation> f18323b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (c cVar : c.values()) {
            String str = cVar.f18334a;
            if (linkedHashMap.get(str) == null) {
                linkedHashMap.put(str, cVar);
            }
        }
        f18321c = linkedHashMap;
    }

    public b(s javaTypeEnhancementState) {
        kotlin.jvm.internal.h.f(javaTypeEnhancementState, "javaTypeEnhancementState");
        this.f18322a = javaTypeEnhancementState;
        this.f18323b = new ConcurrentHashMap<>();
    }

    public abstract ArrayList a(Object obj, boolean z10);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0160  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final va.t b(va.t r19, java.lang.Iterable<? extends TAnnotation> r20) {
        /*
            Method dump skipped, instructions count: 454
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: va.b.b(va.t, java.lang.Iterable):va.t");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final db.l c(x9.l lVar, Object obj) {
        db.l lVarI;
        db.l lVarI2 = i(obj, ((Boolean) lVar.invoke(obj)).booleanValue());
        if (lVarI2 != null) {
            return lVarI2;
        }
        TAnnotation tannotationK = k(obj);
        if (tannotationK == null) {
            return null;
        }
        b0 b0VarJ = j(obj);
        if (b0VarJ == null) {
            b0VarJ = this.f18322a.f18371a.f18377a;
        }
        b0VarJ.getClass();
        if ((b0VarJ == b0.IGNORE) || (lVarI = i(tannotationK, ((Boolean) lVar.invoke(tannotationK)).booleanValue())) == null) {
            return null;
        }
        return db.l.a(lVarI, null, b0VarJ == b0.WARN, 1);
    }

    public final TAnnotation d(TAnnotation tannotation, lb.c cVar) {
        for (TAnnotation tannotation2 : g(tannotation)) {
            if (kotlin.jvm.internal.h.a(e(tannotation2), cVar)) {
                return tannotation2;
            }
        }
        return null;
    }

    public abstract lb.c e(TAnnotation tannotation);

    public abstract ma.e f(Object obj);

    public abstract Iterable<TAnnotation> g(TAnnotation tannotation);

    public final boolean h(TAnnotation tannotation, lb.c cVar) {
        Iterable<TAnnotation> iterableG = g(tannotation);
        if ((iterableG instanceof Collection) && ((Collection) iterableG).isEmpty()) {
            return false;
        }
        Iterator<TAnnotation> it = iterableG.iterator();
        while (it.hasNext()) {
            if (kotlin.jvm.internal.h.a(e(it.next()), cVar)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0070, code lost:
    
        if (r10.equals("ALWAYS") != false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0079, code lost:
    
        if (r10.equals("UNKNOWN") == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0084, code lost:
    
        if (r10.equals("NEVER") == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008d, code lost:
    
        if (r10.equals("MAYBE") == false) goto L42;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00aa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final db.l i(TAnnotation r10, boolean r11) {
        /*
            r9 = this;
            lb.c r0 = r9.e(r10)
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            va.s r2 = r9.f18322a
            x9.l<lb.c, va.b0> r2 = r2.f18372b
            java.lang.Object r2 = r2.invoke(r0)
            va.b0 r2 = (va.b0) r2
            r2.getClass()
            va.b0 r3 = va.b0.IGNORE
            r4 = 1
            r5 = 0
            if (r2 != r3) goto L1d
            r3 = 1
            goto L1e
        L1d:
            r3 = 0
        L1e:
            if (r3 == 0) goto L21
            return r1
        L21:
            java.util.List<lb.c> r3 = va.y.f18402d
            boolean r3 = r3.contains(r0)
            db.k r6 = db.k.NULLABLE
            if (r3 == 0) goto L2d
            goto Lb4
        L2d:
            java.util.List<lb.c> r3 = va.y.f18404g
            boolean r3 = r3.contains(r0)
            db.k r7 = db.k.NOT_NULL
            if (r3 == 0) goto L39
            goto Laa
        L39:
            lb.c r3 = va.y.f18399a
            boolean r3 = kotlin.jvm.internal.h.a(r0, r3)
            if (r3 == 0) goto L43
            goto Lb4
        L43:
            lb.c r3 = va.y.f18400b
            boolean r3 = kotlin.jvm.internal.h.a(r0, r3)
            db.k r8 = db.k.FORCE_FLEXIBILITY
            if (r3 == 0) goto L4e
            goto L7c
        L4e:
            lb.c r3 = va.y.f18403e
            boolean r3 = kotlin.jvm.internal.h.a(r0, r3)
            if (r3 == 0) goto L90
            java.util.ArrayList r10 = r9.a(r10, r5)
            java.lang.Object r10 = m9.t.b1(r10)
            java.lang.String r10 = (java.lang.String) r10
            if (r10 == 0) goto Laa
            int r0 = r10.hashCode()
            switch(r0) {
                case 73135176: goto L87;
                case 74175084: goto L7e;
                case 433141802: goto L73;
                case 1933739535: goto L6a;
                default: goto L69;
            }
        L69:
            goto L8f
        L6a:
            java.lang.String r0 = "ALWAYS"
            boolean r10 = r10.equals(r0)
            if (r10 == 0) goto L8f
            goto Laa
        L73:
            java.lang.String r0 = "UNKNOWN"
            boolean r10 = r10.equals(r0)
            if (r10 != 0) goto L7c
            goto L8f
        L7c:
            r6 = r8
            goto Lb4
        L7e:
            java.lang.String r0 = "NEVER"
            boolean r10 = r10.equals(r0)
            if (r10 != 0) goto Lb4
            goto L8f
        L87:
            java.lang.String r0 = "MAYBE"
            boolean r10 = r10.equals(r0)
            if (r10 != 0) goto Lb4
        L8f:
            return r1
        L90:
            lb.c r10 = va.y.f18405h
            boolean r10 = kotlin.jvm.internal.h.a(r0, r10)
            if (r10 == 0) goto L99
            goto Lb4
        L99:
            lb.c r10 = va.y.f18406i
            boolean r10 = kotlin.jvm.internal.h.a(r0, r10)
            if (r10 == 0) goto La2
            goto Laa
        La2:
            lb.c r10 = va.y.f18408k
            boolean r10 = kotlin.jvm.internal.h.a(r0, r10)
            if (r10 == 0) goto Lac
        Laa:
            r6 = r7
            goto Lb4
        Lac:
            lb.c r10 = va.y.f18407j
            boolean r10 = kotlin.jvm.internal.h.a(r0, r10)
            if (r10 == 0) goto Lc7
        Lb4:
            db.l r10 = new db.l
            va.b0 r0 = va.b0.WARN
            if (r2 != r0) goto Lbc
            r0 = 1
            goto Lbd
        Lbc:
            r0 = 0
        Lbd:
            if (r0 != 0) goto Lc3
            if (r11 == 0) goto Lc2
            goto Lc3
        Lc2:
            r4 = 0
        Lc3:
            r10.<init>(r6, r4)
            return r10
        Lc7:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: va.b.i(java.lang.Object, boolean):db.l");
    }

    public final b0 j(TAnnotation tannotation) {
        ArrayList arrayListA;
        String str;
        s sVar = this.f18322a;
        b0 b0Var = sVar.f18371a.f18379c.get(e(tannotation));
        if (b0Var != null) {
            return b0Var;
        }
        TAnnotation tannotationD = d(tannotation, d.f18338d);
        if (tannotationD != null && (arrayListA = a(tannotationD, false)) != null && (str = (String) m9.t.b1(arrayListA)) != null) {
            b0 b0Var2 = sVar.f18371a.f18378b;
            if (b0Var2 != null) {
                return b0Var2;
            }
            int r02 = str.hashCode();
            if (r02 != -2137067054) {
                if (r02 != -1838656823) {
                    if (r02 == 2656902 && str.equals("WARN")) {
                        return b0.WARN;
                    }
                } else if (str.equals("STRICT")) {
                    return b0.STRICT;
                }
            } else if (str.equals("IGNORE")) {
                return b0.IGNORE;
            }
        }
        return null;
    }

    public final TAnnotation k(TAnnotation annotation) {
        TAnnotation tannotationK;
        kotlin.jvm.internal.h.f(annotation, "annotation");
        if (this.f18322a.f18371a.f18380d) {
            return null;
        }
        if (m9.t.V0(d.f18341h, e(annotation)) || h(annotation, d.f18336b)) {
            return annotation;
        }
        if (!h(annotation, d.f18335a)) {
            return null;
        }
        ConcurrentHashMap<Object, TAnnotation> concurrentHashMap = this.f18323b;
        ma.e eVarF = f(annotation);
        TAnnotation tannotation = concurrentHashMap.get(eVarF);
        if (tannotation != null) {
            return tannotation;
        }
        Iterator<TAnnotation> it = g(annotation).iterator();
        while (true) {
            if (!it.hasNext()) {
                tannotationK = null;
                break;
            }
            tannotationK = k(it.next());
            if (tannotationK != null) {
                break;
            }
        }
        if (tannotationK == null) {
            return null;
        }
        TAnnotation tannotationPutIfAbsent = concurrentHashMap.putIfAbsent(eVarF, tannotationK);
        return tannotationPutIfAbsent == null ? tannotationK : tannotationPutIfAbsent;
    }
}
