package io.realm;

import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class p extends v0 implements io.realm.internal.n {

    /* renamed from: a, reason: collision with root package name */
    public final f0<p> f7789a;

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7790a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f7791b;

        static {
            int[] r12 = new int[g.d.d(3).length];
            f7791b = r12;
            try {
                r12[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7791b[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7791b[0] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] r13 = new int[RealmFieldType.values().length];
            f7790a = r13;
            try {
                r13[RealmFieldType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f7790a[RealmFieldType.INTEGER.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f7790a[RealmFieldType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f7790a[RealmFieldType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f7790a[RealmFieldType.STRING.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f7790a[RealmFieldType.BINARY.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f7790a[RealmFieldType.DATE.ordinal()] = 7;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f7790a[RealmFieldType.DECIMAL128.ordinal()] = 8;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f7790a[RealmFieldType.OBJECT_ID.ordinal()] = 9;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f7790a[RealmFieldType.MIXED.ordinal()] = 10;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f7790a[RealmFieldType.UUID.ordinal()] = 11;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f7790a[RealmFieldType.OBJECT.ordinal()] = 12;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f7790a[RealmFieldType.LIST.ordinal()] = 13;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f7790a[RealmFieldType.STRING_TO_INTEGER_MAP.ordinal()] = 14;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f7790a[RealmFieldType.STRING_TO_BOOLEAN_MAP.ordinal()] = 15;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f7790a[RealmFieldType.STRING_TO_STRING_MAP.ordinal()] = 16;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f7790a[RealmFieldType.STRING_TO_BINARY_MAP.ordinal()] = 17;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f7790a[RealmFieldType.STRING_TO_DATE_MAP.ordinal()] = 18;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f7790a[RealmFieldType.STRING_TO_FLOAT_MAP.ordinal()] = 19;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f7790a[RealmFieldType.STRING_TO_DOUBLE_MAP.ordinal()] = 20;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f7790a[RealmFieldType.STRING_TO_DECIMAL128_MAP.ordinal()] = 21;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f7790a[RealmFieldType.STRING_TO_OBJECT_ID_MAP.ordinal()] = 22;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f7790a[RealmFieldType.STRING_TO_UUID_MAP.ordinal()] = 23;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f7790a[RealmFieldType.STRING_TO_MIXED_MAP.ordinal()] = 24;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f7790a[RealmFieldType.STRING_TO_LINK_MAP.ordinal()] = 25;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f7790a[RealmFieldType.INTEGER_SET.ordinal()] = 26;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f7790a[RealmFieldType.BOOLEAN_SET.ordinal()] = 27;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f7790a[RealmFieldType.STRING_SET.ordinal()] = 28;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f7790a[RealmFieldType.BINARY_SET.ordinal()] = 29;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f7790a[RealmFieldType.DATE_SET.ordinal()] = 30;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                f7790a[RealmFieldType.FLOAT_SET.ordinal()] = 31;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f7790a[RealmFieldType.DOUBLE_SET.ordinal()] = 32;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f7790a[RealmFieldType.DECIMAL128_SET.ordinal()] = 33;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                f7790a[RealmFieldType.OBJECT_ID_SET.ordinal()] = 34;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                f7790a[RealmFieldType.UUID_SET.ordinal()] = 35;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                f7790a[RealmFieldType.LINK_SET.ordinal()] = 36;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                f7790a[RealmFieldType.MIXED_SET.ordinal()] = 37;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                f7790a[RealmFieldType.LINKING_OBJECTS.ordinal()] = 38;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                f7790a[RealmFieldType.INTEGER_LIST.ordinal()] = 39;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                f7790a[RealmFieldType.BOOLEAN_LIST.ordinal()] = 40;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                f7790a[RealmFieldType.STRING_LIST.ordinal()] = 41;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                f7790a[RealmFieldType.BINARY_LIST.ordinal()] = 42;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                f7790a[RealmFieldType.DATE_LIST.ordinal()] = 43;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                f7790a[RealmFieldType.FLOAT_LIST.ordinal()] = 44;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                f7790a[RealmFieldType.DOUBLE_LIST.ordinal()] = 45;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                f7790a[RealmFieldType.DECIMAL128_LIST.ordinal()] = 46;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                f7790a[RealmFieldType.OBJECT_ID_LIST.ordinal()] = 47;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                f7790a[RealmFieldType.UUID_LIST.ordinal()] = 48;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                f7790a[RealmFieldType.MIXED_LIST.ordinal()] = 49;
            } catch (NoSuchFieldError unused52) {
            }
        }
    }

    public p(io.realm.a aVar, io.realm.internal.p pVar) {
        f0<p> f0Var = new f0<>(this);
        this.f7789a = f0Var;
        f0Var.f7533e = aVar;
        f0Var.f7531c = pVar;
        f0Var.c();
    }

    @Override // io.realm.internal.n
    public final void a() {
    }

    @Override // io.realm.internal.n
    public final f0 b() {
        return this.f7789a;
    }

    public final boolean equals(Object obj) {
        f0<p> f0Var = this.f7789a;
        f0Var.f7533e.b();
        if (this == obj) {
            return true;
        }
        if (obj == null || p.class != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        String str = f0Var.f7533e.f7455c.f7746c;
        String str2 = pVar.f7789a.f7533e.f7455c.f7746c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        String strM = f0Var.f7531c.q().m();
        f0<p> f0Var2 = pVar.f7789a;
        String strM2 = f0Var2.f7531c.q().m();
        if (strM == null ? strM2 == null : strM.equals(strM2)) {
            return f0Var.f7531c.Y() == f0Var2.f7531c.Y();
        }
        return false;
    }

    public final int hashCode() {
        f0<p> f0Var = this.f7789a;
        f0Var.f7533e.b();
        String str = f0Var.f7533e.f7455c.f7746c;
        String strM = f0Var.f7531c.q().m();
        long jY = f0Var.f7531c.Y();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (strM != null ? strM.hashCode() : 0)) * 31) + ((int) ((jY >>> 32) ^ jY));
    }

    public final String toString() {
        String strR;
        Object objValueOf;
        f0<p> f0Var = this.f7789a;
        f0Var.f7533e.b();
        if (!f0Var.f7531c.isValid()) {
            return "Invalid object";
        }
        StringBuilder sb2 = new StringBuilder(android.support.v4.media.a.f(f0Var.f7531c.q().f(), " = dynamic["));
        f0Var.f7533e.b();
        for (String str : f0Var.f7531c.getColumnNames()) {
            long jG = f0Var.f7531c.G(str);
            RealmFieldType realmFieldTypeV = f0Var.f7531c.V(jG);
            sb2.append("{");
            sb2.append(str);
            sb2.append(":");
            String str2 = "null";
            switch (a.f7790a[realmFieldTypeV.ordinal()]) {
                case 1:
                    objValueOf = str2;
                    if (!f0Var.f7531c.C(jG)) {
                        objValueOf = Boolean.valueOf(f0Var.f7531c.x(jG));
                    }
                    sb2.append(objValueOf);
                    break;
                case 2:
                    objValueOf = str2;
                    if (!f0Var.f7531c.C(jG)) {
                        objValueOf = Long.valueOf(f0Var.f7531c.y(jG));
                    }
                    sb2.append(objValueOf);
                    break;
                case 3:
                    objValueOf = str2;
                    if (!f0Var.f7531c.C(jG)) {
                        objValueOf = Float.valueOf(f0Var.f7531c.Q(jG));
                    }
                    sb2.append(objValueOf);
                    break;
                case 4:
                    objValueOf = str2;
                    if (!f0Var.f7531c.C(jG)) {
                        objValueOf = Double.valueOf(f0Var.f7531c.O(jG));
                    }
                    sb2.append(objValueOf);
                    break;
                case 5:
                    strR = f0Var.f7531c.R(jG);
                    sb2.append(strR);
                    break;
                case 6:
                    strR = Arrays.toString(f0Var.f7531c.N(jG));
                    sb2.append(strR);
                    break;
                case 7:
                    objValueOf = str2;
                    if (!f0Var.f7531c.C(jG)) {
                        objValueOf = f0Var.f7531c.B(jG);
                    }
                    sb2.append(objValueOf);
                    break;
                case 8:
                    objValueOf = str2;
                    if (!f0Var.f7531c.C(jG)) {
                        objValueOf = f0Var.f7531c.n(jG);
                    }
                    sb2.append(objValueOf);
                    break;
                case 9:
                    objValueOf = str2;
                    if (!f0Var.f7531c.C(jG)) {
                        objValueOf = f0Var.f7531c.v(jG);
                    }
                    sb2.append(objValueOf);
                    break;
                case 10:
                    objValueOf = str2;
                    if (!f0Var.f7531c.C(jG)) {
                        objValueOf = new h0(k0.b(f0Var.f7533e, f0Var.f7531c.K(jG)));
                    }
                    sb2.append(objValueOf);
                    break;
                case 11:
                    objValueOf = str2;
                    if (!f0Var.f7531c.C(jG)) {
                        objValueOf = f0Var.f7531c.w(jG);
                    }
                    sb2.append(objValueOf);
                    break;
                case 12:
                    String strF = str2;
                    if (!f0Var.f7531c.L(jG)) {
                        strF = f0Var.f7531c.q().l(jG).f();
                    }
                    sb2.append(strF);
                    break;
                case 13:
                    strR = String.format(Locale.US, "RealmList<%s>[%s]", f0Var.f7531c.q().l(jG).f(), Long.valueOf(f0Var.f7531c.z(jG).W()));
                    sb2.append(strR);
                    break;
                case 14:
                    strR = String.format(Locale.US, "RealmDictionary<Long>[%s]", Long.valueOf(f0Var.f7531c.T(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 15:
                    strR = String.format(Locale.US, "RealmDictionary<Boolean>[%s]", Long.valueOf(f0Var.f7531c.T(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 16:
                    strR = String.format(Locale.US, "RealmDictionary<String>[%s]", Long.valueOf(f0Var.f7531c.T(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 17:
                    strR = String.format(Locale.US, "RealmDictionary<byte[]>[%s]", Long.valueOf(f0Var.f7531c.T(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 18:
                    strR = String.format(Locale.US, "RealmDictionary<Date>[%s]", Long.valueOf(f0Var.f7531c.T(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 19:
                    strR = String.format(Locale.US, "RealmDictionary<Float>[%s]", Long.valueOf(f0Var.f7531c.T(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 20:
                    strR = String.format(Locale.US, "RealmDictionary<Double>[%s]", Long.valueOf(f0Var.f7531c.T(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 21:
                    strR = String.format(Locale.US, "RealmDictionary<Decimal128>[%s]", Long.valueOf(f0Var.f7531c.T(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 22:
                    strR = String.format(Locale.US, "RealmDictionary<ObjectId>[%s]", Long.valueOf(f0Var.f7531c.T(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 23:
                    strR = String.format(Locale.US, "RealmDictionary<UUID>[%s]", Long.valueOf(f0Var.f7531c.T(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 24:
                    strR = String.format(Locale.US, "RealmDictionary<RealmAny>[%s]", Long.valueOf(f0Var.f7531c.T(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 25:
                    strR = String.format(Locale.US, "RealmDictionary<%s>[%s]", f0Var.f7531c.q().l(jG).f(), Long.valueOf(f0Var.f7531c.H(jG).a()));
                    sb2.append(strR);
                    break;
                case 26:
                    strR = String.format(Locale.US, "RealmSet<Long>[%s]", Long.valueOf(f0Var.f7531c.J(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 27:
                    strR = String.format(Locale.US, "RealmSet<Boolean>[%s]", Long.valueOf(f0Var.f7531c.J(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 28:
                    strR = String.format(Locale.US, "RealmSet<String>[%s]", Long.valueOf(f0Var.f7531c.J(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 29:
                    strR = String.format(Locale.US, "RealmSet<byte[]>[%s]", Long.valueOf(f0Var.f7531c.J(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 30:
                    strR = String.format(Locale.US, "RealmSet<Date>[%s]", Long.valueOf(f0Var.f7531c.J(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 31:
                    strR = String.format(Locale.US, "RealmSet<Float>[%s]", Long.valueOf(f0Var.f7531c.J(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 32:
                    strR = String.format(Locale.US, "RealmSet<Double>[%s]", Long.valueOf(f0Var.f7531c.J(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 33:
                    strR = String.format(Locale.US, "RealmSet<Decimal128>[%s]", Long.valueOf(f0Var.f7531c.J(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 34:
                    strR = String.format(Locale.US, "RealmSet<ObjectId>[%s]", Long.valueOf(f0Var.f7531c.J(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 35:
                    strR = String.format(Locale.US, "RealmSet<UUID>[%s]", Long.valueOf(f0Var.f7531c.J(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 36:
                    strR = String.format(Locale.US, "RealmSet<%s>[%s]", f0Var.f7531c.q().l(jG).f(), Long.valueOf(f0Var.f7531c.u(jG).a()));
                    sb2.append(strR);
                    break;
                case 37:
                    strR = String.format(Locale.US, "RealmSet<RealmAny>[%s]", Long.valueOf(f0Var.f7531c.J(jG, realmFieldTypeV).a()));
                    sb2.append(strR);
                    break;
                case 38:
                default:
                    strR = "?";
                    sb2.append(strR);
                    break;
                case 39:
                    strR = String.format(Locale.US, "RealmList<Long>[%s]", Long.valueOf(f0Var.f7531c.S(jG, realmFieldTypeV).W()));
                    sb2.append(strR);
                    break;
                case 40:
                    strR = String.format(Locale.US, "RealmList<Boolean>[%s]", Long.valueOf(f0Var.f7531c.S(jG, realmFieldTypeV).W()));
                    sb2.append(strR);
                    break;
                case 41:
                    strR = String.format(Locale.US, "RealmList<String>[%s]", Long.valueOf(f0Var.f7531c.S(jG, realmFieldTypeV).W()));
                    sb2.append(strR);
                    break;
                case 42:
                    strR = String.format(Locale.US, "RealmList<byte[]>[%s]", Long.valueOf(f0Var.f7531c.S(jG, realmFieldTypeV).W()));
                    sb2.append(strR);
                    break;
                case 43:
                    strR = String.format(Locale.US, "RealmList<Date>[%s]", Long.valueOf(f0Var.f7531c.S(jG, realmFieldTypeV).W()));
                    sb2.append(strR);
                    break;
                case 44:
                    strR = String.format(Locale.US, "RealmList<Float>[%s]", Long.valueOf(f0Var.f7531c.S(jG, realmFieldTypeV).W()));
                    sb2.append(strR);
                    break;
                case 45:
                    strR = String.format(Locale.US, "RealmList<Double>[%s]", Long.valueOf(f0Var.f7531c.S(jG, realmFieldTypeV).W()));
                    sb2.append(strR);
                    break;
                case 46:
                    strR = String.format(Locale.US, "RealmList<Decimal128>[%s]", Long.valueOf(f0Var.f7531c.S(jG, realmFieldTypeV).W()));
                    sb2.append(strR);
                    break;
                case 47:
                    strR = String.format(Locale.US, "RealmList<ObjectId>[%s]", Long.valueOf(f0Var.f7531c.S(jG, realmFieldTypeV).W()));
                    sb2.append(strR);
                    break;
                case 48:
                    strR = String.format(Locale.US, "RealmList<UUID>[%s]", Long.valueOf(f0Var.f7531c.S(jG, realmFieldTypeV).W()));
                    sb2.append(strR);
                    break;
                case 49:
                    strR = String.format(Locale.US, "RealmList<RealmAny>[%s]", Long.valueOf(f0Var.f7531c.S(jG, realmFieldTypeV).W()));
                    sb2.append(strR);
                    break;
            }
            sb2.append("},");
        }
        sb2.replace(sb2.length() - 1, sb2.length(), "");
        sb2.append("]");
        return sb2.toString();
    }
}
