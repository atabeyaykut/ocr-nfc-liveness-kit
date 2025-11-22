package com.google.android.gms.internal.measurement;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF6' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class j6 {

    /* renamed from: b, reason: collision with root package name */
    public static final j6 f3577b;

    /* renamed from: c, reason: collision with root package name */
    public static final j6 f3578c;

    /* renamed from: d, reason: collision with root package name */
    public static final j6[] f3579d;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ j6[] f3580e;

    /* renamed from: a, reason: collision with root package name */
    public final int f3581a;

    /* JADX INFO: Fake field, exist only in values array */
    j6 EF6;

    static {
        a7 a7Var = a7.DOUBLE;
        j6 j6Var = new j6("DOUBLE", 0, 0, 1, a7Var);
        a7 a7Var2 = a7.FLOAT;
        j6 j6Var2 = new j6("FLOAT", 1, 1, 1, a7Var2);
        a7 a7Var3 = a7.LONG;
        j6 j6Var3 = new j6("INT64", 2, 2, 1, a7Var3);
        j6 j6Var4 = new j6("UINT64", 3, 3, 1, a7Var3);
        a7 a7Var4 = a7.INT;
        j6 j6Var5 = new j6("INT32", 4, 4, 1, a7Var4);
        j6 j6Var6 = new j6("FIXED64", 5, 5, 1, a7Var3);
        j6 j6Var7 = new j6("FIXED32", 6, 6, 1, a7Var4);
        a7 a7Var5 = a7.BOOLEAN;
        j6 j6Var8 = new j6("BOOL", 7, 7, 1, a7Var5);
        a7 a7Var6 = a7.STRING;
        j6 j6Var9 = new j6("STRING", 8, 8, 1, a7Var6);
        a7 a7Var7 = a7.MESSAGE;
        j6 j6Var10 = new j6("MESSAGE", 9, 9, 1, a7Var7);
        a7 a7Var8 = a7.BYTE_STRING;
        j6 j6Var11 = new j6("BYTES", 10, 10, 1, a7Var8);
        j6 j6Var12 = new j6("UINT32", 11, 11, 1, a7Var4);
        a7 a7Var9 = a7.ENUM;
        j6 j6Var13 = new j6("ENUM", 12, 12, 1, a7Var9);
        j6 j6Var14 = new j6("SFIXED32", 13, 13, 1, a7Var4);
        j6 j6Var15 = new j6("SFIXED64", 14, 14, 1, a7Var3);
        j6 j6Var16 = new j6("SINT32", 15, 15, 1, a7Var4);
        j6 j6Var17 = new j6("SINT64", 16, 16, 1, a7Var3);
        j6 j6Var18 = new j6("GROUP", 17, 17, 1, a7Var7);
        j6 j6Var19 = new j6("DOUBLE_LIST", 18, 18, 2, a7Var);
        j6 j6Var20 = new j6("FLOAT_LIST", 19, 19, 2, a7Var2);
        j6 j6Var21 = new j6("INT64_LIST", 20, 20, 2, a7Var3);
        j6 j6Var22 = new j6("UINT64_LIST", 21, 21, 2, a7Var3);
        j6 j6Var23 = new j6("INT32_LIST", 22, 22, 2, a7Var4);
        j6 j6Var24 = new j6("FIXED64_LIST", 23, 23, 2, a7Var3);
        j6 j6Var25 = new j6("FIXED32_LIST", 24, 24, 2, a7Var4);
        j6 j6Var26 = new j6("BOOL_LIST", 25, 25, 2, a7Var5);
        j6 j6Var27 = new j6("STRING_LIST", 26, 26, 2, a7Var6);
        j6 j6Var28 = new j6("MESSAGE_LIST", 27, 27, 2, a7Var7);
        j6 j6Var29 = new j6("BYTES_LIST", 28, 28, 2, a7Var8);
        j6 j6Var30 = new j6("UINT32_LIST", 29, 29, 2, a7Var4);
        j6 j6Var31 = new j6("ENUM_LIST", 30, 30, 2, a7Var9);
        j6 j6Var32 = new j6("SFIXED32_LIST", 31, 31, 2, a7Var4);
        j6 j6Var33 = new j6("SFIXED64_LIST", 32, 32, 2, a7Var3);
        j6 j6Var34 = new j6("SINT32_LIST", 33, 33, 2, a7Var4);
        j6 j6Var35 = new j6("SINT64_LIST", 34, 34, 2, a7Var3);
        j6 j6Var36 = new j6("DOUBLE_LIST_PACKED", 35, 35, 3, a7Var);
        f3577b = j6Var36;
        j6 j6Var37 = new j6("FLOAT_LIST_PACKED", 36, 36, 3, a7Var2);
        j6 j6Var38 = new j6("INT64_LIST_PACKED", 37, 37, 3, a7Var3);
        j6 j6Var39 = new j6("UINT64_LIST_PACKED", 38, 38, 3, a7Var3);
        j6 j6Var40 = new j6("INT32_LIST_PACKED", 39, 39, 3, a7Var4);
        j6 j6Var41 = new j6("FIXED64_LIST_PACKED", 40, 40, 3, a7Var3);
        j6 j6Var42 = new j6("FIXED32_LIST_PACKED", 41, 41, 3, a7Var4);
        j6 j6Var43 = new j6("BOOL_LIST_PACKED", 42, 42, 3, a7Var5);
        j6 j6Var44 = new j6("UINT32_LIST_PACKED", 43, 43, 3, a7Var4);
        j6 j6Var45 = new j6("ENUM_LIST_PACKED", 44, 44, 3, a7Var9);
        j6 j6Var46 = new j6("SFIXED32_LIST_PACKED", 45, 45, 3, a7Var4);
        j6 j6Var47 = new j6("SFIXED64_LIST_PACKED", 46, 46, 3, a7Var3);
        j6 j6Var48 = new j6("SINT32_LIST_PACKED", 47, 47, 3, a7Var4);
        j6 j6Var49 = new j6("SINT64_LIST_PACKED", 48, 48, 3, a7Var3);
        f3578c = j6Var49;
        f3580e = new j6[]{j6Var, j6Var2, j6Var3, j6Var4, j6Var5, j6Var6, j6Var7, j6Var8, j6Var9, j6Var10, j6Var11, j6Var12, j6Var13, j6Var14, j6Var15, j6Var16, j6Var17, j6Var18, j6Var19, j6Var20, j6Var21, j6Var22, j6Var23, j6Var24, j6Var25, j6Var26, j6Var27, j6Var28, j6Var29, j6Var30, j6Var31, j6Var32, j6Var33, j6Var34, j6Var35, j6Var36, j6Var37, j6Var38, j6Var39, j6Var40, j6Var41, j6Var42, j6Var43, j6Var44, j6Var45, j6Var46, j6Var47, j6Var48, j6Var49, new j6("GROUP_LIST", 49, 49, 2, a7Var7), new j6("MAP", 50, 50, 4, a7.VOID)};
        j6[] j6VarArrValues = values();
        f3579d = new j6[j6VarArrValues.length];
        for (j6 j6Var50 : j6VarArrValues) {
            f3579d[j6Var50.f3581a] = j6Var50;
        }
    }

    public j6(String str, int r22, int r32, int r42, a7 a7Var) {
        this.f3581a = r32;
        a7 a7Var2 = a7.VOID;
        int r12 = r42 - 1;
        if (r12 == 1 || r12 == 3) {
            a7Var.getClass();
        }
        if (r42 == 1) {
            a7Var.ordinal();
        }
    }

    public static j6[] values() {
        return (j6[]) f3580e.clone();
    }

    public final int a() {
        return this.f3581a;
    }
}
