package k0;

import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class m implements b {

    /* renamed from: a, reason: collision with root package name */
    public final String f8671a;

    /* renamed from: b, reason: collision with root package name */
    public final List<b> f8672b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f8673c;

    public m(String str, boolean z10, List list) {
        this.f8671a = str;
        this.f8672b = list;
        this.f8673c = z10;
    }

    @Override // k0.b
    public final f0.c a(d0.l lVar, l0.b bVar) {
        return new f0.d(lVar, bVar, this);
    }

    public final String toString() {
        return "ShapeGroup{name='" + this.f8671a + "' Shapes: " + Arrays.toString(this.f8672b.toArray()) + '}';
    }
}
