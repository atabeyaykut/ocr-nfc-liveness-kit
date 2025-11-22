package p4;

import java.io.IOException;

/* loaded from: classes.dex */
public final class x2 implements t6.d<b2> {

    /* renamed from: a, reason: collision with root package name */
    public static final x2 f12763a = new x2();

    /* renamed from: b, reason: collision with root package name */
    public static final t6.c f12764b;

    /* renamed from: c, reason: collision with root package name */
    public static final t6.c f12765c;

    /* renamed from: d, reason: collision with root package name */
    public static final t6.c f12766d;

    static {
        l1 l1Var = l1.DEFAULT;
        f12764b = new t6.c("logEventKey", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(1, l1Var))));
        f12765c = new t6.c("eventCount", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(2, l1Var))));
        f12766d = new t6.c("inferenceDurationStats", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(3, l1Var))));
    }

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        b2 b2Var = (b2) obj;
        t6.e eVar2 = eVar;
        eVar2.a(f12764b, b2Var.f12266a);
        eVar2.a(f12765c, b2Var.f12267b);
        eVar2.a(f12766d, b2Var.f12268c);
    }
}
