package ob;

import cc.a1;
import cc.c1;
import cc.e0;
import cc.f0;
import cc.k1;
import java.util.Collections;
import java.util.List;
import ma.a0;
import ma.b;
import ma.l0;
import ma.p;
import ma.r0;
import na.h;
import pa.m0;
import pa.n0;
import pa.o0;
import pa.p0;
import pa.v0;

/* loaded from: classes2.dex */
public final class h {

    public static class a extends pa.l {
        public a(ac.d dVar) {
            ma.q qVar;
            super(dVar, null, h.a.f10653a, true, b.a.DECLARATION, r0.f10243a);
            List listEmptyList = Collections.emptyList();
            int r12 = i.f11277a;
            int r32 = dVar.f169l;
            if (r32 == 3 || androidx.camera.core.impl.utils.f.c(r32)) {
                qVar = ma.p.f10221a;
                if (qVar == null) {
                    i.a(49);
                    throw null;
                }
            } else if (i.q(dVar)) {
                qVar = ma.p.f10221a;
                if (qVar == null) {
                    i.a(51);
                    throw null;
                }
            } else if (i.k(dVar)) {
                qVar = ma.p.f10230k;
                if (qVar == null) {
                    i.a(52);
                    throw null;
                }
            } else {
                qVar = ma.p.f10225e;
                if (qVar == null) {
                    i.a(53);
                    throw null;
                }
            }
            V0(listEmptyList, qVar);
        }
    }

