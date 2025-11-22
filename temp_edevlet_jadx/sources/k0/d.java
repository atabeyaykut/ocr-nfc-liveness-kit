package k0;

import android.graphics.Path;

/* loaded from: classes.dex */
public final class d implements b {

    /* renamed from: a, reason: collision with root package name */
    public final int f8619a;

    /* renamed from: b, reason: collision with root package name */
    public final Path.FillType f8620b;

    /* renamed from: c, reason: collision with root package name */
    public final j0.c f8621c;

    /* renamed from: d, reason: collision with root package name */
    public final j0.d f8622d;

    /* renamed from: e, reason: collision with root package name */
    public final j0.f f8623e;
    public final j0.f f;

    /* renamed from: g, reason: collision with root package name */
    public final String f8624g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f8625h;

    public d(String str, int r22, Path.FillType fillType, j0.c cVar, j0.d dVar, j0.f fVar, j0.f fVar2, boolean z10) {
        this.f8619a = r22;
        this.f8620b = fillType;
        this.f8621c = cVar;
        this.f8622d = dVar;
        this.f8623e = fVar;
        this.f = fVar2;
        this.f8624g = str;
        this.f8625h = z10;
    }

    @Override // k0.b
    public final f0.c a(d0.l lVar, l0.b bVar) {
        return new f0.h(lVar, bVar, this);
    }
}
