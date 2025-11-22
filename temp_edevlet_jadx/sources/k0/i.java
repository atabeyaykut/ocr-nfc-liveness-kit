package k0;

import android.graphics.PointF;

/* loaded from: classes.dex */
public final class i implements b {

    /* renamed from: a, reason: collision with root package name */
    public final String f8653a;

    /* renamed from: b, reason: collision with root package name */
    public final j0.m<PointF, PointF> f8654b;

    /* renamed from: c, reason: collision with root package name */
    public final j0.m<PointF, PointF> f8655c;

    /* renamed from: d, reason: collision with root package name */
    public final j0.b f8656d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f8657e;

    public i(String str, j0.m mVar, j0.f fVar, j0.b bVar, boolean z10) {
        this.f8653a = str;
        this.f8654b = mVar;
        this.f8655c = fVar;
        this.f8656d = bVar;
        this.f8657e = z10;
    }

    @Override // k0.b
    public final f0.c a(d0.l lVar, l0.b bVar) {
        return new f0.o(lVar, bVar, this);
    }

    public final String toString() {
        return "RectangleShape{position=" + this.f8654b + ", size=" + this.f8655c + '}';
    }
}
