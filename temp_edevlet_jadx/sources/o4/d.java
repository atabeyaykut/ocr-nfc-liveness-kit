package o4;

/* loaded from: classes.dex */
public final class d extends e {

    /* renamed from: c, reason: collision with root package name */
    public final transient int f11210c;

    /* renamed from: d, reason: collision with root package name */
    public final transient int f11211d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ e f11212e;

    public d(e eVar, int r22, int r32) {
        this.f11212e = eVar;
        this.f11210c = r22;
        this.f11211d = r32;
    }

    @Override // java.util.List
    public final Object get(int r22) {
        u.a(r22, this.f11211d);
        return this.f11212e.get(r22 + this.f11210c);
    }

    @Override // o4.b
    public final int l() {
        return this.f11212e.m() + this.f11210c + this.f11211d;
    }

    @Override // o4.b
    public final int m() {
        return this.f11212e.m() + this.f11210c;
    }

    @Override // o4.b
    public final Object[] o() {
        return this.f11212e.o();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f11211d;
    }

    @Override // o4.e, java.util.List
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public final e subList(int r22, int r32) {
        u.c(r22, r32, this.f11211d);
        int r02 = this.f11210c;
        return this.f11212e.subList(r22 + r02, r32 + r02);
    }
}
