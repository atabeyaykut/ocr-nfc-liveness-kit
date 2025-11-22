package com.google.android.gms.internal.measurement;

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
/* loaded from: classes.dex */
public final class b9 {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ b9[] f3400b;

    /* renamed from: a, reason: collision with root package name */
    public final c9 f3401a;

    /* JADX INFO: Fake field, exist only in values array */
    b9 EF0;

    /* JADX INFO: Fake field, exist only in values array */
    b9 EF1;

    /* JADX INFO: Fake field, exist only in values array */
    b9 EF2;

    static {
        b9 b9Var = new b9("DOUBLE", 0, c9.DOUBLE);
        b9 b9Var2 = new b9("FLOAT", 1, c9.FLOAT);
        c9 c9Var = c9.LONG;
        b9 b9Var3 = new b9("INT64", 2, c9Var);
        b9 b9Var4 = new b9("UINT64", 3, c9Var);
        c9 c9Var2 = c9.INT;
        b9 b9Var5 = new b9("INT32", 4, c9Var2);
        b9 b9Var6 = new b9("FIXED64", 5, c9Var);
        b9 b9Var7 = new b9("FIXED32", 6, c9Var2);
        b9 b9Var8 = new b9("BOOL", 7, c9.BOOLEAN);
        b9 b9Var9 = new b9("STRING", 8, c9.STRING);
        c9 c9Var3 = c9.MESSAGE;
        f3400b = new b9[]{b9Var, b9Var2, b9Var3, b9Var4, b9Var5, b9Var6, b9Var7, b9Var8, b9Var9, new b9("GROUP", 9, c9Var3), new b9("MESSAGE", 10, c9Var3), new b9("BYTES", 11, c9.BYTE_STRING), new b9("UINT32", 12, c9Var2), new b9("ENUM", 13, c9.ENUM), new b9("SFIXED32", 14, c9Var2), new b9("SFIXED64", 15, c9Var), new b9("SINT32", 16, c9Var2), new b9("SINT64", 17, c9Var)};
    }

    public b9(String str, int r22, c9 c9Var) {
        this.f3401a = c9Var;
    }

    public static b9[] values() {
        return (b9[]) f3400b.clone();
    }
}
