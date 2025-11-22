package s4;

import java.io.IOException;

/* loaded from: classes.dex */
public final class w2 implements t6.d<a2> {

    /* renamed from: a, reason: collision with root package name */
    public static final w2 f15206a = new w2();

    /* renamed from: b, reason: collision with root package name */
    public static final t6.c f15207b;

    /* renamed from: c, reason: collision with root package name */
    public static final t6.c f15208c;

    /* renamed from: d, reason: collision with root package name */
    public static final t6.c f15209d;

    static {
        y0 y0Var = y0.DEFAULT;
        f15207b = new t6.c("logEventKey", androidx.appcompat.graphics.drawable.a.i(ab.b.h(z0.class, new v0(1, y0Var))));
        f15208c = new t6.c("eventCount", androidx.appcompat.graphics.drawable.a.i(ab.b.h(z0.class, new v0(2, y0Var))));
        f15209d = new t6.c("inferenceDurationStats", androidx.appcompat.graphics.drawable.a.i(ab.b.h(z0.class, new v0(3, y0Var))));
    }

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        a2 a2Var = (a2) obj;
        t6.e eVar2 = eVar;
        eVar2.a(f15207b, a2Var.f14875a);
        eVar2.a(f15208c, a2Var.f14876b);
        eVar2.a(f15209d, a2Var.f14877c);
    }
}
