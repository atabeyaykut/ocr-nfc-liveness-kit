package k0;

import androidx.annotation.Nullable;
import f0.r;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class o implements b {

    /* renamed from: a, reason: collision with root package name */
    public final String f8678a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final j0.b f8679b;

    /* renamed from: c, reason: collision with root package name */
    public final List<j0.b> f8680c;

    /* renamed from: d, reason: collision with root package name */
    public final j0.a f8681d;

    /* renamed from: e, reason: collision with root package name */
    public final j0.d f8682e;
    public final j0.b f;

    /* renamed from: g, reason: collision with root package name */
    public final int f8683g;

    /* renamed from: h, reason: collision with root package name */
    public final int f8684h;

    /* renamed from: i, reason: collision with root package name */
    public final float f8685i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f8686j;

    public o(String str, @Nullable j0.b bVar, ArrayList arrayList, j0.a aVar, j0.d dVar, j0.b bVar2, int r72, int r82, float f, boolean z10) {
        this.f8678a = str;
        this.f8679b = bVar;
        this.f8680c = arrayList;
        this.f8681d = aVar;
        this.f8682e = dVar;
        this.f = bVar2;
        this.f8683g = r72;
        this.f8684h = r82;
        this.f8685i = f;
        this.f8686j = z10;
    }

    @Override // k0.b
    public final f0.c a(d0.l lVar, l0.b bVar) {
        return new r(lVar, bVar, this);
    }
}
