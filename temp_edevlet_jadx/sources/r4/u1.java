package r4;

import java.io.IOException;

/* loaded from: classes.dex */
public final class u1 implements t6.d<l4> {

    /* renamed from: a, reason: collision with root package name */
    public static final u1 f14253a = new u1();

    /* renamed from: b, reason: collision with root package name */
    public static final t6.c f14254b;

    /* renamed from: c, reason: collision with root package name */
    public static final t6.c f14255c;

    /* renamed from: d, reason: collision with root package name */
    public static final t6.c f14256d;

    /* renamed from: e, reason: collision with root package name */
    public static final t6.c f14257e;
    public static final t6.c f;

    /* renamed from: g, reason: collision with root package name */
    public static final t6.c f14258g;

    /* renamed from: h, reason: collision with root package name */
    public static final t6.c f14259h;

    static {
        d7 d7Var = d7.DEFAULT;
        f14254b = new t6.c("durationMs", androidx.appcompat.graphics.drawable.a.i(androidx.constraintlayout.core.a.g(e7.class, new a7(1, d7Var))));
        f14255c = new t6.c("imageSource", androidx.appcompat.graphics.drawable.a.i(androidx.constraintlayout.core.a.g(e7.class, new a7(2, d7Var))));
        f14256d = new t6.c("imageFormat", androidx.appcompat.graphics.drawable.a.i(androidx.constraintlayout.core.a.g(e7.class, new a7(3, d7Var))));
        f14257e = new t6.c("imageByteSize", androidx.appcompat.graphics.drawable.a.i(androidx.constraintlayout.core.a.g(e7.class, new a7(4, d7Var))));
        f = new t6.c("imageWidth", androidx.appcompat.graphics.drawable.a.i(androidx.constraintlayout.core.a.g(e7.class, new a7(5, d7Var))));
        f14258g = new t6.c("imageHeight", androidx.appcompat.graphics.drawable.a.i(androidx.constraintlayout.core.a.g(e7.class, new a7(6, d7Var))));
        f14259h = new t6.c("rotationDegrees", androidx.appcompat.graphics.drawable.a.i(androidx.constraintlayout.core.a.g(e7.class, new a7(7, d7Var))));
    }

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        l4 l4Var = (l4) obj;
        t6.e eVar2 = eVar;
        eVar2.a(f14254b, l4Var.f14200a);
        eVar2.a(f14255c, l4Var.f14201b);
        eVar2.a(f14256d, l4Var.f14202c);
        eVar2.a(f14257e, l4Var.f14203d);
        eVar2.a(f, l4Var.f14204e);
        eVar2.a(f14258g, l4Var.f);
        eVar2.a(f14259h, l4Var.f14205g);
    }
}