    public static /* synthetic */ void a(int r11) {
        String str = (r11 == 12 || r11 == 23 || r11 == 25) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r11 == 12 || r11 == 23 || r11 == 25) ? 2 : 3];
        switch (r11) {
            case 1:
            case 4:
            case 8:
            case 14:
            case 16:
            case 18:
            case 31:
            case 33:
            case 35:
                objArr[0] = "annotations";
                break;
            case 2:
            case 5:
            case 9:
                objArr[0] = "parameterAnnotations";
                break;
            case 3:
            case 7:
            case 13:
            case 15:
            case 17:
            default:
                objArr[0] = "propertyDescriptor";
                break;
            case 6:
            case 11:
            case 19:
                objArr[0] = "sourceElement";
                break;
            case 10:
                objArr[0] = "visibility";
                break;
            case 12:
            case 23:
            case 25:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory";
                break;
            case 20:
                objArr[0] = "containingClass";
                break;
            case 21:
                objArr[0] = "source";
                break;
            case 22:
            case 24:
            case 26:
                objArr[0] = "enumClass";
                break;
            case 27:
            case 28:
            case 29:
                objArr[0] = "descriptor";
                break;
            case 30:
            case 32:
            case 34:
                objArr[0] = "owner";
                break;
        }
        if (r11 == 12) {
            objArr[1] = "createSetter";
        } else if (r11 == 23) {
            objArr[1] = "createEnumValuesMethod";
        } else if (r11 != 25) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory";
        } else {
            objArr[1] = "createEnumValueOfMethod";
        }
        switch (r11) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                objArr[2] = "createSetter";
                break;
            case 12:
            case 23:
            case 25:
                break;
            case 13:
            case 14:
                objArr[2] = "createDefaultGetter";
                break;
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                objArr[2] = "createGetter";
                break;
            case 20:
            case 21:
                objArr[2] = "createPrimaryConstructorForObject";
                break;
            case 22:
                objArr[2] = "createEnumValuesMethod";
                break;
            case 24:
                objArr[2] = "createEnumValueOfMethod";
                break;
            case 26:
                objArr[2] = "createEnumEntriesProperty";
                break;
            case 27:
                objArr[2] = "isEnumValuesMethod";
                break;
            case 28:
                objArr[2] = "isEnumValueOfMethod";
                break;
            case 29:
                objArr[2] = "isEnumSpecialMethod";
                break;
            case 30:
            case 31:
                objArr[2] = "createExtensionReceiverParameterForCallable";
                break;
            case 32:
            case 33:
                objArr[2] = "createContextReceiverParameterForCallable";
                break;
            case 34:
            case 35:
                objArr[2] = "createContextReceiverParameterForClass";
                break;
            default:
                objArr[2] = "createDefaultSetter";
                break;
        }
        String str2 = String.format(str, objArr);
        if (r11 != 12 && r11 != 23 && r11 != 25) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static o0 b(ma.a aVar, e0 e0Var, lb.f fVar, na.h hVar) {
        if (hVar == null) {
            a(33);
            throw null;
        }
        if (e0Var == null) {
            return null;
        }
        return new o0(aVar, new wb.c(aVar, e0Var, fVar, null), hVar);
    }

    public static m0 c(l0 l0Var, na.h hVar) {
        return i(l0Var, hVar, true, l0Var.getSource());
    }

    public static n0 d(l0 l0Var, na.h hVar) {
        h.a.C0201a c0201a = h.a.f10653a;
        r0 source = l0Var.getSource();
        if (source != null) {
            return j(l0Var, hVar, c0201a, true, l0Var.getVisibility(), source);
        }
        a(6);
        throw null;
    }

    public static pa.l0 e(ma.e eVar) {
        if (eVar == null) {
            a(26);
            throw null;
        }
        ma.e eVarA = ma.t.a(i.d(eVar), lb.i.f9703t);
        if (eVarA == null) {
            return null;
        }
        h.a.C0201a c0201a = h.a.f10653a;
        a0 a0Var = a0.FINAL;
        p.h hVar = ma.p.f10225e;
        lb.f fVar = ja.o.f8356b;
        b.a aVar = b.a.SYNTHESIZED;
        pa.l0 l0VarL0 = pa.l0.L0(eVar, a0Var, hVar, false, fVar, aVar, eVar.getSource());
        m0 m0Var = new m0(l0VarL0, c0201a, a0Var, hVar, false, false, false, aVar, null, eVar.getSource());
        l0VarL0.O0(m0Var, null, null, null);
        a1.f2258b.getClass();
        a1 attributes = a1.f2259c;
        c1 constructor = eVarA.i();
        List arguments = Collections.singletonList(new k1(eVar.q()));
        int r6 = f0.f2296a;
        kotlin.jvm.internal.h.f(attributes, "attributes");
        kotlin.jvm.internal.h.f(constructor, "constructor");
        kotlin.jvm.internal.h.f(arguments, "arguments");
        l0VarL0.Q0(f0.f(attributes, constructor, arguments, false, null), Collections.emptyList(), null, null, Collections.emptyList());
        m0Var.M0(l0VarL0.getReturnType());
        return l0VarL0;
    }

    public static p0 f(ma.e eVar) {
        if (eVar == null) {
            a(24);
            throw null;
        }
        h.a.C0201a c0201a = h.a.f10653a;
        p0 p0VarU0 = p0.U0(eVar, ja.o.f8357c, b.a.SYNTHESIZED, eVar.getSource());
        return p0VarU0.N0(null, null, Collections.emptyList(), Collections.emptyList(), Collections.singletonList(new v0(p0VarU0, null, 0, c0201a, lb.f.t("value"), sb.b.e(eVar).u(), false, false, false, null, eVar.getSource())), eVar.q(), a0.FINAL, ma.p.f10225e);
    }

    public static p0 g(ma.e eVar) {
        if (eVar != null) {
            return p0.U0(eVar, ja.o.f8355a, b.a.SYNTHESIZED, eVar.getSource()).N0(null, null, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), sb.b.e(eVar).h(eVar.q()), a0.FINAL, ma.p.f10225e);
        }
        a(22);
        throw null;
    }

    public static o0 h(ma.a aVar, e0 e0Var, na.h hVar) {
        if (aVar == null) {
            a(30);
            throw null;
        }
        if (e0Var == null) {
            return null;
        }
        return new o0(aVar, new wb.d(aVar, e0Var, null), hVar);
    }

    public static m0 i(l0 l0Var, na.h hVar, boolean z10, r0 r0Var) {
        if (hVar == null) {
            a(18);
            throw null;
        }
        if (r0Var != null) {
            return new m0(l0Var, hVar, l0Var.j(), l0Var.getVisibility(), z10, false, false, b.a.DECLARATION, null, r0Var);
        }
        a(19);
        throw null;
    }

    public static n0 j(l0 l0Var, na.h hVar, na.h hVar2, boolean z10, ma.q qVar, r0 r0Var) {
        if (hVar == null) {
            a(8);
            throw null;
        }
        if (hVar2 == null) {
            a(9);
            throw null;
        }
        if (qVar == null) {
            a(10);
            throw null;
        }
        if (r0Var == null) {
            a(11);
            throw null;
        }
        n0 n0Var = new n0(l0Var, hVar, l0Var.j(), qVar, z10, false, false, b.a.DECLARATION, null, r0Var);
        n0Var.f12969n = n0.L0(n0Var, l0Var.getType(), hVar2);
        return n0Var;
    }

    public static boolean k(ma.u uVar) {
        return uVar.k0() == b.a.SYNTHESIZED && i.n(uVar.b(), 3);
    }
}
