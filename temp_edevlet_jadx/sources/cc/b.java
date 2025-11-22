package cc;

import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class b extends h {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(bc.l lVar) {
        super(lVar);
        if (lVar != null) {
        } else {
            k(0);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void k(int r9) {
        /*
            r0 = 4
            r1 = 3
            r2 = 1
            if (r9 == r2) goto Lc
            if (r9 == r1) goto Lc
            if (r9 == r0) goto Lc
            java.lang.String r3 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
            goto Le
        Lc:
            java.lang.String r3 = "@NotNull method %s.%s must not return null"
        Le:
            r4 = 2
            if (r9 == r2) goto L17
            if (r9 == r1) goto L17
            if (r9 == r0) goto L17
            r5 = 3
            goto L18
        L17:
            r5 = 2
        L18:
            java.lang.Object[] r5 = new java.lang.Object[r5]
            java.lang.String r6 = "kotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor"
            r7 = 0
            if (r9 == r2) goto L2f
            if (r9 == r4) goto L2a
            if (r9 == r1) goto L2f
            if (r9 == r0) goto L2f
            java.lang.String r8 = "storageManager"
            r5[r7] = r8
            goto L31
        L2a:
            java.lang.String r8 = "classifier"
            r5[r7] = r8
            goto L31
        L2f:
            r5[r7] = r6
        L31:
            if (r9 == r2) goto L3f
            if (r9 == r1) goto L3a
            if (r9 == r0) goto L3a
            r5[r2] = r6
            goto L43
        L3a:
            java.lang.String r6 = "getAdditionalNeighboursInSupertypeGraph"
            r5[r2] = r6
            goto L43
        L3f:
            java.lang.String r6 = "getBuiltIns"
            r5[r2] = r6
        L43:
            if (r9 == r2) goto L54
            if (r9 == r4) goto L50
            if (r9 == r1) goto L54
            if (r9 == r0) goto L54
            java.lang.String r6 = "<init>"
            r5[r4] = r6
            goto L54
        L50:
            java.lang.String r6 = "isSameClassifier"
            r5[r4] = r6
        L54:
            java.lang.String r3 = java.lang.String.format(r3, r5)
            if (r9 == r2) goto L64
            if (r9 == r1) goto L64
            if (r9 == r0) goto L64
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            r9.<init>(r3)
            goto L69
        L64:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            r9.<init>(r3)
        L69:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: cc.b.k(int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x006f, code lost:
    
        r6 = true;
     */
    @Override // cc.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c(ma.g r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof ma.e
            r1 = 0
            if (r0 == 0) goto L73
            ma.e r0 = r5.n()
            java.lang.String r2 = "first"
            kotlin.jvm.internal.h.f(r0, r2)
            lb.f r2 = r0.getName()
            lb.f r3 = r6.getName()
            boolean r2 = kotlin.jvm.internal.h.a(r2, r3)
            r3 = 1
            if (r2 != 0) goto L1e
            goto L64
        L1e:
            ma.j r0 = r0.b()
            ma.j r6 = r6.b()
        L26:
            if (r0 == 0) goto L6f
            if (r6 == 0) goto L6f
            boolean r2 = r0 instanceof ma.b0
            if (r2 == 0) goto L31
            boolean r6 = r6 instanceof ma.b0
            goto L70
        L31:
            boolean r2 = r6 instanceof ma.b0
            if (r2 == 0) goto L36
            goto L64
        L36:
            boolean r2 = r0 instanceof ma.e0
            if (r2 == 0) goto L51
            boolean r2 = r6 instanceof ma.e0
            if (r2 == 0) goto L64
            ma.e0 r0 = (ma.e0) r0
            lb.c r0 = r0.d()
            ma.e0 r6 = (ma.e0) r6
            lb.c r6 = r6.d()
            boolean r6 = kotlin.jvm.internal.h.a(r0, r6)
            if (r6 == 0) goto L64
            goto L6f
        L51:
            boolean r2 = r6 instanceof ma.e0
            if (r2 == 0) goto L56
            goto L64
        L56:
            lb.f r2 = r0.getName()
            lb.f r4 = r6.getName()
            boolean r2 = kotlin.jvm.internal.h.a(r2, r4)
            if (r2 != 0) goto L66
        L64:
            r6 = 0
            goto L70
        L66:
            ma.j r0 = r0.b()
            ma.j r6 = r6.b()
            goto L26
        L6f:
            r6 = 1
        L70:
            if (r6 == 0) goto L73
            r1 = 1
        L73:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: cc.b.c(ma.g):boolean");
    }

    @Override // cc.h
    public final e0 e() {
        if (ja.k.H(n())) {
            return null;
        }
        return m().f();
    }

    @Override // cc.h
    public final Collection f() {
        ma.j jVarB = n().b();
        if (jVarB instanceof ma.e) {
            kc.c cVar = new kc.c();
            ma.e eVar = (ma.e) jVarB;
            cVar.add(eVar.q());
            eVar.P();
            return cVar;
        }
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        k(3);
        throw null;
    }

    @Override // cc.c1
    public final ja.k m() {
        ja.k kVarE = sb.b.e(n());
        if (kVarE != null) {
            return kVarE;
        }
        k(1);
        throw null;
    }

    @Override // cc.n, cc.c1
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public abstract ma.e n();
}
