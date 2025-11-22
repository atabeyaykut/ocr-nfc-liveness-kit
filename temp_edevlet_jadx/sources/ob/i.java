package ob;

import cc.c1;
import cc.e0;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import ma.a0;
import ma.b;
import ma.b0;
import ma.i0;
import ma.n0;
import ma.s0;

/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f11277a = 0;

    static {
        new lb.c("kotlin.jvm.JvmName");
    }

    public static /* synthetic */ void a(int r23) {
        String str;
        int r22;
        switch (r23) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case 42:
            case 43:
            case 47:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 62:
            case 69:
            case 73:
            case 80:
            case 81:
            case 83:
            case 86:
            case 91:
            case 93:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (r23) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case 42:
            case 43:
            case 47:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 62:
            case 69:
            case 73:
            case 80:
            case 81:
            case 83:
            case 86:
            case 91:
            case 93:
                r22 = 2;
                break;
            default:
                r22 = 3;
                break;
        }
        Object[] objArr = new Object[r22];
        switch (r23) {
            case 1:
            case 2:
            case 3:
            case 5:
            case 6:
            case 8:
            case 11:
            case 13:
            case 14:
            case 15:
            case 21:
            case 23:
            case 24:
            case 34:
            case 35:
            case 36:
            case 57:
            case 58:
            case 59:
            case 61:
            case 79:
            case 92:
            case 94:
                objArr[0] = "descriptor";
                break;
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case 42:
            case 43:
            case 47:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 62:
            case 69:
            case 73:
            case 80:
            case 81:
            case 83:
            case 86:
            case 91:
            case 93:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils";
                break;
            case 16:
                objArr[0] = "first";
                break;
            case 17:
                objArr[0] = "second";
                break;
            case 18:
            case 19:
                objArr[0] = "aClass";
                break;
            case 20:
                objArr[0] = "kotlinType";
                break;
            case 25:
                objArr[0] = "declarationDescriptor";
                break;
            case 26:
            case 28:
                objArr[0] = "subClass";
                break;
            case 27:
            case 29:
            case 33:
                objArr[0] = "superClass";
                break;
            case 30:
            case 32:
            case 45:
            case 64:
                objArr[0] = "type";
                break;
            case 31:
                objArr[0] = "other";
                break;
            case 37:
                objArr[0] = "classKind";
                break;
            case 38:
            case 39:
            case 41:
            case 44:
            case 48:
            case 54:
            case 65:
            case 66:
            case 67:
            case 74:
            case 75:
                objArr[0] = "classDescriptor";
                break;
            case 46:
                objArr[0] = "typeConstructor";
                break;
            case 55:
                objArr[0] = "innerClassName";
                break;
            case 56:
                objArr[0] = "location";
                break;
            case 63:
                objArr[0] = "variable";
                break;
            case 68:
                objArr[0] = "f";
                break;
            case 70:
                objArr[0] = "current";
                break;
            case 71:
                objArr[0] = "result";
                break;
            case 72:
                objArr[0] = "memberDescriptor";
                break;
            case 76:
            case 77:
            case 78:
                objArr[0] = "annotated";
                break;
            case 82:
            case 84:
            case 87:
            case 89:
                objArr[0] = "scope";
                break;
            case 85:
            case 88:
            case 90:
                objArr[0] = "name";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (r23) {
            case 4:
                objArr[1] = "getFqNameSafe";
                break;
            case 7:
                objArr[1] = "getFqNameUnsafe";
                break;
            case 9:
            case 10:
                objArr[1] = "getFqNameFromTopLevelClass";
                break;
            case 12:
                objArr[1] = "getClassIdForNonLocalClass";
                break;
            case 22:
                objArr[1] = "getContainingModule";
                break;
            case 40:
                objArr[1] = "getSuperclassDescriptors";
                break;
            case 42:
            case 43:
                objArr[1] = "getSuperClassType";
                break;
            case 47:
                objArr[1] = "getClassDescriptorForTypeConstructor";
                break;
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
                objArr[1] = "getDefaultConstructorVisibility";
                break;
            case 60:
                objArr[1] = "unwrapFakeOverride";
                break;
            case 62:
                objArr[1] = "unwrapFakeOverrideToAnyDeclaration";
                break;
            case 69:
                objArr[1] = "getAllOverriddenDescriptors";
                break;
            case 73:
                objArr[1] = "getAllOverriddenDeclarations";
                break;
            case 80:
            case 81:
                objArr[1] = "getContainingSourceFile";
                break;
            case 83:
                objArr[1] = "getAllDescriptors";
                break;
            case 86:
                objArr[1] = "getFunctionByName";
                break;
            case 91:
                objArr[1] = "getPropertyByName";
                break;
            case 93:
                objArr[1] = "getDirectMember";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils";
                break;
        }
        switch (r23) {
            case 1:
                objArr[2] = "isLocal";
                break;
            case 2:
                objArr[2] = "getFqName";
                break;
            case 3:
                objArr[2] = "getFqNameSafe";
                break;
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case 42:
            case 43:
            case 47:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 62:
            case 69:
            case 73:
            case 80:
            case 81:
            case 83:
            case 86:
            case 91:
            case 93:
                break;
            case 5:
                objArr[2] = "getFqNameSafeIfPossible";
                break;
            case 6:
                objArr[2] = "getFqNameUnsafe";
                break;
            case 8:
                objArr[2] = "getFqNameFromTopLevelClass";
                break;
            case 11:
                objArr[2] = "getClassIdForNonLocalClass";
                break;
            case 13:
                objArr[2] = "isExtension";
                break;
            case 14:
                objArr[2] = "isOverride";
                break;
            case 15:
                objArr[2] = "isStaticDeclaration";
                break;
            case 16:
            case 17:
                objArr[2] = "areInSameModule";
                break;
            case 18:
            case 19:
                objArr[2] = "getParentOfType";
                break;
            case 20:
            case 23:
                objArr[2] = "getContainingModuleOrNull";
                break;
            case 21:
                objArr[2] = "getContainingModule";
                break;
            case 24:
                objArr[2] = "getContainingClass";
                break;
            case 25:
                objArr[2] = "isAncestor";
                break;
            case 26:
            case 27:
                objArr[2] = "isDirectSubclass";
                break;
            case 28:
            case 29:
                objArr[2] = "isSubclass";
                break;
            case 30:
            case 31:
                objArr[2] = "isSameClass";
                break;
            case 32:
            case 33:
                objArr[2] = "isSubtypeOfClass";
                break;
            case 34:
                objArr[2] = "isAnonymousObject";
                break;
            case 35:
                objArr[2] = "isAnonymousFunction";
                break;
            case 36:
                objArr[2] = "isEnumEntry";
                break;
            case 37:
                objArr[2] = "isKindOf";
                break;
            case 38:
                objArr[2] = "hasAbstractMembers";
                break;
            case 39:
                objArr[2] = "getSuperclassDescriptors";
                break;
            case 41:
                objArr[2] = "getSuperClassType";
                break;
            case 44:
                objArr[2] = "getSuperClassDescriptor";
                break;
            case 45:
                objArr[2] = "getClassDescriptorForType";
                break;
            case 46:
                objArr[2] = "getClassDescriptorForTypeConstructor";
                break;
            case 48:
                objArr[2] = "getDefaultConstructorVisibility";
                break;
            case 54:
            case 55:
            case 56:
                objArr[2] = "getInnerClassByName";
                break;
            case 57:
                objArr[2] = "isStaticNestedClass";
                break;
            case 58:
                objArr[2] = "isTopLevelOrInnerClass";
                break;
            case 59:
                objArr[2] = "unwrapFakeOverride";
                break;
            case 61:
                objArr[2] = "unwrapFakeOverrideToAnyDeclaration";
                break;
            case 63:
            case 64:
                objArr[2] = "shouldRecordInitializerForProperty";
                break;
            case 65:
                objArr[2] = "classCanHaveAbstractFakeOverride";
                break;
            case 66:
                objArr[2] = "classCanHaveAbstractDeclaration";
                break;
            case 67:
                objArr[2] = "classCanHaveOpenMembers";
                break;
            case 68:
                objArr[2] = "getAllOverriddenDescriptors";
                break;
            case 70:
            case 71:
                objArr[2] = "collectAllOverriddenDescriptors";
                break;
            case 72:
                objArr[2] = "getAllOverriddenDeclarations";
                break;
            case 74:
                objArr[2] = "isSingletonOrAnonymousObject";
                break;
            case 75:
                objArr[2] = "canHaveDeclaredConstructors";
                break;
            case 76:
                objArr[2] = "getJvmName";
                break;
            case 77:
                objArr[2] = "findJvmNameAnnotation";
                break;
            case 78:
                objArr[2] = "hasJvmNameAnnotation";
                break;
            case 79:
                objArr[2] = "getContainingSourceFile";
                break;
            case 82:
                objArr[2] = "getAllDescriptors";
                break;
            case 84:
            case 85:
                objArr[2] = "getFunctionByName";
                break;
            case 87:
            case 88:
                objArr[2] = "getFunctionByNameOrNull";
                break;
            case 89:
            case 90:
                objArr[2] = "getPropertyByName";
                break;
            case 92:
                objArr[2] = "getDirectMember";
                break;
            case 94:
                objArr[2] = "isMethodOfAny";
                break;
            default:
                objArr[2] = "getDispatchReceiverParameterIfNeeded";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (r23) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case 42:
            case 43:
            case 47:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 62:
            case 69:
            case 73:
            case 80:
            case 81:
            case 83:
            case 86:
            case 91:
            case 93:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public static void b(ma.a aVar, LinkedHashSet linkedHashSet) {
        if (aVar == null) {
            a(70);
            throw null;
        }
        if (linkedHashSet.contains(aVar)) {
            return;
        }
        Iterator<? extends ma.a> it = aVar.a().e().iterator();
        while (it.hasNext()) {
            ma.a aVarA = it.next().a();
            b(aVarA, linkedHashSet);
            linkedHashSet.add(aVarA);
        }
    }

    public static ma.e c(e0 e0Var) {
        if (e0Var == null) {
            a(45);
            throw null;
        }
        c1 c1VarM0 = e0Var.M0();
        if (c1VarM0 == null) {
            a(46);
            throw null;
        }
        ma.e eVar = (ma.e) c1VarM0.n();
        if (eVar != null) {
            return eVar;
        }
        a(47);
        throw null;
    }

    public static b0 d(ma.j jVar) {
        if (jVar == null) {
            a(21);
            throw null;
        }
        b0 b0VarE = e(jVar);
        if (b0VarE != null) {
            return b0VarE;
        }
        a(22);
        throw null;
    }

    public static b0 e(ma.j jVar) {
        if (jVar == null) {
            a(23);
            throw null;
        }
        while (jVar != null) {
            if (jVar instanceof b0) {
                return (b0) jVar;
            }
            if (jVar instanceof i0) {
                return ((i0) jVar).u0();
            }
            jVar = jVar.b();
        }
        return null;
    }

    public static s0 f(ma.j jVar) {
        if (jVar == null) {
            a(79);
            throw null;
        }
        if (jVar instanceof n0) {
            jVar = ((n0) jVar).A0();
        }
        boolean z10 = jVar instanceof ma.m;
        s0.a aVar = s0.f10244a;
        if (z10) {
            ((ma.m) jVar).getSource().a();
        }
        return aVar;
    }

    public static lb.d g(ma.j jVar) {
        if (jVar != null) {
            lb.c cVarH = h(jVar);
            return cVarH != null ? cVarH.i() : g(jVar.b()).b(jVar.getName());
        }
        a(2);
        throw null;
    }

    public static lb.c h(ma.j jVar) {
        if (jVar == null) {
            a(5);
            throw null;
        }
        if ((jVar instanceof b0) || ec.i.f(jVar)) {
            return lb.c.f9667c;
        }
        if (jVar instanceof i0) {
            return ((i0) jVar).d();
        }
        if (jVar instanceof ma.e0) {
            return ((ma.e0) jVar).d();
        }
        return null;
    }

    public static <D extends ma.j> D i(ma.j jVar, Class<D> cls, boolean z10) {
        D d10;
        if (jVar == null) {
            return null;
        }
        if (!z10) {
            d10 = (D) jVar.b();
            while (d10 != null) {
                if (cls.isInstance(d10)) {
                    return d10;
                }
            }
            return null;
        }
        d10 = (D) d10.b();
    }

    public static ma.e j(ma.e eVar) {
        if (eVar == null) {
            a(44);
            throw null;
        }
        Iterator<e0> it = eVar.i().l().iterator();
        while (it.hasNext()) {
            ma.e eVarC = c(it.next());
            if (eVarC.h() != 2) {
                return eVarC;
            }
        }
        return null;
    }

    public static boolean k(ma.j jVar) {
        return n(jVar, 1) && jVar.getName().equals(lb.h.f9679a);
    }

    public static boolean l(ma.j jVar) {
        return n(jVar, 6) && ((ma.e) jVar).u();
    }

    public static boolean m(ma.j jVar) {
        if (jVar != null) {
            return n(jVar, 4);
        }
        a(36);
        throw null;
    }

    public static boolean n(ma.j jVar, int r22) {
        if (r22 != 0) {
            return (jVar instanceof ma.e) && ((ma.e) jVar).h() == r22;
        }
        a(37);
        throw null;
    }

    public static boolean o(ma.j jVar) {
        if (jVar == null) {
            a(1);
            throw null;
        }
        while (true) {
            boolean z10 = false;
            if (jVar == null) {
                return false;
            }
            if (k(jVar)) {
                break;
            }
            if ((jVar instanceof ma.n) && ((ma.n) jVar).getVisibility() == ma.p.f) {
                z10 = true;
            }
            if (z10) {
                break;
            }
            jVar = jVar.b();
        }
        return true;
    }

    public static boolean p(e0 e0Var, ma.e eVar) {
        if (e0Var == null) {
            a(30);
            throw null;
        }
        if (eVar == null) {
            a(31);
            throw null;
        }
        ma.g gVarN = e0Var.M0().n();
        if (gVarN == null) {
            return false;
        }
        ma.j jVarA = gVarN.a();
        return (jVarA instanceof ma.g) && eVar.i().equals(((ma.g) jVarA).i());
    }

    public static boolean q(ma.h hVar) {
        return (n(hVar, 1) || n(hVar, 2)) && ((ma.e) hVar).j() == a0.SEALED;
    }

    public static boolean r(ma.e eVar, ma.e eVar2) {
        return s(eVar.q(), eVar2.a());
    }

    public static boolean s(e0 e0Var, ma.e eVar) {
        if (e0Var == null) {
            a(32);
            throw null;
        }
        if (eVar == null) {
            a(33);
            throw null;
        }
        if (p(e0Var, eVar)) {
            return true;
        }
        Iterator<e0> it = e0Var.M0().l().iterator();
        while (it.hasNext()) {
            if (s(it.next(), eVar)) {
                return true;
            }
        }
        return false;
    }

    public static boolean t(ma.j jVar) {
        return jVar != null && (jVar.b() instanceof ma.e0);
    }

    public static <D extends ma.b> D u(D d10) {
        if (d10 == null) {
            a(59);
            throw null;
        }
        while (d10.k0() == b.a.FAKE_OVERRIDE) {
            Collection<? extends ma.b> collectionE = d10.e();
            if (collectionE.isEmpty()) {
                throw new IllegalStateException("Fake override should have at least one overridden descriptor: " + d10);
            }
            d10 = (D) collectionE.iterator().next();
        }
        return d10;
    }

    public static <D extends ma.n> D v(D d10) {
        return d10 instanceof ma.b ? u((ma.b) d10) : d10;
    }
}
