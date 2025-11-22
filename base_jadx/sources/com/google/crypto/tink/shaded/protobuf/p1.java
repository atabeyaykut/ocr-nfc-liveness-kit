package com.google.crypto.tink.shaded.protobuf;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF2' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes2.dex */
public class p1 {

    /* renamed from: b, reason: collision with root package name */
    public static final b f4343b;

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ p1[] f4344c;

    /* renamed from: a, reason: collision with root package name */
    public final q1 f4345a;

    /* JADX INFO: Fake field, exist only in values array */
    p1 EF0;

    /* JADX INFO: Fake field, exist only in values array */
    p1 EF1;

    /* JADX INFO: Fake field, exist only in values array */
    p1 EF2;

    public enum b extends p1 {
        public b(q1 q1Var) {
            super("GROUP", 9, q1Var, 3);
        }
    }

    static {
        p1 p1Var = new p1("DOUBLE", 0, q1.DOUBLE, 1);
        p1 p1Var2 = new p1("FLOAT", 1, q1.FLOAT, 5);
        q1 q1Var = q1.LONG;
        p1 p1Var3 = new p1("INT64", 2, q1Var, 0);
        p1 p1Var4 = new p1("UINT64", 3, q1Var, 0);
        q1 q1Var2 = q1.INT;
        p1 p1Var5 = new p1("INT32", 4, q1Var2, 0);
        p1 p1Var6 = new p1("FIXED64", 5, q1Var, 1);
        p1 p1Var7 = new p1("FIXED32", 6, q1Var2, 5);
        p1 p1Var8 = new p1("BOOL", 7, q1.BOOLEAN, 0);
        p1 p1Var9 = new p1() { // from class: com.google.crypto.tink.shaded.protobuf.p1.a
            {
                q1 q1Var3 = q1.STRING;
            }
        };
        q1 q1Var3 = q1.MESSAGE;
        b bVar = new b(q1Var3);
        f4343b = bVar;
        f4344c = new p1[]{p1Var, p1Var2, p1Var3, p1Var4, p1Var5, p1Var6, p1Var7, p1Var8, p1Var9, bVar, new p1(q1Var3) { // from class: com.google.crypto.tink.shaded.protobuf.p1.c
        }, new p1(q1.BYTE_STRING) { // from class: com.google.crypto.tink.shaded.protobuf.p1.d
        }, new p1("UINT32", 12, q1Var2, 0), new p1("ENUM", 13, q1.ENUM, 0), new p1("SFIXED32", 14, q1Var2, 5), new p1("SFIXED64", 15, q1Var, 1), new p1("SINT32", 16, q1Var2, 0), new p1("SINT64", 17, q1Var, 0)};
    }

    public /* synthetic */ p1() {
        throw null;
    }

    public p1(String str, int r22, q1 q1Var, int r42) {
        this.f4345a = q1Var;
    }

    public static p1 valueOf(String str) {
        return (p1) Enum.valueOf(p1.class, str);
    }

    public static p1[] values() {
        return (p1[]) f4344c.clone();
    }
}
