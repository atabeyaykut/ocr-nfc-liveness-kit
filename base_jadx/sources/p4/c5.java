package p4;

import java.io.IOException;

/* loaded from: classes.dex */
public final class c5 implements t6.d<c8> {

    /* renamed from: a, reason: collision with root package name */
    public static final c5 f12283a = new c5();

    /* renamed from: b, reason: collision with root package name */
    public static final t6.c f12284b;

    /* renamed from: c, reason: collision with root package name */
    public static final t6.c f12285c;

    /* renamed from: d, reason: collision with root package name */
    public static final t6.c f12286d;

    /* renamed from: e, reason: collision with root package name */
    public static final t6.c f12287e;
    public static final t6.c f;

    static {
        l1 l1Var = l1.DEFAULT;
        f12284b = new t6.c("inferenceCommonLogEvent", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(1, l1Var))));
        f12285c = new t6.c("options", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(2, l1Var))));
        f12286d = new t6.c("detectedBarcodeFormats", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(3, l1Var))));
        f12287e = new t6.c("detectedBarcodeValueTypes", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(4, l1Var))));
        f = new t6.c("imageInfo", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(5, l1Var))));
    }

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        c8 c8Var = (c8) obj;
        t6.e eVar2 = eVar;
        eVar2.a(f12284b, c8Var.f12291a);
        eVar2.a(f12285c, c8Var.f12292b);
        eVar2.a(f12286d, c8Var.f12293c);
        eVar2.a(f12287e, c8Var.f12294d);
        eVar2.a(f, c8Var.f12295e);
    }
}
