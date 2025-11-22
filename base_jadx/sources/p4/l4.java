package p4;

import java.io.IOException;

/* loaded from: classes.dex */
public final class l4 implements t6.d<e7> {

    /* renamed from: a, reason: collision with root package name */
    public static final l4 f12475a = new l4();

    /* renamed from: b, reason: collision with root package name */
    public static final t6.c f12476b;

    /* renamed from: c, reason: collision with root package name */
    public static final t6.c f12477c;

    /* renamed from: d, reason: collision with root package name */
    public static final t6.c f12478d;

    /* renamed from: e, reason: collision with root package name */
    public static final t6.c f12479e;

    static {
        l1 l1Var = l1.DEFAULT;
        f12476b = new t6.c("imageFormat", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(1, l1Var))));
        f12477c = new t6.c("originalImageSize", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(2, l1Var))));
        f12478d = new t6.c("compressedImageSize", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(3, l1Var))));
        f12479e = new t6.c("isOdmlImage", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(4, l1Var))));
    }

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        e7 e7Var = (e7) obj;
        t6.e eVar2 = eVar;
        eVar2.a(f12476b, e7Var.f12332a);
        eVar2.a(f12477c, e7Var.f12333b);
        eVar2.a(f12478d, null);
        eVar2.a(f12479e, null);
    }
}
