package k0;

import android.graphics.Path;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class l implements b {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f8666a;

    /* renamed from: b, reason: collision with root package name */
    public final Path.FillType f8667b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8668c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final j0.a f8669d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final j0.d f8670e;
    public final boolean f;

    public l(String str, boolean z10, Path.FillType fillType, @Nullable j0.a aVar, @Nullable j0.d dVar, boolean z11) {
        this.f8668c = str;
        this.f8666a = z10;
        this.f8667b = fillType;
        this.f8669d = aVar;
        this.f8670e = dVar;
        this.f = z11;
    }

    @Override // k0.b
    public final f0.c a(d0.l lVar, l0.b bVar) {
        return new f0.g(lVar, bVar, this);
    }

    public final String toString() {
        return androidx.browser.browseractions.b.f(new StringBuilder("ShapeFill{color=, fillEnabled="), this.f8666a, '}');
    }
}
