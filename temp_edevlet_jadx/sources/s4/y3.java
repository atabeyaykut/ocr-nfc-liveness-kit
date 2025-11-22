package s4;

import java.io.IOException;

/* loaded from: classes.dex */
public final class y3 implements t6.d<q6> {

    /* renamed from: a, reason: collision with root package name */
    public static final y3 f15245a = new y3();

    /* renamed from: b, reason: collision with root package name */
    public static final t6.c f15246b;

    /* renamed from: c, reason: collision with root package name */
    public static final t6.c f15247c;

    /* renamed from: d, reason: collision with root package name */
    public static final t6.c f15248d;

    /* renamed from: e, reason: collision with root package name */
    public static final t6.c f15249e;

    static {
        y0 y0Var = y0.DEFAULT;
        f15246b = new t6.c("imageFormat", androidx.appcompat.graphics.drawable.a.i(ab.b.h(z0.class, new v0(1, y0Var))));
        f15247c = new t6.c("originalImageSize", androidx.appcompat.graphics.drawable.a.i(ab.b.h(z0.class, new v0(2, y0Var))));
        f15248d = new t6.c("compressedImageSize", androidx.appcompat.graphics.drawable.a.i(ab.b.h(z0.class, new v0(3, y0Var))));
        f15249e = new t6.c("isOdmlImage", androidx.appcompat.graphics.drawable.a.i(ab.b.h(z0.class, new v0(4, y0Var))));
    }

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        q6 q6Var = (q6) obj;
        t6.e eVar2 = eVar;
        eVar2.a(f15246b, q6Var.f15141a);
        eVar2.a(f15247c, q6Var.f15142b);
        eVar2.a(f15248d, null);
        eVar2.a(f15249e, null);
    }
}
