package xa;

import cc.e0;
import com.google.android.gms.internal.clearcut.d0;
import java.util.ArrayList;
import ma.a;
import ma.a1;
import ma.b;
import ma.j;
import ma.q0;
import ma.r0;
import ma.u;
import na.h;
import pa.o0;
import pa.p0;
import pa.x;

/* loaded from: classes2.dex */
public final class e extends p0 implements xa.a {
    public static final a K = new a();
    public static final b L = new b();
    public int H;
    public final boolean I;

    public static class a implements a.InterfaceC0187a<a1> {
    }

    public static class b implements a.InterfaceC0187a<Boolean> {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(j jVar, q0 q0Var, h hVar, lb.f fVar, b.a aVar, r0 r0Var, boolean z10) {
        super(jVar, q0Var, hVar, fVar, aVar, r0Var);
        if (jVar == null) {
            C(0);
            throw null;
        }
        if (hVar == null) {
            C(1);
            throw null;
        }
        if (fVar == null) {
            C(2);
            throw null;
        }
        if (aVar == null) {
            C(3);
            throw null;
        }
        if (r0Var == null) {
            C(4);
            throw null;
        }
        this.H = 0;
        this.I = z10;
    }

    public static /* synthetic */ void C(int r11) {
        String str = (r11 == 13 || r11 == 18 || r11 == 21) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r11 == 13 || r11 == 18 || r11 == 21) ? 2 : 3];
        switch (r11) {
            case 1:
            case 6:
            case 16:
                objArr[0] = "annotations";
                break;
            case 2:
            case 7:
                objArr[0] = "name";
                break;
            case 3:
            case 15:
                objArr[0] = "kind";
                break;
            case 4:
            case 8:
            case 17:
                objArr[0] = "source";
                break;
            case 5:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 9:
                objArr[0] = "contextReceiverParameters";
                break;
            case 10:
                objArr[0] = "typeParameters";
                break;
            case 11:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 12:
                objArr[0] = "visibility";
                break;
            case 13:
            case 18:
            case 21:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor";
                break;
            case 14:
                objArr[0] = "newOwner";
                break;
            case 19:
                objArr[0] = "enhancedValueParameterTypes";
                break;
            case 20:
                objArr[0] = "enhancedReturnType";
                break;
        }
        if (r11 == 13) {
            objArr[1] = "initialize";
        } else if (r11 == 18) {
            objArr[1] = "createSubstitutedCopy";
        } else if (r11 != 21) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (r11) {
            case 5:
            case 6:
            case 7:
            case 8:
                objArr[2] = "createJavaMethod";
                break;
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = "initialize";
                break;
            case 13:
            case 18:
            case 21:
                break;
            case 14:
            case 15:
            case 16:
            case 17:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 19:
            case 20:
                objArr[2] = "enhance";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (r11 != 13 && r11 != 18 && r11 != 21) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static e Y0(j jVar, ya.e eVar, lb.f fVar, bb.a aVar, boolean z10) {
        if (jVar == null) {
            C(5);
            throw null;
        }
        if (fVar == null) {
            C(7);
            throw null;
        }
        if (aVar != null) {
            return new e(jVar, null, eVar, fVar, b.a.DECLARATION, aVar, z10);
        }
        C(8);
        throw null;
    }

    @Override // pa.x, ma.a
    public final boolean B() {
        return androidx.fragment.app.a.b(this.H);
    }

    @Override // pa.p0, pa.x
    public final x K0(b.a aVar, j jVar, u uVar, r0 r0Var, h hVar, lb.f fVar) {
        if (jVar == null) {
            C(14);
            throw null;
        }
        if (aVar == null) {
            C(15);
            throw null;
        }
        if (hVar == null) {
            C(16);
            throw null;
        }
        q0 q0Var = (q0) uVar;
        if (fVar == null) {
            fVar = getName();
        }
        e eVar = new e(jVar, q0Var, hVar, fVar, aVar, r0Var, this.I);
        int r10 = this.H;
        eVar.Z0(androidx.fragment.app.a.a(r10), androidx.fragment.app.a.b(r10));
        return eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0061 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[LOOP:0: B:8:0x0017->B:52:?, LOOP_END, SYNTHETIC] */
    @Override // pa.p0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final pa.p0 X0(pa.o0 r2, ma.o0 r3, java.util.List r4, java.util.List r5, java.util.List r6, cc.e0 r7, ma.a0 r8, ma.q r9, java.util.Map r10) {
        /*
            r1 = this;
            r0 = 0
            if (r4 == 0) goto La4
            if (r5 == 0) goto L9e
            if (r6 == 0) goto L98
            if (r9 == 0) goto L92
            super.X0(r2, r3, r4, r5, r6, r7, r8, r9, r10)
            ic.s r2 = ic.s.f7385a
            r2.getClass()
            java.util.List<ic.k> r2 = ic.s.f7386b
            java.util.Iterator r2 = r2.iterator()
        L17:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L8b
            java.lang.Object r3 = r2.next()
            ic.k r3 = (ic.k) r3
            r3.getClass()
            r4 = 0
            lb.f r5 = r3.f7369a
            if (r5 == 0) goto L36
            lb.f r6 = r1.getName()
            boolean r5 = kotlin.jvm.internal.h.a(r6, r5)
            if (r5 != 0) goto L36
            goto L5c
        L36:
            mc.d r5 = r3.f7370b
            if (r5 == 0) goto L4e
            lb.f r6 = r1.getName()
            java.lang.String r6 = r6.o()
            java.lang.String r7 = "functionDescriptor.name.asString()"
            kotlin.jvm.internal.h.e(r6, r7)
            boolean r5 = r5.a(r6)
            if (r5 != 0) goto L4e
            goto L5c
        L4e:
            java.util.Collection<lb.f> r5 = r3.f7371c
            if (r5 == 0) goto L5e
            lb.f r6 = r1.getName()
            boolean r5 = r5.contains(r6)
            if (r5 != 0) goto L5e
        L5c:
            r5 = 0
            goto L5f
        L5e:
            r5 = 1
        L5f:
            if (r5 == 0) goto L17
            ic.f[] r2 = r3.f7373e
            int r5 = r2.length
        L64:
            if (r4 >= r5) goto L77
            r6 = r2[r4]
            java.lang.String r6 = r6.a(r1)
            if (r6 == 0) goto L74
            ic.g$b r2 = new ic.g$b
            r2.<init>(r6)
            goto L8d
        L74:
            int r4 = r4 + 1
            goto L64
        L77:
            x9.l<ma.u, java.lang.String> r2 = r3.f7372d
            java.lang.Object r2 = r2.invoke(r1)
            java.lang.String r2 = (java.lang.String) r2
            if (r2 == 0) goto L88
            ic.g$b r3 = new ic.g$b
            r3.<init>(r2)
            r2 = r3
            goto L8d
        L88:
            ic.g$c r2 = ic.g.c.f7365b
            goto L8d
        L8b:
            ic.g$a r2 = ic.g.a.f7364b
        L8d:
            boolean r2 = r2.f7363a
            r1.f13016n = r2
            return r1
        L92:
            r2 = 12
            C(r2)
            throw r0
        L98:
            r2 = 11
            C(r2)
            throw r0
        L9e:
            r2 = 10
            C(r2)
            throw r0
        La4:
            r2 = 9
            C(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: xa.e.X0(pa.o0, ma.o0, java.util.List, java.util.List, java.util.List, cc.e0, ma.a0, ma.q, java.util.Map):pa.p0");
    }

    public final void Z0(boolean z10, boolean z11) {
        this.H = z10 ? z11 ? 4 : 2 : z11 ? 3 : 1;
    }

    @Override // xa.a
    public final xa.a i0(e0 e0Var, ArrayList arrayList, e0 e0Var2, l9.g gVar) {
        ArrayList arrayListM = d0.m(arrayList, g(), this);
        o0 o0VarH = e0Var == null ? null : ob.h.h(this, e0Var, h.a.f10653a);
        x.a aVar = (x.a) r();
        aVar.f13031g = arrayListM;
        aVar.n(e0Var2);
        aVar.f13033i = o0VarH;
        aVar.f13040p = true;
        aVar.f13039o = true;
        e eVar = (e) aVar.build();
        if (gVar != null) {
            eVar.P0((a.InterfaceC0187a) gVar.f9582a, gVar.f9583b);
        }
        if (eVar != null) {
            return eVar;
        }
        C(21);
        throw null;
    }
}
