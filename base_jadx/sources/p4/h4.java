package p4;

import java.io.IOException;

/* loaded from: classes.dex */
public final class h4 implements t6.d<z6> {

    /* renamed from: a, reason: collision with root package name */
    public static final h4 f12381a = new h4();

    /* renamed from: b, reason: collision with root package name */
    public static final t6.c f12382b;

    /* renamed from: c, reason: collision with root package name */
    public static final t6.c f12383c;

    /* renamed from: d, reason: collision with root package name */
    public static final t6.c f12384d;

    /* renamed from: e, reason: collision with root package name */
    public static final t6.c f12385e;
    public static final t6.c f;

    /* renamed from: g, reason: collision with root package name */
    public static final t6.c f12386g;

    static {
        l1 l1Var = l1.DEFAULT;
        f12382b = new t6.c("maxMs", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(1, l1Var))));
        f12383c = new t6.c("minMs", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(2, l1Var))));
        f12384d = new t6.c("avgMs", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(3, l1Var))));
        f12385e = new t6.c("firstQuartileMs", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(4, l1Var))));
        f = new t6.c("medianMs", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(5, l1Var))));
        f12386g = new t6.c("thirdQuartileMs", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(6, l1Var))));
    }

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        z6 z6Var = (z6) obj;
        t6.e eVar2 = eVar;
        eVar2.a(f12382b, z6Var.f12806a);
        eVar2.a(f12383c, z6Var.f12807b);
        eVar2.a(f12384d, z6Var.f12808c);
        eVar2.a(f12385e, z6Var.f12809d);
        eVar2.a(f, z6Var.f12810e);
        eVar2.a(f12386g, z6Var.f);
    }
}
