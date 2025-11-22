package eb;

/* loaded from: classes2.dex */
public abstract class o {

    /* renamed from: a, reason: collision with root package name */
    public static final c f5223a = new c(tb.c.BOOLEAN);

    /* renamed from: b, reason: collision with root package name */
    public static final c f5224b = new c(tb.c.CHAR);

    /* renamed from: c, reason: collision with root package name */
    public static final c f5225c = new c(tb.c.BYTE);

    /* renamed from: d, reason: collision with root package name */
    public static final c f5226d = new c(tb.c.SHORT);

    /* renamed from: e, reason: collision with root package name */
    public static final c f5227e = new c(tb.c.INT);
    public static final c f = new c(tb.c.FLOAT);

    /* renamed from: g, reason: collision with root package name */
    public static final c f5228g = new c(tb.c.LONG);

    /* renamed from: h, reason: collision with root package name */
    public static final c f5229h = new c(tb.c.DOUBLE);

    public static final class a extends o {

        /* renamed from: i, reason: collision with root package name */
        public final o f5230i;

        public a(o elementType) {
            kotlin.jvm.internal.h.f(elementType, "elementType");
            this.f5230i = elementType;
        }
    }

    public static final class b extends o {

        /* renamed from: i, reason: collision with root package name */
        public final String f5231i;

        public b(String internalName) {
            kotlin.jvm.internal.h.f(internalName, "internalName");
            this.f5231i = internalName;
        }
    }

    public static final class c extends o {

        /* renamed from: i, reason: collision with root package name */
        public final tb.c f5232i;

        public c(tb.c cVar) {
            this.f5232i = cVar;
        }
    }

    public final String toString() {
        return p.e(this);
    }
}
