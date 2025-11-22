package com.google.android.gms.internal.clearcut;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'd' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public class m3 {

    /* renamed from: b, reason: collision with root package name */
    public static final m3 f3208b;

    /* renamed from: c, reason: collision with root package name */
    public static final m3 f3209c;

    /* renamed from: d, reason: collision with root package name */
    public static final m3 f3210d;

    /* renamed from: e, reason: collision with root package name */
    public static final m3 f3211e;
    public static final m3 f;

    /* renamed from: g, reason: collision with root package name */
    public static final m3 f3212g;

    /* renamed from: h, reason: collision with root package name */
    public static final m3 f3213h;

    /* renamed from: j, reason: collision with root package name */
    public static final m3 f3214j;

    /* renamed from: k, reason: collision with root package name */
    public static final n3 f3215k;

    /* renamed from: l, reason: collision with root package name */
    public static final o3 f3216l;

    /* renamed from: m, reason: collision with root package name */
    public static final p3 f3217m;

    /* renamed from: n, reason: collision with root package name */
    public static final q3 f3218n;

    /* renamed from: p, reason: collision with root package name */
    public static final m3 f3219p;

    /* renamed from: q, reason: collision with root package name */
    public static final m3 f3220q;

    /* renamed from: r, reason: collision with root package name */
    public static final m3 f3221r;

    /* renamed from: s, reason: collision with root package name */
    public static final m3 f3222s;

    /* renamed from: t, reason: collision with root package name */
    public static final m3 f3223t;

    /* renamed from: v, reason: collision with root package name */
    public static final m3 f3224v;
    public static final /* synthetic */ m3[] w;

    /* renamed from: a, reason: collision with root package name */
    public final r3 f3225a;

    static {
        m3 m3Var = new m3("DOUBLE", 0, r3.DOUBLE, 1);
        f3208b = m3Var;
        m3 m3Var2 = new m3("FLOAT", 1, r3.FLOAT, 5);
        f3209c = m3Var2;
        r3 r3Var = r3.LONG;
        m3 m3Var3 = new m3("INT64", 2, r3Var, 0);
        f3210d = m3Var3;
        m3 m3Var4 = new m3("UINT64", 3, r3Var, 0);
        f3211e = m3Var4;
        r3 r3Var2 = r3.INT;
        m3 m3Var5 = new m3("INT32", 4, r3Var2, 0);
        f = m3Var5;
        m3 m3Var6 = new m3("FIXED64", 5, r3Var, 1);
        f3212g = m3Var6;
        m3 m3Var7 = new m3("FIXED32", 6, r3Var2, 5);
        f3213h = m3Var7;
        m3 m3Var8 = new m3("BOOL", 7, r3.BOOLEAN, 0);
        f3214j = m3Var8;
        n3 n3Var = new n3();
        f3215k = n3Var;
        r3 r3Var3 = r3.MESSAGE;
        o3 o3Var = new o3(r3Var3);
        f3216l = o3Var;
        p3 p3Var = new p3(r3Var3);
        f3217m = p3Var;
        q3 q3Var = new q3(r3.BYTE_STRING);
        f3218n = q3Var;
        m3 m3Var9 = new m3("UINT32", 12, r3Var2, 0);
        f3219p = m3Var9;
        m3 m3Var10 = new m3("ENUM", 13, r3.ENUM, 0);
        f3220q = m3Var10;
        m3 m3Var11 = new m3("SFIXED32", 14, r3Var2, 5);
        f3221r = m3Var11;
        m3 m3Var12 = new m3("SFIXED64", 15, r3Var, 1);
        f3222s = m3Var12;
        m3 m3Var13 = new m3("SINT32", 16, r3Var2, 0);
        f3223t = m3Var13;
        m3 m3Var14 = new m3("SINT64", 17, r3Var, 0);
        f3224v = m3Var14;
        w = new m3[]{m3Var, m3Var2, m3Var3, m3Var4, m3Var5, m3Var6, m3Var7, m3Var8, n3Var, o3Var, p3Var, q3Var, m3Var9, m3Var10, m3Var11, m3Var12, m3Var13, m3Var14};
    }

    public /* synthetic */ m3() {
        throw null;
    }

    public m3(String str, int r22, r3 r3Var, int r42) {
        this.f3225a = r3Var;
    }

    public static m3[] values() {
        return (m3[]) w.clone();
    }
}
