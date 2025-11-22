package com.google.android.gms.internal.clearcut;

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
public final class r0 {

    /* renamed from: b, reason: collision with root package name */
    public static final r0 f3276b;

    /* renamed from: c, reason: collision with root package name */
    public static final r0 f3277c;

    /* renamed from: d, reason: collision with root package name */
    public static final r0 f3278d;

    /* renamed from: e, reason: collision with root package name */
    public static final r0 f3279e;
    public static final r0 f;

    /* renamed from: g, reason: collision with root package name */
    public static final r0 f3280g;

    /* renamed from: h, reason: collision with root package name */
    public static final r0 f3281h;

    /* renamed from: j, reason: collision with root package name */
    public static final r0 f3282j;

    /* renamed from: k, reason: collision with root package name */
    public static final r0 f3283k;

    /* renamed from: l, reason: collision with root package name */
    public static final r0 f3284l;

    /* renamed from: m, reason: collision with root package name */
    public static final r0 f3285m;

    /* renamed from: n, reason: collision with root package name */
    public static final r0[] f3286n;

    /* renamed from: p, reason: collision with root package name */
    public static final /* synthetic */ r0[] f3287p;

    /* renamed from: a, reason: collision with root package name */
    public final int f3288a;

    /* JADX INFO: Fake field, exist only in values array */
    r0 EF6;

