package k0;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class e implements b {

    /* renamed from: a, reason: collision with root package name */
    public final String f8626a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8627b;

    /* renamed from: c, reason: collision with root package name */
    public final j0.c f8628c;

    /* renamed from: d, reason: collision with root package name */
    public final j0.d f8629d;

    /* renamed from: e, reason: collision with root package name */
    public final j0.f f8630e;
    public final j0.f f;

    /* renamed from: g, reason: collision with root package name */
    public final j0.b f8631g;

    /* renamed from: h, reason: collision with root package name */
    public final int f8632h;

    /* renamed from: i, reason: collision with root package name */
    public final int f8633i;

    /* renamed from: j, reason: collision with root package name */
    public final float f8634j;

    /* renamed from: k, reason: collision with root package name */
    public final List<j0.b> f8635k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    public final j0.b f8636l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f8637m;

    public e(String str, int r22, j0.c cVar, j0.d dVar, j0.f fVar, j0.f fVar2, j0.b bVar, int r82, int r92, float f, ArrayList arrayList, @Nullable j0.b bVar2, boolean z10) {
        this.f8626a = str;
        this.f8627b = r22;
        this.f8628c = cVar;
        this.f8629d = dVar;
        this.f8630e = fVar;
        this.f = fVar2;
        this.f8631g = bVar;
        this.f8632h = r82;
        this.f8633i = r92;
        this.f8634j = f;
        this.f8635k = arrayList;
        this.f8636l = bVar2;
        this.f8637m = z10;
    }

    @Override // k0.b
    public final f0.c a(d0.l lVar, l0.b bVar) {
        return new f0.i(lVar, bVar, this);
    }
}
