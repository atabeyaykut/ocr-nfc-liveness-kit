package ma;

import androidx.core.os.EnvironmentCompat;

/* loaded from: classes2.dex */
public final class d1 {

    /* renamed from: a, reason: collision with root package name */
    public static final n9.b f10205a;

    public static final class a extends e1 {

        /* renamed from: c, reason: collision with root package name */
        public static final a f10206c = new a();

        public a() {
            super("inherited", false);
        }
    }

    public static final class b extends e1 {

        /* renamed from: c, reason: collision with root package name */
        public static final b f10207c = new b();

        public b() {
            super("internal", false);
        }
    }

    public static final class c extends e1 {

        /* renamed from: c, reason: collision with root package name */
        public static final c f10208c = new c();

        public c() {
            super("invisible_fake", false);
        }
    }

    public static final class d extends e1 {

        /* renamed from: c, reason: collision with root package name */
        public static final d f10209c = new d();

        public d() {
            super("local", false);
        }
    }

    public static final class e extends e1 {

        /* renamed from: c, reason: collision with root package name */
        public static final e f10210c = new e();

        public e() {
            super("private", false);
        }
    }

    public static final class f extends e1 {

        /* renamed from: c, reason: collision with root package name */
        public static final f f10211c = new f();

        public f() {
            super("private_to_this", false);
        }

        @Override // ma.e1
        public final String b() {
            return "private/*private to this*/";
        }
    }

    public static final class g extends e1 {

        /* renamed from: c, reason: collision with root package name */
        public static final g f10212c = new g();

        public g() {
            super("protected", true);
        }
    }

    public static final class h extends e1 {

        /* renamed from: c, reason: collision with root package name */
        public static final h f10213c = new h();

        public h() {
            super("public", true);
        }
    }

    public static final class i extends e1 {

        /* renamed from: c, reason: collision with root package name */
        public static final i f10214c = new i();

        public i() {
            super(EnvironmentCompat.MEDIA_UNKNOWN, false);
        }
    }

    static {
        n9.b bVar = new n9.b();
        bVar.put(f.f10211c, 0);
        bVar.put(e.f10210c, 0);
        bVar.put(b.f10207c, 1);
        bVar.put(g.f10212c, 1);
        bVar.put(h.f10213c, 2);
        bVar.b();
        bVar.f10623m = true;
        f10205a = bVar;
    }
}
