package mb;

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
public class w {

    /* renamed from: c, reason: collision with root package name */
    public static final w f10340c;

    /* renamed from: d, reason: collision with root package name */
    public static final w f10341d;

    /* renamed from: e, reason: collision with root package name */
    public static final b f10342e;
    public static final c f;

    /* renamed from: g, reason: collision with root package name */
    public static final w f10343g;

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ w[] f10344h;

    /* renamed from: a, reason: collision with root package name */
    public final x f10345a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10346b;

    /* JADX INFO: Fake field, exist only in values array */
    w EF0;

    /* JADX INFO: Fake field, exist only in values array */
    w EF1;

    /* JADX INFO: Fake field, exist only in values array */
    w EF2;

    public enum a extends w {
        public a() {
            super("STRING", 8, x.STRING, 2);
        }
    }

    public enum b extends w {
        public b(x xVar) {
            super("GROUP", 9, xVar, 3);
        }

        @Override // mb.w
        public final boolean n() {
            return false;
        }
    }

    public enum c extends w {
        public c(x xVar) {
            super("MESSAGE", 10, xVar, 2);
        }

        @Override // mb.w
        public final boolean n() {
            return false;
        }
    }

    static {
        w wVar = new w("DOUBLE", 0, x.DOUBLE, 1);
        w wVar2 = new w("FLOAT", 1, x.FLOAT, 5);
        x xVar = x.LONG;
        w wVar3 = new w("INT64", 2, xVar, 0);
        w wVar4 = new w("UINT64", 3, xVar, 0);
        x xVar2 = x.INT;
        w wVar5 = new w("INT32", 4, xVar2, 0);
        f10340c = wVar5;
        w wVar6 = new w("FIXED64", 5, xVar, 1);
        w wVar7 = new w("FIXED32", 6, xVar2, 5);
        w wVar8 = new w("BOOL", 7, x.BOOLEAN, 0);
        f10341d = wVar8;
        a aVar = new a();
        x xVar3 = x.MESSAGE;
        b bVar = new b(xVar3);
        f10342e = bVar;
        c cVar = new c(xVar3);
        f = cVar;
        w wVar9 = new w(x.BYTE_STRING) { // from class: mb.w.d
            @Override // mb.w
            public final boolean n() {
                return false;
            }
        };
        w wVar10 = new w("UINT32", 12, xVar2, 0);
        w wVar11 = new w("ENUM", 13, x.ENUM, 0);
        f10343g = wVar11;
        f10344h = new w[]{wVar, wVar2, wVar3, wVar4, wVar5, wVar6, wVar7, wVar8, aVar, bVar, cVar, wVar9, wVar10, wVar11, new w("SFIXED32", 14, xVar2, 5), new w("SFIXED64", 15, xVar, 1), new w("SINT32", 16, xVar2, 0), new w("SINT64", 17, xVar, 0)};
    }

    public /* synthetic */ w() {
        throw null;
    }

    public w(String str, int r22, x xVar, int r42) {
        this.f10345a = xVar;
        this.f10346b = r42;
    }

    public static w valueOf(String str) {
        return (w) Enum.valueOf(w.class, str);
    }

    public static w[] values() {
        return (w[]) f10344h.clone();
    }

    public boolean n() {
        return !(this instanceof a);
    }
}
