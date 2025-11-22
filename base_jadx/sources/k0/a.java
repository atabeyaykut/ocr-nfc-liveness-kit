package k0;

import android.graphics.PointF;

/* loaded from: classes.dex */
public final class a implements b {

    /* renamed from: a, reason: collision with root package name */
    public final String f8612a;

    /* renamed from: b, reason: collision with root package name */
    public final j0.m<PointF, PointF> f8613b;

    /* renamed from: c, reason: collision with root package name */
    public final j0.f f8614c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f8615d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f8616e;

    public a(String str, j0.m<PointF, PointF> mVar, j0.f fVar, boolean z10, boolean z11) {
        this.f8612a = str;
        this.f8613b = mVar;
        this.f8614c = fVar;
        this.f8615d = z10;
        this.f8616e = z11;
    }

    @Override // k0.b
    public final f0.c a(d0.l lVar, l0.b bVar) {
        return new f0.f(lVar, bVar, this);
    }
}
