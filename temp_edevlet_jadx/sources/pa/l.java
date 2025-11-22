package pa;

import cc.p1;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import ma.b;

/* loaded from: classes2.dex */
public class l extends x implements ma.d {
    public final boolean H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(ma.e eVar, ma.i iVar, na.h hVar, boolean z10, b.a aVar, ma.r0 r0Var) {
        super(aVar, eVar, iVar, r0Var, hVar, lb.h.f9683e);
        if (eVar == null) {
            C(0);
            throw null;
        }
        if (hVar == null) {
            C(1);
            throw null;
        }
        if (aVar == null) {
            C(2);
            throw null;
        }
        if (r0Var == null) {
            C(3);
            throw null;
        }
        this.H = z10;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void C(int r8) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: pa.l.C(int):void");
    }

    @Override // pa.x
    /* renamed from: E0 */
    public final ma.u b0(ma.j jVar, ma.a0 a0Var, ma.o oVar) {
        return (ma.d) super.b0(jVar, a0Var, oVar);
    }

    @Override // pa.x
    /* renamed from: T0, reason: merged with bridge method [inline-methods] */
    public l K0(b.a aVar, ma.j jVar, ma.u uVar, ma.r0 r0Var, na.h hVar, lb.f fVar) {
        if (jVar == null) {
            C(23);
            throw null;
        }
        if (aVar == null) {
            C(24);
            throw null;
        }
        if (hVar == null) {
            C(25);
            throw null;
        }
        b.a aVar2 = b.a.DECLARATION;
        if (aVar == aVar2 || aVar == b.a.SYNTHESIZED) {
            return new l((ma.e) jVar, this, hVar, this.H, aVar2, r0Var);
        }
        throw new IllegalStateException("Attempt at creating a constructor that is not a declaration: \ncopy from: " + this + "\nnewOwner: " + jVar + "\nkind: " + aVar);
    }

    @Override // pa.q, ma.j
    /* renamed from: U0, reason: merged with bridge method [inline-methods] */
    public final ma.e b() {
        ma.e eVar = (ma.e) super.b();
        if (eVar != null) {
            return eVar;
        }
        C(17);
        throw null;
    }

    public final void V0(List list, ma.q qVar) {
        if (list == null) {
            C(13);
            throw null;
        }
        if (qVar != null) {
            W0(list, qVar, b().s());
        } else {
            C(14);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void W0(java.util.List r11, ma.q r12, java.util.List r13) {
        /*
            r10 = this;
            r0 = 0
            if (r11 == 0) goto L62
            if (r12 == 0) goto L5c
            if (r13 == 0) goto L56
            r2 = 0
            ma.e r1 = r10.b()
            boolean r3 = r1.H()
            if (r3 == 0) goto L22
            ma.j r1 = r1.b()
            boolean r3 = r1 instanceof ma.e
            if (r3 == 0) goto L22
            ma.e r1 = (ma.e) r1
            ma.o0 r1 = r1.J0()
            r3 = r1
            goto L23
        L22:
            r3 = r0
        L23:
            ma.e r1 = r10.b()
            java.util.List r4 = r1.F0()
            boolean r4 = r4.isEmpty()
            if (r4 != 0) goto L3e
            java.util.List r1 = r1.F0()
            if (r1 == 0) goto L38
            goto L44
        L38:
            r11 = 15
            C(r11)
            throw r0
        L3e:
            java.util.List r1 = java.util.Collections.emptyList()
            if (r1 == 0) goto L50
        L44:
            r4 = r1
            r7 = 0
            ma.a0 r8 = ma.a0.FINAL
            r1 = r10
            r5 = r13
            r6 = r11
            r9 = r12
            r1.N0(r2, r3, r4, r5, r6, r7, r8, r9)
            return
        L50:
            r11 = 16
            C(r11)
            throw r0
        L56:
            r11 = 12
            C(r11)
            throw r0
        L5c:
            r11 = 11
            C(r11)
            throw r0
        L62:
            r11 = 10
            C(r11)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: pa.l.W0(java.util.List, ma.q, java.util.List):void");
    }

    @Override // pa.x, pa.q
    public final ma.d a() {
        ma.d dVar = (ma.d) super.a();
        if (dVar != null) {
            return dVar;
        }
        C(19);
        throw null;
    }

    @Override // pa.x, ma.b
    public final ma.b b0(ma.j jVar, ma.a0 a0Var, ma.o oVar) {
        return (ma.d) super.b0(jVar, a0Var, oVar);
    }

    @Override // pa.x, ma.u, ma.t0
    public final ma.d c(p1 p1Var) {
        if (p1Var != null) {
            return (ma.d) super.c(p1Var);
        }
        C(20);
        throw null;
    }

    @Override // pa.x, ma.u, ma.b, ma.a
    public final Collection<? extends ma.u> e() {
        Set setEmptySet = Collections.emptySet();
        if (setEmptySet != null) {
            return setEmptySet;
        }
        C(21);
        throw null;
    }

    @Override // pa.x, ma.j
    public final <R, D> R o0(ma.l<R, D> lVar, D d10) {
        return lVar.h(this, d10);
    }

    @Override // ma.i
    public final boolean w() {
        return this.H;
    }

    @Override // pa.x, ma.b
    public final void w0(Collection<? extends ma.b> collection) {
        if (collection != null) {
            return;
        }
        C(22);
        throw null;
    }

    @Override // ma.i
    public final ma.e x() {
        ma.e eVarB = b();
        if (eVarB != null) {
            return eVarB;
        }
        C(18);
        throw null;
    }
}