    static {
        d1 d1Var = d1.DOUBLE;
        r0 r0Var = new r0("DOUBLE", 0, 0, 1, d1Var);
        d1 d1Var2 = d1.FLOAT;
        r0 r0Var2 = new r0("FLOAT", 1, 1, 1, d1Var2);
        d1 d1Var3 = d1.LONG;
        r0 r0Var3 = new r0("INT64", 2, 2, 1, d1Var3);
        r0 r0Var4 = new r0("UINT64", 3, 3, 1, d1Var3);
        d1 d1Var4 = d1.INT;
        r0 r0Var5 = new r0("INT32", 4, 4, 1, d1Var4);
        r0 r0Var6 = new r0("FIXED64", 5, 5, 1, d1Var3);
        r0 r0Var7 = new r0("FIXED32", 6, 6, 1, d1Var4);
        d1 d1Var5 = d1.BOOLEAN;
        r0 r0Var8 = new r0("BOOL", 7, 7, 1, d1Var5);
        d1 d1Var6 = d1.STRING;
        r0 r0Var9 = new r0("STRING", 8, 8, 1, d1Var6);
        d1 d1Var7 = d1.MESSAGE;
        r0 r0Var10 = new r0("MESSAGE", 9, 9, 1, d1Var7);
        f3276b = r0Var10;
        d1 d1Var8 = d1.BYTE_STRING;
        r0 r0Var11 = new r0("BYTES", 10, 10, 1, d1Var8);
        r0 r0Var12 = new r0("UINT32", 11, 11, 1, d1Var4);
        d1 d1Var9 = d1.ENUM;
        r0 r0Var13 = new r0("ENUM", 12, 12, 1, d1Var9);
        f3277c = r0Var13;
        r0 r0Var14 = new r0("SFIXED32", 13, 13, 1, d1Var4);
        r0 r0Var15 = new r0("SFIXED64", 14, 14, 1, d1Var3);
        r0 r0Var16 = new r0("SINT32", 15, 15, 1, d1Var4);
        r0 r0Var17 = new r0("SINT64", 16, 16, 1, d1Var3);
        r0 r0Var18 = new r0("GROUP", 17, 17, 1, d1Var7);
        f3278d = r0Var18;
        r0 r0Var19 = new r0("DOUBLE_LIST", 18, 18, 2, d1Var);
        f3279e = r0Var19;
        r0 r0Var20 = new r0("FLOAT_LIST", 19, 19, 2, d1Var2);
        r0 r0Var21 = new r0("INT64_LIST", 20, 20, 2, d1Var3);
        r0 r0Var22 = new r0("UINT64_LIST", 21, 21, 2, d1Var3);
        r0 r0Var23 = new r0("INT32_LIST", 22, 22, 2, d1Var4);
        r0 r0Var24 = new r0("FIXED64_LIST", 23, 23, 2, d1Var3);
        r0 r0Var25 = new r0("FIXED32_LIST", 24, 24, 2, d1Var4);
        r0 r0Var26 = new r0("BOOL_LIST", 25, 25, 2, d1Var5);
        r0 r0Var27 = new r0("STRING_LIST", 26, 26, 2, d1Var6);
        r0 r0Var28 = new r0("MESSAGE_LIST", 27, 27, 2, d1Var7);
        f = r0Var28;
        r0 r0Var29 = new r0("BYTES_LIST", 28, 28, 2, d1Var8);
        r0 r0Var30 = new r0("UINT32_LIST", 29, 29, 2, d1Var4);
        r0 r0Var31 = new r0("ENUM_LIST", 30, 30, 2, d1Var9);
        f3280g = r0Var31;
        r0 r0Var32 = new r0("SFIXED32_LIST", 31, 31, 2, d1Var4);
        r0 r0Var33 = new r0("SFIXED64_LIST", 32, 32, 2, d1Var3);
        r0 r0Var34 = new r0("SINT32_LIST", 33, 33, 2, d1Var4);
        r0 r0Var35 = new r0("SINT64_LIST", 34, 34, 2, d1Var3);
        r0 r0Var36 = new r0("DOUBLE_LIST_PACKED", 35, 35, 3, d1Var);
        f3281h = r0Var36;
        r0 r0Var37 = new r0("FLOAT_LIST_PACKED", 36, 36, 3, d1Var2);
        r0 r0Var38 = new r0("INT64_LIST_PACKED", 37, 37, 3, d1Var3);
        r0 r0Var39 = new r0("UINT64_LIST_PACKED", 38, 38, 3, d1Var3);
        r0 r0Var40 = new r0("INT32_LIST_PACKED", 39, 39, 3, d1Var4);
        r0 r0Var41 = new r0("FIXED64_LIST_PACKED", 40, 40, 3, d1Var3);
        r0 r0Var42 = new r0("FIXED32_LIST_PACKED", 41, 41, 3, d1Var4);
        r0 r0Var43 = new r0("BOOL_LIST_PACKED", 42, 42, 3, d1Var5);
        r0 r0Var44 = new r0("UINT32_LIST_PACKED", 43, 43, 3, d1Var4);
        r0 r0Var45 = new r0("ENUM_LIST_PACKED", 44, 44, 3, d1Var9);
        f3282j = r0Var45;
        r0 r0Var46 = new r0("SFIXED32_LIST_PACKED", 45, 45, 3, d1Var4);
        r0 r0Var47 = new r0("SFIXED64_LIST_PACKED", 46, 46, 3, d1Var3);
        r0 r0Var48 = new r0("SINT32_LIST_PACKED", 47, 47, 3, d1Var4);
        r0 r0Var49 = new r0("SINT64_LIST_PACKED", 48, 48, 3, d1Var3);
        f3283k = r0Var49;
        r0 r0Var50 = new r0("GROUP_LIST", 49, 49, 2, d1Var7);
        f3284l = r0Var50;
        r0 r0Var51 = new r0("MAP", 50, 50, 4, d1.VOID);
        f3285m = r0Var51;
        f3287p = new r0[]{r0Var, r0Var2, r0Var3, r0Var4, r0Var5, r0Var6, r0Var7, r0Var8, r0Var9, r0Var10, r0Var11, r0Var12, r0Var13, r0Var14, r0Var15, r0Var16, r0Var17, r0Var18, r0Var19, r0Var20, r0Var21, r0Var22, r0Var23, r0Var24, r0Var25, r0Var26, r0Var27, r0Var28, r0Var29, r0Var30, r0Var31, r0Var32, r0Var33, r0Var34, r0Var35, r0Var36, r0Var37, r0Var38, r0Var39, r0Var40, r0Var41, r0Var42, r0Var43, r0Var44, r0Var45, r0Var46, r0Var47, r0Var48, r0Var49, r0Var50, r0Var51};
        r0[] r0VarArrValues = values();
        f3286n = new r0[r0VarArrValues.length];
        for (r0 r0Var52 : r0VarArrValues) {
            f3286n[r0Var52.f3288a] = r0Var52;
        }
    }

    public r0(String str, int r22, int r32, int r42, d1 d1Var) {
        this.f3288a = r32;
        int[] r12 = s0.f3307a;
        if (r42 == 0) {
            throw null;
        }
        int r13 = r12[r42 - 1];
        if (r13 == 1 || r13 == 2) {
            d1Var.getClass();
        }
        if (r42 == 1) {
            int r14 = s0.f3308b[d1Var.ordinal()];
        }
    }

    public static r0[] values() {
        return (r0[]) f3287p.clone();
    }

    public final int n() {
        return this.f3288a;
    }
}
