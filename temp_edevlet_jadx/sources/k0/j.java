package k0;

import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class j implements b {

    /* renamed from: a, reason: collision with root package name */
    public final String f8658a;

    /* renamed from: b, reason: collision with root package name */
    public final j0.b f8659b;

    /* renamed from: c, reason: collision with root package name */
    public final j0.b f8660c;

    /* renamed from: d, reason: collision with root package name */
    public final j0.l f8661d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f8662e;

    public j(String str, j0.b bVar, j0.b bVar2, j0.l lVar, boolean z10) {
        this.f8658a = str;
        this.f8659b = bVar;
        this.f8660c = bVar2;
        this.f8661d = lVar;
        this.f8662e = z10;
    }

    @Override // k0.b
    @Nullable
    public final f0.c a(d0.l lVar, l0.b bVar) {
        return new f0.p(lVar, bVar, this);
    }
}
