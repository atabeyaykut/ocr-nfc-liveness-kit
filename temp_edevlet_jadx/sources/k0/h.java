package k0;

import android.graphics.PointF;

/* loaded from: classes.dex */
public final class h implements b {

    /* renamed from: a, reason: collision with root package name */
    public final String f8644a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8645b;

    /* renamed from: c, reason: collision with root package name */
    public final j0.b f8646c;

    /* renamed from: d, reason: collision with root package name */
    public final j0.m<PointF, PointF> f8647d;

    /* renamed from: e, reason: collision with root package name */
    public final j0.b f8648e;
    public final j0.b f;

    /* renamed from: g, reason: collision with root package name */
    public final j0.b f8649g;

    /* renamed from: h, reason: collision with root package name */
    public final j0.b f8650h;

    /* renamed from: i, reason: collision with root package name */
    public final j0.b f8651i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f8652j;

    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/String;Ljava/lang/Object;Lj0/b;Lj0/m<Landroid/graphics/PointF;Landroid/graphics/PointF;>;Lj0/b;Lj0/b;Lj0/b;Lj0/b;Lj0/b;Z)V */
    public h(String str, int r22, j0.b bVar, j0.m mVar, j0.b bVar2, j0.b bVar3, j0.b bVar4, j0.b bVar5, j0.b bVar6, boolean z10) {
        this.f8644a = str;
        this.f8645b = r22;
        this.f8646c = bVar;
        this.f8647d = mVar;
        this.f8648e = bVar2;
        this.f = bVar3;
        this.f8649g = bVar4;
        this.f8650h = bVar5;
        this.f8651i = bVar6;
        this.f8652j = z10;
    }

    @Override // k0.b
    public final f0.c a(d0.l lVar, l0.b bVar) {
        return new f0.n(lVar, bVar, this);
    }
}
