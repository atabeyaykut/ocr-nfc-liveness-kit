package k0;

import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class g implements b {

    /* renamed from: a, reason: collision with root package name */
    public final int f8642a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f8643b;

    public g(String str, int r22, boolean z10) {
        this.f8642a = r22;
        this.f8643b = z10;
    }

    @Override // k0.b
    @Nullable
    public final f0.c a(d0.l lVar, l0.b bVar) {
        if (lVar.f4561m) {
            return new f0.l(this);
        }
        p0.c.b("Animation contains merge paths but they are disabled.");
        return null;
    }

    public final String toString() {
        return "MergePaths{mode=" + androidx.appcompat.graphics.drawable.a.m(this.f8642a) + '}';
    }
}
