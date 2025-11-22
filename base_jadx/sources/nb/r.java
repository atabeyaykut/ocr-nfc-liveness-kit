package nb;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public abstract class r {

    /* renamed from: a, reason: collision with root package name */
    public static final b f10776a;

    /* renamed from: b, reason: collision with root package name */
    public static final a f10777b;

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ r[] f10778c;

    public static final class a extends r {
        public a() {
            super("HTML", 1);
        }

        @Override // nb.r
        public final String n(String string) {
            kotlin.jvm.internal.h.f(string, "string");
            return mc.j.C(mc.j.C(string, "<", "&lt;"), ">", "&gt;");
        }
    }

    public static final class b extends r {
        public b() {
            super("PLAIN", 0);
        }

        @Override // nb.r
        public final String n(String string) {
            kotlin.jvm.internal.h.f(string, "string");
            return string;
        }
    }

    static {
        b bVar = new b();
        f10776a = bVar;
        a aVar = new a();
        f10777b = aVar;
        f10778c = new r[]{bVar, aVar};
    }

    public r() {
        throw null;
    }

    public r(String str, int r22) {
    }

    public static r valueOf(String str) {
        return (r) Enum.valueOf(r.class, str);
    }

    public static r[] values() {
        return (r[]) f10778c.clone();
    }

    public abstract String n(String str);
}
