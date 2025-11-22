package pa;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import ma.b;
import ma.u;
import na.h;

/* loaded from: classes2.dex */
public class p0 extends x implements ma.q0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p0(ma.j jVar, ma.q0 q0Var, na.h hVar, lb.f fVar, b.a aVar, ma.r0 r0Var) {
        super(aVar, jVar, q0Var, r0Var, hVar, fVar);
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
        if (r0Var != null) {
        } else {
            C(4);
            throw null;
        }
    }

    public static /* synthetic */ void C(int r12) {
        String str = (r12 == 13 || r12 == 18 || r12 == 23 || r12 == 24 || r12 == 29 || r12 == 30) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r12 == 13 || r12 == 18 || r12 == 23 || r12 == 24 || r12 == 29 || r12 == 30) ? 2 : 3];
        switch (r12) {
            case 1:
            case 6:
            case 27:
                objArr[0] = "annotations";
                break;
            case 2:
            case 7:
                objArr[0] = "name";
                break;
            case 3:
            case 8:
            case 26:
                objArr[0] = "kind";
                break;
            case 4:
            case 9:
            case 28:
                objArr[0] = "source";
                break;
            case 5:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 10:
            case 15:
            case 20:
                objArr[0] = "typeParameters";
                break;
            case 11:
            case 16:
            case 21:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 12:
            case 17:
            case 22:
                objArr[0] = "visibility";
                break;
            case 13:
            case 18:
            case 23:
            case 24:
            case 29:
            case 30:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl";
                break;
            case 14:
            case 19:
                objArr[0] = "contextReceiverParameters";
                break;
            case 25:
                objArr[0] = "newOwner";
                break;
        }
        if (r12 == 13 || r12 == 18 || r12 == 23) {
            objArr[1] = "initialize";
        } else if (r12 == 24) {
            objArr[1] = "getOriginal";
        } else if (r12 == 29) {
            objArr[1] = "copy";
        } else if (r12 != 30) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl";
        } else {
            objArr[1] = "newCopyBuilder";
        }
        switch (r12) {
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                objArr[2] = "create";
                break;
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 16:
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
                objArr[2] = "initialize";
                break;
            case 13:
            case 18:
            case 23:
            case 24:
            case 29:
            case 30:
                break;
            case 25:
            case 26:
            case 27:
            case 28:
                objArr[2] = "createSubstitutedCopy";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (r12 != 13 && r12 != 18 && r12 != 23 && r12 != 24 && r12 != 29 && r12 != 30) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static p0 U0(ma.j jVar, lb.f fVar, b.a aVar, ma.r0 r0Var) {
        h.a.C0201a c0201a = h.a.f10653a;
        if (jVar == null) {
            C(5);
            throw null;
        }
        if (fVar == null) {
            C(7);
            throw null;
        }
        if (r0Var != null) {
            return new p0(jVar, null, c0201a, fVar, aVar, r0Var);
        }
        C(9);
        throw null;
    }

    @Override // pa.x
    public x K0(b.a aVar, ma.j jVar, ma.u uVar, ma.r0 r0Var, na.h hVar, lb.f fVar) {
        if (jVar == null) {
            C(25);
            throw null;
        }
        if (aVar == null) {
            C(26);
            throw null;
        }
        if (hVar == null) {
            C(27);
            throw null;
        }
        ma.q0 q0Var = (ma.q0) uVar;
        if (fVar == null) {
            fVar = getName();
        }
        return new p0(jVar, q0Var, hVar, fVar, aVar, r0Var);
    }

    @Override // pa.x, ma.b
    /* renamed from: T0, reason: merged with bridge method [inline-methods] */
    public ma.q0 b0(ma.j jVar, ma.a0 a0Var, ma.o oVar) {
        return (ma.q0) super.b0(jVar, a0Var, oVar);
    }

    @Override // pa.x, pa.q
    /* renamed from: V0, reason: merged with bridge method [inline-methods] */
    public final ma.q0 a() {
        ma.q0 q0Var = (ma.q0) super.a();
        if (q0Var != null) {
            return q0Var;
        }
        C(24);
        throw null;
    }

    @Override // pa.x
    /* renamed from: W0, reason: merged with bridge method [inline-methods] */
    public final p0 N0(o0 o0Var, ma.o0 o0Var2, List list, List list2, List list3, cc.e0 e0Var, ma.a0 a0Var, ma.q qVar) {
        if (list == null) {
            C(14);
            throw null;
        }
        if (list2 == null) {
            C(15);
            throw null;
        }
        if (list3 == null) {
            C(16);
            throw null;
        }
        if (qVar == null) {
            C(17);
            throw null;
        }
        p0 p0VarX0 = X0(o0Var, o0Var2, list, list2, list3, e0Var, a0Var, qVar, null);
        if (p0VarX0 != null) {
            return p0VarX0;
        }
        C(18);
        throw null;
    }

    public p0 X0(o0 o0Var, ma.o0 o0Var2, List list, List list2, List list3, cc.e0 e0Var, ma.a0 a0Var, ma.q qVar, Map map) {
        if (list == null) {
            C(19);
            throw null;
        }
        if (list2 == null) {
            C(20);
            throw null;
        }
        if (list3 == null) {
            C(21);
            throw null;
        }
        if (qVar == null) {
            C(22);
            throw null;
        }
        super.N0(o0Var, o0Var2, list, list2, list3, e0Var, a0Var, qVar);
        if (map != null && !map.isEmpty()) {
            this.G = new LinkedHashMap(map);
        }
        return this;
    }

    @Override // pa.x, ma.u, ma.q0
    public u.a<? extends ma.q0> r() {
        return super.r();
    }
}
