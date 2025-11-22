package ja;

import bc.c;
import c5.v;
import cc.c1;
import cc.e0;
import cc.k1;
import cc.m0;
import cc.q1;
import cc.s1;
import cc.t1;
import ja.a;
import ja.o;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import ma.b0;
import ma.f0;
import ma.l0;
import ma.n0;
import ma.t;
import ma.u;
import na.h;
import net.sf.scuba.smartcards.ISO7816;
import oa.a;
import oa.c;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.jmrtd.cbeff.ISO781611;
import pa.d0;
import pa.g0;

/* loaded from: classes2.dex */
public abstract class k {

    /* renamed from: e, reason: collision with root package name */
    public static final lb.f f8326e = lb.f.v("<built-ins module>");

    /* renamed from: a, reason: collision with root package name */
    public g0 f8327a;

    /* renamed from: b, reason: collision with root package name */
    public final bc.i<a> f8328b;

    /* renamed from: c, reason: collision with root package name */
    public final bc.g<lb.f, ma.e> f8329c;

    /* renamed from: d, reason: collision with root package name */
    public final bc.l f8330d;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final Map<l, m0> f8331a;

        /* renamed from: b, reason: collision with root package name */
        public final Map<e0, m0> f8332b;

        /* renamed from: c, reason: collision with root package name */
        public final Map<m0, m0> f8333c;

        public a() {
            throw null;
        }

