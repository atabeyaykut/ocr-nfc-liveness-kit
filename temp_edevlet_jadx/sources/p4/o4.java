package p4;

import java.io.IOException;

/* loaded from: classes.dex */
public final class o4 implements t6.d<h7> {

    /* renamed from: a, reason: collision with root package name */
    public static final o4 f12540a = new o4();

    /* renamed from: b, reason: collision with root package name */
    public static final t6.c f12541b;

    /* renamed from: c, reason: collision with root package name */
    public static final t6.c f12542c;

    /* renamed from: d, reason: collision with root package name */
    public static final t6.c f12543d;

    /* renamed from: e, reason: collision with root package name */
    public static final t6.c f12544e;
    public static final t6.c f;

    /* renamed from: g, reason: collision with root package name */
    public static final t6.c f12545g;

    /* renamed from: h, reason: collision with root package name */
    public static final t6.c f12546h;

    /* renamed from: i, reason: collision with root package name */
    public static final t6.c f12547i;

    /* renamed from: j, reason: collision with root package name */
    public static final t6.c f12548j;

    /* renamed from: k, reason: collision with root package name */
    public static final t6.c f12549k;

    static {
        l1 l1Var = l1.DEFAULT;
        f12541b = new t6.c("durationMs", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(1, l1Var))));
        f12542c = new t6.c("errorCode", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(2, l1Var))));
        f12543d = new t6.c("isColdCall", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(3, l1Var))));
        f12544e = new t6.c("autoManageModelOnBackground", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(4, l1Var))));
        f = new t6.c("autoManageModelOnLowMemory", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(5, l1Var))));
        f12545g = new t6.c("isNnApiEnabled", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(6, l1Var))));
        f12546h = new t6.c("eventsCount", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(7, l1Var))));
        f12547i = new t6.c("otherErrors", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(8, l1Var))));
        f12548j = new t6.c("remoteConfigValueForAcceleration", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(9, l1Var))));
        f12549k = new t6.c("isAccelerated", androidx.appcompat.graphics.drawable.a.i(androidx.room.util.a.f(n1.class, new h1(10, l1Var))));
    }

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        h7 h7Var = (h7) obj;
        t6.e eVar2 = eVar;
        eVar2.a(f12541b, h7Var.f12388a);
        eVar2.a(f12542c, h7Var.f12389b);
        eVar2.a(f12543d, h7Var.f12390c);
        eVar2.a(f12544e, h7Var.f12391d);
        eVar2.a(f, h7Var.f12392e);
        eVar2.a(f12545g, null);
        eVar2.a(f12546h, null);
        eVar2.a(f12547i, null);
        eVar2.a(f12548j, null);
        eVar2.a(f12549k, null);
    }
}
