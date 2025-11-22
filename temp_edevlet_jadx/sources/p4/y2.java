package p4;

import java.io.IOException;

/* loaded from: classes.dex */
public final class y2 implements t6.d<a2> {

    /* renamed from: a, reason: collision with root package name */
    public static final y2 f12778a = new y2();

    /* renamed from: b, reason: collision with root package name */
    public static final t6.c f12779b;

    /* renamed from: c, reason: collision with root package name */
    public static final t6.c f12780c;

    /* renamed from: d, reason: collision with root package name */
    public static final t6.c f12781d;

    /* renamed from: e, reason: collision with root package name */
    public static final t6.c f12782e;
    public static final t6.c f;

    /* renamed from: g, reason: collision with root package name */
    public static final t6.c f12783g;

    /* renamed from: h, reason: collision with root package name */
    public static final t6.c f12784h;

    static {
        l1 l1Var = l1.DEFAULT;
        f12779b = new t6.c("errorCode", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(1, l1Var))));
        f12780c = new t6.c("hasResult", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(2, l1Var))));
        f12781d = new t6.c("isColdCall", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(3, l1Var))));
        f12782e = new t6.c("imageInfo", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(4, l1Var))));
        f = new t6.c("options", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(5, l1Var))));
        f12783g = new t6.c("detectedBarcodeFormats", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(6, l1Var))));
        f12784h = new t6.c("detectedBarcodeValueTypes", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(7, l1Var))));
    }

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        a2 a2Var = (a2) obj;
        t6.e eVar2 = eVar;
        eVar2.a(f12779b, a2Var.f12242a);
        eVar2.a(f12780c, null);
        eVar2.a(f12781d, a2Var.f12243b);
        eVar2.a(f12782e, null);
        eVar2.a(f, a2Var.f12244c);
        eVar2.a(f12783g, a2Var.f12245d);
        eVar2.a(f12784h, a2Var.f12246e);
    }
}
