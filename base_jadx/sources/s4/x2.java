package s4;

import java.io.IOException;

/* loaded from: classes.dex */
public final class x2 implements t6.d<z1> {

    /* renamed from: a, reason: collision with root package name */
    public static final x2 f15224a = new x2();

    /* renamed from: b, reason: collision with root package name */
    public static final t6.c f15225b;

    /* renamed from: c, reason: collision with root package name */
    public static final t6.c f15226c;

    /* renamed from: d, reason: collision with root package name */
    public static final t6.c f15227d;

    /* renamed from: e, reason: collision with root package name */
    public static final t6.c f15228e;

    static {
        y0 y0Var = y0.DEFAULT;
        f15225b = new t6.c("errorCode", androidx.appcompat.graphics.drawable.a.i(ab.b.h(z0.class, new v0(1, y0Var))));
        f15226c = new t6.c("hasResult", androidx.appcompat.graphics.drawable.a.i(ab.b.h(z0.class, new v0(2, y0Var))));
        f15227d = new t6.c("isColdCall", androidx.appcompat.graphics.drawable.a.i(ab.b.h(z0.class, new v0(3, y0Var))));
        f15228e = new t6.c("imageInfo", androidx.appcompat.graphics.drawable.a.i(ab.b.h(z0.class, new v0(4, y0Var))));
    }

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        z1 z1Var = (z1) obj;
        t6.e eVar2 = eVar;
        eVar2.a(f15225b, z1Var.f15260a);
        eVar2.a(f15226c, null);
        eVar2.a(f15227d, z1Var.f15261b);
        eVar2.a(f15228e, null);
    }
}
