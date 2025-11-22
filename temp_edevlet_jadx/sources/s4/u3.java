package s4;

import java.io.IOException;

/* loaded from: classes.dex */
public final class u3 implements t6.d<m6> {

    /* renamed from: a, reason: collision with root package name */
    public static final u3 f15184a = new u3();

    /* renamed from: b, reason: collision with root package name */
    public static final t6.c f15185b;

    /* renamed from: c, reason: collision with root package name */
    public static final t6.c f15186c;

    /* renamed from: d, reason: collision with root package name */
    public static final t6.c f15187d;

    /* renamed from: e, reason: collision with root package name */
    public static final t6.c f15188e;
    public static final t6.c f;

    /* renamed from: g, reason: collision with root package name */
    public static final t6.c f15189g;

    static {
        y0 y0Var = y0.DEFAULT;
        f15185b = new t6.c("maxMs", androidx.appcompat.graphics.drawable.a.i(ab.b.h(z0.class, new v0(1, y0Var))));
        f15186c = new t6.c("minMs", androidx.appcompat.graphics.drawable.a.i(ab.b.h(z0.class, new v0(2, y0Var))));
        f15187d = new t6.c("avgMs", androidx.appcompat.graphics.drawable.a.i(ab.b.h(z0.class, new v0(3, y0Var))));
        f15188e = new t6.c("firstQuartileMs", androidx.appcompat.graphics.drawable.a.i(ab.b.h(z0.class, new v0(4, y0Var))));
        f = new t6.c("medianMs", androidx.appcompat.graphics.drawable.a.i(ab.b.h(z0.class, new v0(5, y0Var))));
        f15189g = new t6.c("thirdQuartileMs", androidx.appcompat.graphics.drawable.a.i(ab.b.h(z0.class, new v0(6, y0Var))));
    }

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        m6 m6Var = (m6) obj;
        t6.e eVar2 = eVar;
        eVar2.a(f15185b, m6Var.f15081a);
        eVar2.a(f15186c, m6Var.f15082b);
        eVar2.a(f15187d, m6Var.f15083c);
        eVar2.a(f15188e, m6Var.f15084d);
        eVar2.a(f, m6Var.f15085e);
        eVar2.a(f15189g, m6Var.f);
    }
}
