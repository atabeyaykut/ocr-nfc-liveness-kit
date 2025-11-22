package i6;

import m6.f;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: c, reason: collision with root package name */
    public static final a f7285c = new a();

    /* renamed from: a, reason: collision with root package name */
    public final f f7286a;

    /* renamed from: b, reason: collision with root package name */
    public i6.a f7287b;

    public static final class a implements i6.a {
        @Override // i6.a
        public final void a() {
        }

        @Override // i6.a
        public final String b() {
            return null;
        }

        @Override // i6.a
        public final void c(long j10, String str) {
        }
    }

    public b(f fVar) {
        this.f7286a = fVar;
        this.f7287b = f7285c;
    }

    public b(f fVar, String str) {
        this(fVar);
        a(str);
    }

    public final void a(String str) {
        this.f7287b.a();
        this.f7287b = f7285c;
        if (str == null) {
            return;
        }
        this.f7287b = new d(this.f7286a.a(str, "userlog"));
    }
}