        public a(EnumMap enumMap, HashMap map, HashMap map2) {
            this.f8331a = enumMap;
            this.f8332b = map;
            this.f8333c = map2;
        }
    }

    public k(bc.c cVar) {
        this.f8330d = cVar;
        cVar.d(new g(this));
        this.f8328b = cVar.d(new h(this));
        this.f8329c = cVar.g(new i(this));
    }

    public static boolean A(e0 e0Var, lb.d dVar) {
        if (e0Var == null) {
            a(97);
            throw null;
        }
        if (dVar != null) {
            return J(e0Var.M0(), dVar);
        }
        a(98);
        throw null;
    }

    public static boolean B(e0 e0Var, lb.d dVar) {
        if (dVar != null) {
            return A(e0Var, dVar) && !e0Var.N0();
        }
        a(135);
        throw null;
    }

    public static boolean C(u uVar) {
        if (uVar.a().getAnnotations().P(o.a.f8383m)) {
            return true;
        }
        if (!(uVar instanceof l0)) {
            return false;
        }
        l0 l0Var = (l0) uVar;
        boolean zF0 = l0Var.f0();
        pa.m0 m0VarL = l0Var.l();
        n0 n0VarF = l0Var.f();
        if (m0VarL != null && C(m0VarL)) {
            if (!zF0) {
                return true;
            }
            if (n0VarF != null && C(n0VarF)) {
                return true;
            }
        }
        return false;
    }

    public static boolean D(e0 e0Var, lb.d dVar) {
        if (dVar != null) {
            return !e0Var.N0() && A(e0Var, dVar);
        }
        a(106);
        throw null;
    }

    public static boolean E(e0 e0Var) {
        if (e0Var == null) {
            a(ISO781611.FORMAT_TYPE_TAG);
            throw null;
        }
        if (e0Var != null) {
            return A(e0Var, o.a.f8371b) && !q1.g(e0Var);
        }
        a(138);
        throw null;
    }

    public static boolean F(e0 e0Var) {
        ma.g gVarN = e0Var.M0().n();
        return (gVarN == null || r(gVarN) == null) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean G(cc.e0 r4) {
        /*
            r0 = 0
            if (r4 == 0) goto L33
            boolean r1 = r4.N0()
            r2 = 0
            if (r1 != 0) goto L32
            cc.c1 r4 = r4.M0()
            ma.g r4 = r4.n()
            boolean r1 = r4 instanceof ma.e
            r3 = 1
            if (r1 == 0) goto L2e
            ma.e r4 = (ma.e) r4
            if (r4 == 0) goto L28
            ja.l r4 = t(r4)
            if (r4 == 0) goto L23
            r4 = 1
            goto L24
        L23:
            r4 = 0
        L24:
            if (r4 == 0) goto L2e
            r4 = 1
            goto L2f
        L28:
            r4 = 96
            a(r4)
            throw r0
        L2e:
            r4 = 0
        L2f:
            if (r4 == 0) goto L32
            r2 = 1
        L32:
            return r2
        L33:
            r4 = 94
            a(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ja.k.G(cc.e0):boolean");
    }

    public static boolean H(ma.e eVar) {
        if (eVar != null) {
            return c(eVar, o.a.f8369a) || c(eVar, o.a.f8371b);
        }
        a(107);
        throw null;
    }

    public static boolean I(e0 e0Var) {
        return D(e0Var, o.a.f);
    }

    public static boolean J(c1 c1Var, lb.d dVar) {
        if (c1Var == null) {
            a(101);
            throw null;
        }
        if (dVar != null) {
            ma.g gVarN = c1Var.n();
            return (gVarN instanceof ma.e) && c(gVarN, dVar);
        }
        a(102);
        throw null;
    }

    public static boolean K(ma.j jVar) {
        if (jVar == null) {
            a(10);
            throw null;
        }
        while (jVar != null) {
            if (jVar instanceof ma.e0) {
                return ((ma.e0) jVar).d().h(o.f8363j);
            }
            jVar = jVar.b();
        }
        return false;
    }

    public static /* synthetic */ void a(int r13) {
        String str;
        int r22;
        switch (r13) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 9:
            case 10:
            case 12:
            case 14:
            case 16:
            case 17:
            case 46:
            case 53:
            case 67:
            case 71:
            case 72:
            case 73:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
            case 85:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (r13) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                r22 = 2;
                break;
            case 9:
            case 10:
            case 12:
            case 14:
            case 16:
            case 17:
            case 46:
            case 53:
            case 67:
            case 71:
            case 72:
            case 73:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
            case 85:
            default:
                r22 = 3;
                break;
        }
        Object[] objArr = new Object[r22];
        switch (r13) {
            case 1:
            case 72:
                objArr[0] = "module";
                break;
            case 2:
                objArr[0] = "computation";
                break;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns";
                break;
            case 9:
            case 10:
            case 76:
            case 77:
            case 89:
            case 96:
            case 103:
            case 107:
            case 108:
            case 143:
            case 146:
            case 147:
            case 149:
            case 157:
            case ISO781611.SMT_DO_DS /* 158 */:
            case 159:
            case 160:
                objArr[0] = "descriptor";
                break;
            case 12:
            case 98:
            case 100:
            case 102:
            case 104:
            case 106:
            case 135:
                objArr[0] = "fqName";
                break;
            case 14:
                objArr[0] = "simpleName";
                break;
            case 16:
            case 17:
            case 53:
            case 88:
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 95:
            case 97:
            case 99:
            case 105:
            case 109:
            case 110:
            case 111:
            case 113:
            case 114:
            case 115:
            case 116:
            case 117:
            case 118:
            case 119:
            case 120:
            case 121:
            case 122:
            case 123:
            case 124:
            case 125:
            case 126:
            case CertificateBody.profileType /* 127 */:
            case 128:
            case 129:
            case ISO781611.BIOMETRIC_SUBTYPE_TAG /* 130 */:
            case ISO781611.CREATION_DATE_AND_TIME_TAG /* 131 */:
            case 132:
            case 133:
            case ISO781611.CREATOR_OF_BIOMETRIC_REFERENCE_DATA /* 134 */:
            case ISO781611.FORMAT_TYPE_TAG /* 136 */:
            case 137:
            case 138:
            case 139:
            case 140:
            case 141:
            case 142:
            case 144:
            case 145:
            case 148:
            case 150:
            case ISO7816.TAG_SM_EXPECTED_LENGTH /* 151 */:
            case 152:
            case ISO7816.TAG_SM_STATUS_WORD /* 153 */:
            case 154:
            case 155:
            case 156:
            case 162:
                objArr[0] = "type";
                break;
            case 46:
                objArr[0] = "classSimpleName";
                break;
            case 67:
                objArr[0] = "arrayType";
                break;
            case 71:
                objArr[0] = "notNullArrayType";
                break;
            case 73:
                objArr[0] = "primitiveType";
                break;
            case 75:
                objArr[0] = "kotlinType";
                break;
            case 78:
            case 82:
                objArr[0] = "projectionType";
                break;
            case 79:
            case 83:
            case 85:
                objArr[0] = "argument";
                break;
            case 80:
                objArr[0] = "annotations";
                break;
            case 101:
                objArr[0] = "typeConstructor";
                break;
            case 112:
                objArr[0] = "classDescriptor";
                break;
            case 161:
                objArr[0] = "declarationDescriptor";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        switch (r13) {
            case 3:
                objArr[1] = "getAdditionalClassPartsProvider";
                break;
            case 4:
                objArr[1] = "getPlatformDependentDeclarationFilter";
                break;
            case 5:
                objArr[1] = "getClassDescriptorFactories";
                break;
            case 6:
                objArr[1] = "getStorageManager";
                break;
            case 7:
                objArr[1] = "getBuiltInsModule";
                break;
            case 8:
                objArr[1] = "getBuiltInPackagesImportedByDefault";
                break;
            case 9:
            case 10:
            case 12:
            case 14:
            case 16:
            case 17:
            case 46:
            case 53:
            case 67:
            case 71:
            case 72:
            case 73:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
            case 85:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns";
                break;
            case 11:
                objArr[1] = "getBuiltInsPackageScope";
                break;
            case 13:
                objArr[1] = "getBuiltInClassByFqName";
                break;
            case 15:
                objArr[1] = "getBuiltInClassByName";
                break;
            case 18:
                objArr[1] = "getSuspendFunction";
                break;
            case 19:
                objArr[1] = "getKFunction";
                break;
            case 20:
                objArr[1] = "getKSuspendFunction";
                break;
            case 21:
                objArr[1] = "getKClass";
                break;
            case 22:
                objArr[1] = "getKCallable";
                break;
            case 23:
                objArr[1] = "getKProperty";
                break;
            case 24:
                objArr[1] = "getKProperty0";
                break;
            case 25:
                objArr[1] = "getKProperty1";
                break;
            case 26:
                objArr[1] = "getKProperty2";
                break;
            case 27:
                objArr[1] = "getKMutableProperty0";
                break;
            case 28:
                objArr[1] = "getKMutableProperty1";
                break;
            case 29:
                objArr[1] = "getKMutableProperty2";
                break;
            case 30:
                objArr[1] = "getIterator";
                break;
            case 31:
                objArr[1] = "getIterable";
                break;
            case 32:
                objArr[1] = "getMutableIterable";
                break;
            case 33:
                objArr[1] = "getMutableIterator";
                break;
            case 34:
                objArr[1] = "getCollection";
                break;
            case 35:
                objArr[1] = "getMutableCollection";
                break;
            case 36:
                objArr[1] = "getList";
                break;
            case 37:
                objArr[1] = "getMutableList";
                break;
            case 38:
                objArr[1] = "getSet";
                break;
            case 39:
                objArr[1] = "getMutableSet";
                break;
            case 40:
                objArr[1] = "getMap";
                break;
            case 41:
                objArr[1] = "getMutableMap";
                break;
            case 42:
                objArr[1] = "getMapEntry";
                break;
            case 43:
                objArr[1] = "getMutableMapEntry";
                break;
            case 44:
                objArr[1] = "getListIterator";
                break;
            case 45:
                objArr[1] = "getMutableListIterator";
                break;
            case 47:
                objArr[1] = "getBuiltInTypeByClassName";
                break;
            case 48:
                objArr[1] = "getNothingType";
                break;
            case 49:
                objArr[1] = "getNullableNothingType";
                break;
            case 50:
                objArr[1] = "getAnyType";
                break;
            case 51:
                objArr[1] = "getNullableAnyType";
                break;
            case 52:
                objArr[1] = "getDefaultBound";
                break;
            case 54:
                objArr[1] = "getPrimitiveKotlinType";
                break;
            case 55:
                objArr[1] = "getNumberType";
                break;
            case 56:
                objArr[1] = "getByteType";
                break;
            case 57:
                objArr[1] = "getShortType";
                break;
            case 58:
                objArr[1] = "getIntType";
                break;
            case 59:
                objArr[1] = "getLongType";
                break;
            case 60:
                objArr[1] = "getFloatType";
                break;
            case 61:
                objArr[1] = "getDoubleType";
                break;
            case 62:
                objArr[1] = "getCharType";
                break;
            case 63:
                objArr[1] = "getBooleanType";
                break;
            case 64:
                objArr[1] = "getUnitType";
                break;
            case 65:
                objArr[1] = "getStringType";
                break;
            case 66:
                objArr[1] = "getIterableType";
                break;
            case 68:
            case 69:
            case 70:
                objArr[1] = "getArrayElementType";
                break;
            case 74:
                objArr[1] = "getPrimitiveArrayKotlinType";
                break;
            case 81:
            case 84:
                objArr[1] = "getArrayType";
                break;
            case 86:
                objArr[1] = "getEnumType";
                break;
            case 87:
                objArr[1] = "getAnnotationType";
                break;
        }
        switch (r13) {
            case 1:
                objArr[2] = "setBuiltInsModule";
                break;
            case 2:
                objArr[2] = "setPostponedBuiltinsModuleComputation";
                break;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                break;
            case 9:
                objArr[2] = "isBuiltIn";
                break;
            case 10:
                objArr[2] = "isUnderKotlinPackage";
                break;
            case 12:
                objArr[2] = "getBuiltInClassByFqName";
                break;
            case 14:
                objArr[2] = "getBuiltInClassByName";
                break;
            case 16:
                objArr[2] = "getPrimitiveClassDescriptor";
                break;
            case 17:
                objArr[2] = "getPrimitiveArrayClassDescriptor";
                break;
            case 46:
                objArr[2] = "getBuiltInTypeByClassName";
                break;
            case 53:
                objArr[2] = "getPrimitiveKotlinType";
                break;
            case 67:
                objArr[2] = "getArrayElementType";
                break;
            case 71:
            case 72:
                objArr[2] = "getElementTypeForUnsignedArray";
                break;
            case 73:
                objArr[2] = "getPrimitiveArrayKotlinType";
                break;
            case 75:
                objArr[2] = "getPrimitiveArrayKotlinTypeByPrimitiveKotlinType";
                break;
            case 76:
            case 93:
                objArr[2] = "getPrimitiveType";
                break;
            case 77:
                objArr[2] = "getPrimitiveArrayType";
                break;
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
                objArr[2] = "getArrayType";
                break;
            case 85:
                objArr[2] = "getEnumType";
                break;
            case 88:
                objArr[2] = "isArray";
                break;
            case 89:
            case 90:
                objArr[2] = "isArrayOrPrimitiveArray";
                break;
            case 91:
                objArr[2] = "isPrimitiveArray";
                break;
            case 92:
                objArr[2] = "getPrimitiveArrayElementType";
                break;
            case 94:
                objArr[2] = "isPrimitiveType";
                break;
            case 95:
                objArr[2] = "isPrimitiveTypeOrNullablePrimitiveType";
                break;
            case 96:
                objArr[2] = "isPrimitiveClass";
                break;
            case 97:
            case 98:
            case 99:
            case 100:
                objArr[2] = "isConstructedFromGivenClass";
                break;
            case 101:
            case 102:
                objArr[2] = "isTypeConstructorForGivenClass";
                break;
            case 103:
            case 104:
                objArr[2] = "classFqNameEquals";
                break;
            case 105:
            case 106:
                objArr[2] = "isNotNullConstructedFromGivenClass";
                break;
            case 107:
                objArr[2] = "isSpecialClassWithNoSupertypes";
                break;
            case 108:
            case 109:
                objArr[2] = "isAny";
                break;
            case 110:
            case 112:
                objArr[2] = "isBoolean";
                break;
            case 111:
                objArr[2] = "isBooleanOrNullableBoolean";
                break;
            case 113:
                objArr[2] = "isNumber";
                break;
            case 114:
                objArr[2] = "isChar";
                break;
            case 115:
                objArr[2] = "isCharOrNullableChar";
                break;
            case 116:
                objArr[2] = "isInt";
                break;
            case 117:
                objArr[2] = "isByte";
                break;
            case 118:
                objArr[2] = "isLong";
                break;
            case 119:
                objArr[2] = "isLongOrNullableLong";
                break;
            case 120:
                objArr[2] = "isShort";
                break;
            case 121:
                objArr[2] = "isFloat";
                break;
            case 122:
                objArr[2] = "isFloatOrNullableFloat";
                break;
            case 123:
                objArr[2] = "isDouble";
                break;
            case 124:
                objArr[2] = "isUByte";
                break;
            case 125:
                objArr[2] = "isUShort";
                break;
            case 126:
                objArr[2] = "isUInt";
                break;
            case CertificateBody.profileType /* 127 */:
                objArr[2] = "isULong";
                break;
            case 128:
                objArr[2] = "isUByteArray";
                break;
            case 129:
                objArr[2] = "isUShortArray";
                break;
            case ISO781611.BIOMETRIC_SUBTYPE_TAG /* 130 */:
                objArr[2] = "isUIntArray";
                break;
            case ISO781611.CREATION_DATE_AND_TIME_TAG /* 131 */:
                objArr[2] = "isULongArray";
                break;
            case 132:
                objArr[2] = "isUnsignedArrayType";
                break;
            case 133:
                objArr[2] = "isDoubleOrNullableDouble";
                break;
            case ISO781611.CREATOR_OF_BIOMETRIC_REFERENCE_DATA /* 134 */:
            case 135:
                objArr[2] = "isConstructedFromGivenClassAndNotNullable";
                break;
            case ISO781611.FORMAT_TYPE_TAG /* 136 */:
                objArr[2] = "isNothing";
                break;
            case 137:
                objArr[2] = "isNullableNothing";
                break;
            case 138:
                objArr[2] = "isNothingOrNullableNothing";
                break;
            case 139:
                objArr[2] = "isAnyOrNullableAny";
                break;
            case 140:
                objArr[2] = "isNullableAny";
                break;
            case 141:
                objArr[2] = "isDefaultBound";
                break;
            case 142:
                objArr[2] = "isUnit";
                break;
            case 143:
                objArr[2] = "mayReturnNonUnitValue";
                break;
            case 144:
                objArr[2] = "isUnitOrNullableUnit";
                break;
            case 145:
                objArr[2] = "isBooleanOrSubtype";
                break;
            case 146:
                objArr[2] = "isMemberOfAny";
                break;
            case 147:
            case 148:
                objArr[2] = "isEnum";
                break;
            case 149:
            case 150:
                objArr[2] = "isComparable";
                break;
            case ISO7816.TAG_SM_EXPECTED_LENGTH /* 151 */:
                objArr[2] = "isCollectionOrNullableCollection";
                break;
            case 152:
                objArr[2] = "isListOrNullableList";
                break;
            case ISO7816.TAG_SM_STATUS_WORD /* 153 */:
                objArr[2] = "isSetOrNullableSet";
                break;
            case 154:
                objArr[2] = "isMapOrNullableMap";
                break;
            case 155:
                objArr[2] = "isIterableOrNullableIterable";
                break;
            case 156:
                objArr[2] = "isThrowableOrNullableThrowable";
                break;
            case 157:
                objArr[2] = "isThrowable";
                break;
            case ISO781611.SMT_DO_DS /* 158 */:
                objArr[2] = "isKClass";
                break;
            case 159:
                objArr[2] = "isNonPrimitiveArray";
                break;
            case 160:
                objArr[2] = "isCloneable";
                break;
            case 161:
                objArr[2] = "isDeprecated";
                break;
            case 162:
                objArr[2] = "isNotNullOrNullableFunctionSupertype";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (r13) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                throw new IllegalStateException(str2);
            case 9:
            case 10:
            case 12:
            case 14:
            case 16:
            case 17:
            case 46:
            case 53:
            case 67:
            case 71:
            case 72:
            case 73:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
            case 85:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public static m0 b(k kVar, String str) {
        if (str == null) {
            kVar.getClass();
            a(46);
            throw null;
        }
        m0 m0VarQ = kVar.k(str).q();
        if (m0VarQ != null) {
            return m0VarQ;
        }
        a(47);
        throw null;
    }

    public static boolean c(ma.g gVar, lb.d dVar) {
        if (gVar == null) {
            a(103);
            throw null;
        }
        if (dVar != null) {
            return gVar.getName().equals(dVar.g()) && dVar.equals(ob.i.g(gVar));
        }
        a(104);
        throw null;
    }

    public static l r(ma.g gVar) {
        if (gVar == null) {
            a(77);
            throw null;
        }
        if (o.a.f8370a0.contains(gVar.getName())) {
            return (l) o.a.f8374c0.get(ob.i.g(gVar));
        }
        return null;
    }

    public static l t(ma.j jVar) {
        if (jVar == null) {
            a(76);
            throw null;
        }
        if (o.a.Z.contains(jVar.getName())) {
            return (l) o.a.f8372b0.get(ob.i.g(jVar));
        }
        return null;
    }

    public static boolean x(e0 e0Var) {
        if (e0Var != null) {
            return A(e0Var, o.a.f8369a);
        }
        a(139);
        throw null;
    }

    public static boolean y(e0 e0Var) {
        if (e0Var != null) {
            return A(e0Var, o.a.f8377g);
        }
        a(88);
        throw null;
    }

    public static boolean z(ma.j jVar) {
        if (jVar != null) {
            return ob.i.i(jVar, b.class, false) != null;
        }
        a(9);
        throw null;
    }

    public final void d(boolean z10) {
        lb.f moduleName = f8326e;
        kotlin.jvm.internal.h.f(moduleName, "moduleName");
        bc.l storageManager = this.f8330d;
        kotlin.jvm.internal.h.f(storageManager, "storageManager");
        g0 g0Var = new g0(moduleName, storageManager, this, 48);
        this.f8327a = g0Var;
        ja.a.f8316a.getClass();
        f0 providerForModuleContent = a.C0148a.f8318b.getValue().a(this.f8330d, this.f8327a, m(), p(), e(), z10);
        kotlin.jvm.internal.h.f(providerForModuleContent, "providerForModuleContent");
        g0Var.f12898h = providerForModuleContent;
        g0 g0Var2 = this.f8327a;
        g0Var2.getClass();
        g0Var2.f12897g = new d0(m9.k.A0(new g0[]{g0Var2}));
    }

    public oa.a e() {
        return a.C0210a.f11264a;
    }

    public final m0 f() {
        m0 m0VarQ = k("Any").q();
        if (m0VarQ != null) {
            return m0VarQ;
        }
        a(50);
        throw null;
    }

    public final e0 g(e0 e0Var) {
        lb.b bVarF;
        lb.b bVar;
        ma.e eVarA;
        m0 m0VarQ = null;
        if (e0Var == null) {
            a(67);
            throw null;
        }
        if (y(e0Var)) {
            if (e0Var.K0().size() != 1) {
                throw new IllegalStateException();
            }
            e0 type = e0Var.K0().get(0).getType();
            if (type != null) {
                return type;
            }
            a(68);
            throw null;
        }
        s1 s1VarI = q1.i(e0Var);
        m0 m0Var = this.f8328b.invoke().f8333c.get(s1VarI);
        if (m0Var != null) {
            return m0Var;
        }
        int r22 = ob.i.f11277a;
        ma.g gVarN = s1VarI.M0().n();
        b0 b0VarE = gVarN == null ? null : ob.i.e(gVarN);
        if (b0VarE != null) {
            ma.g gVarN2 = s1VarI.M0().n();
            if (gVarN2 != null) {
                Set<lb.f> set = s.f8406a;
                lb.f name = gVarN2.getName();
                kotlin.jvm.internal.h.f(name, "name");
                if (s.f8409d.contains(name) && (bVarF = sb.b.f(gVarN2)) != null && (bVar = s.f8407b.get(bVarF)) != null && (eVarA = t.a(b0VarE, bVar)) != null) {
                    m0VarQ = eVarA.q();
                }
            }
            if (m0VarQ != null) {
                return m0VarQ;
            }
        }
        throw new IllegalStateException("not array: " + e0Var);
    }

    public final m0 h(s1 s1Var) {
        t1 t1Var = t1.INVARIANT;
        if (s1Var != null) {
            return i(t1Var, s1Var, h.a.f10653a);
        }
        a(83);
        throw null;
    }

    public final m0 i(t1 t1Var, e0 e0Var, na.h hVar) {
        if (e0Var != null) {
            return cc.f0.e(v.L(hVar), k("Array"), Collections.singletonList(new k1(e0Var, t1Var)));
        }
        a(79);
        throw null;
    }

    public final ma.e j(lb.c cVar) {
        if (cVar == null) {
            a(12);
            throw null;
        }
        ma.e eVarW = a6.a.w(l(), cVar);
        if (eVarW != null) {
            return eVarW;
        }
        a(13);
        throw null;
    }

    public final ma.e k(String str) {
        if (str == null) {
            a(14);
            throw null;
        }
        ma.e eVar = (ma.e) ((c.k) this.f8329c).invoke(lb.f.t(str));
        if (eVar != null) {
            return eVar;
        }
        a(15);
        throw null;
    }

    public final g0 l() {
        g0 g0Var = this.f8327a;
        g0Var.getClass();
        if (g0Var != null) {
            return g0Var;
        }
        a(7);
        throw null;
    }

    public Iterable<oa.b> m() {
        List listSingletonList = Collections.singletonList(new ka.a(this.f8330d, l()));
        if (listSingletonList != null) {
            return listSingletonList;
        }
        a(5);
        throw null;
    }

    public final m0 n() {
        m0 m0VarQ = k("Nothing").q();
        if (m0VarQ != null) {
            return m0VarQ;
        }
        a(48);
        throw null;
    }

    public final m0 o() {
        m0 m0VarQ0 = f().Q0(true);
        if (m0VarQ0 != null) {
            return m0VarQ0;
        }
        a(51);
        throw null;
    }

    public oa.c p() {
        return c.b.f11266a;
    }

    public final m0 q(l lVar) {
        if (lVar == null) {
            a(73);
            throw null;
        }
        m0 m0Var = this.f8328b.invoke().f8331a.get(lVar);
        if (m0Var != null) {
            return m0Var;
        }
        a(74);
        throw null;
    }

    public final m0 s(l lVar) {
        if (lVar == null) {
            a(53);
            throw null;
        }
        if (lVar == null) {
            a(16);
            throw null;
        }
        m0 m0VarQ = k(lVar.f8343a.o()).q();
        if (m0VarQ != null) {
            return m0VarQ;
        }
        a(54);
        throw null;
    }

    public final m0 u() {
        m0 m0VarQ = k("String").q();
        if (m0VarQ != null) {
            return m0VarQ;
        }
        a(65);
        throw null;
    }

    public final ma.e v(int r42) {
        ma.e eVarJ = j(o.f8359e.c(lb.f.t(ka.c.f8801e.f8805b + r42)));
        if (eVarJ != null) {
            return eVarJ;
        }
        a(18);
        throw null;
    }

    public final m0 w() {
        m0 m0VarQ = k("Unit").q();
        if (m0VarQ != null) {
            return m0VarQ;
        }
        a(64);
        throw null;
    }
}
