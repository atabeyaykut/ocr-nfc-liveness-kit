package xa;

import cc.e0;
import cc.q1;
import db.x;
import dc.b;
import ja.k;
import ja.s;
import java.util.ArrayList;
import m9.v;
import ma.a;
import ma.a0;
import ma.a1;
import ma.b;
import ma.j;
import ma.q;
import ma.r0;
import na.h;
import pa.l0;
import pa.m0;
import pa.n0;
import pa.o0;

/* loaded from: classes2.dex */
public class f extends l0 implements a {
    public final boolean E;
    public final l9.g<a.InterfaceC0187a<?>, ?> F;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(j jVar, h hVar, a0 a0Var, q qVar, boolean z10, lb.f fVar, r0 r0Var, ma.l0 l0Var, b.a aVar, boolean z11, l9.g<a.InterfaceC0187a<?>, ?> gVar) {
        super(jVar, l0Var, hVar, a0Var, qVar, z10, fVar, aVar, r0Var, false, false, false, false, false, false);
        if (jVar == null) {
            C(0);
            throw null;
        }
        if (hVar == null) {
            C(1);
            throw null;
        }
        if (a0Var == null) {
            C(2);
            throw null;
        }
        if (qVar == null) {
            C(3);
            throw null;
        }
        if (fVar == null) {
            C(4);
            throw null;
        }
        if (r0Var == null) {
            C(5);
            throw null;
        }
        if (aVar == null) {
            C(6);
            throw null;
        }
        this.E = z11;
        this.F = gVar;
    }

    public static /* synthetic */ void C(int r72) {
        String str = r72 != 21 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[r72 != 21 ? 3 : 2];
        switch (r72) {
            case 1:
            case 8:
                objArr[0] = "annotations";
                break;
            case 2:
            case 9:
                objArr[0] = "modality";
                break;
            case 3:
            case 10:
                objArr[0] = "visibility";
                break;
            case 4:
            case 11:
                objArr[0] = "name";
                break;
            case 5:
            case 12:
            case 18:
                objArr[0] = "source";
                break;
            case 6:
            case 16:
                objArr[0] = "kind";
                break;
            case 7:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 13:
                objArr[0] = "newOwner";
                break;
            case 14:
                objArr[0] = "newModality";
                break;
            case 15:
                objArr[0] = "newVisibility";
                break;
            case 17:
                objArr[0] = "newName";
                break;
            case 19:
                objArr[0] = "enhancedValueParameterTypes";
                break;
            case 20:
                objArr[0] = "enhancedReturnType";
                break;
            case 21:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor";
                break;
            case 22:
                objArr[0] = "inType";
                break;
        }
        if (r72 != 21) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (r72) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = "create";
                break;
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 19:
            case 20:
                objArr[2] = "enhance";
                break;
            case 21:
                break;
            case 22:
                objArr[2] = "setInType";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (r72 == 21) {
            throw new IllegalStateException(str2);
        }
    }

    public static f R0(j jVar, ya.e eVar, q qVar, boolean z10, lb.f fVar, bb.a aVar, boolean z11) {
        a0 a0Var = a0.FINAL;
        if (jVar == null) {
            C(7);
            throw null;
        }
        if (fVar == null) {
            C(11);
            throw null;
        }
        if (aVar != null) {
            return new f(jVar, eVar, a0Var, qVar, z10, fVar, aVar, null, b.a.DECLARATION, z11, null);
        }
        C(12);
        throw null;
    }

    @Override // pa.w0, ma.a
    public final boolean B() {
        return false;
    }

    @Override // pa.l0
    public final l0 M0(j jVar, a0 a0Var, q qVar, ma.l0 l0Var, b.a aVar, lb.f fVar) {
        r0.a aVar2 = r0.f10243a;
        if (jVar == null) {
            C(13);
            throw null;
        }
        if (a0Var == null) {
            C(14);
            throw null;
        }
        if (qVar == null) {
            C(15);
            throw null;
        }
        if (aVar == null) {
            C(16);
            throw null;
        }
        if (fVar != null) {
            return new f(jVar, getAnnotations(), a0Var, qVar, this.f, fVar, aVar2, l0Var, aVar, this.E, this.F);
        }
        C(17);
        throw null;
    }

    @Override // pa.l0
    public final void P0(e0 e0Var) {
    }

    @Override // pa.l0, ma.a
    public final <V> V Z(a.InterfaceC0187a<V> interfaceC0187a) {
        l9.g<a.InterfaceC0187a<?>, ?> gVar = this.F;
        if (gVar == null || !gVar.f9582a.equals(interfaceC0187a)) {
            return null;
        }
        return (V) gVar.f9583b;
    }

    @Override // xa.a
    public final a i0(e0 e0Var, ArrayList arrayList, e0 e0Var2, l9.g gVar) {
        m0 m0Var;
        o0 o0Var;
        n0 n0Var;
        ma.l0 l0VarA = a() == this ? null : a();
        f fVar = new f(b(), getAnnotations(), j(), getVisibility(), this.f, getName(), getSource(), l0VarA, k0(), this.E, gVar);
        m0 m0Var2 = this.A;
        if (m0Var2 != null) {
            m0Var = m0Var;
            m0 m0Var3 = new m0(fVar, m0Var2.getAnnotations(), m0Var2.j(), m0Var2.getVisibility(), m0Var2.f12928e, m0Var2.f, m0Var2.f12931j, k0(), l0VarA == null ? null : l0VarA.l(), m0Var2.getSource());
            m0Var.f12934m = m0Var2.f12934m;
            m0Var.M0(e0Var2);
        } else {
            m0Var = null;
        }
        ma.n0 n0Var2 = this.B;
        if (n0Var2 != null) {
            n0Var = n0Var;
            n0 n0Var3 = new n0(fVar, n0Var2.getAnnotations(), n0Var2.j(), n0Var2.getVisibility(), n0Var2.Q(), n0Var2.isExternal(), n0Var2.isInline(), k0(), l0VarA == null ? null : l0VarA.f(), n0Var2.getSource());
            n0Var.f12934m = n0Var.f12934m;
            a1 a1Var = n0Var2.g().get(0);
            if (a1Var == null) {
                n0.C(6);
                throw null;
            }
            n0Var.f12969n = a1Var;
            o0Var = null;
        } else {
            o0Var = null;
            n0Var = null;
        }
        fVar.O0(m0Var, n0Var, this.C, this.D);
        x9.a<bc.j<qb.g<?>>> aVar = this.f13049h;
        if (aVar != null) {
            fVar.E0(this.f13048g, aVar);
        }
        fVar.w0(e());
        fVar.Q0(e0Var2, getTypeParameters(), this.f12946x, e0Var == null ? o0Var : ob.h.h(this, e0Var, h.a.f10653a), v.f10173a);
        return fVar;
    }

    @Override // pa.l0, ma.b1
    public final boolean v() {
        e0 type = getType();
        if (!this.E) {
            return false;
        }
        kotlin.jvm.internal.h.f(type, "type");
        if (!(((k.G(type) || s.a(type)) && !q1.g(type)) || k.I(type))) {
            return false;
        }
        db.f fVar = x.f4820a;
        lb.c ENHANCED_NULLABILITY_ANNOTATION = va.x.f18397p;
        kotlin.jvm.internal.h.e(ENHANCED_NULLABILITY_ANNOTATION, "ENHANCED_NULLABILITY_ANNOTATION");
        return !b.a.C(type, ENHANCED_NULLABILITY_ANNOTATION) || k.I(type);
    }
}
