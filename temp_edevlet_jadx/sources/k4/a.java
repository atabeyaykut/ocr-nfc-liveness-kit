package k4;

import androidx.core.app.NotificationCompat;
import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class a implements t6.d<h7.a> {

    /* renamed from: a, reason: collision with root package name */
    public static final a f8724a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final t6.c f8725b;

    /* renamed from: c, reason: collision with root package name */
    public static final t6.c f8726c;

    /* renamed from: d, reason: collision with root package name */
    public static final t6.c f8727d;

    /* renamed from: e, reason: collision with root package name */
    public static final t6.c f8728e;
    public static final t6.c f;

    /* renamed from: g, reason: collision with root package name */
    public static final t6.c f8729g;

    /* renamed from: h, reason: collision with root package name */
    public static final t6.c f8730h;

    /* renamed from: i, reason: collision with root package name */
    public static final t6.c f8731i;

    /* renamed from: j, reason: collision with root package name */
    public static final t6.c f8732j;

    /* renamed from: k, reason: collision with root package name */
    public static final t6.c f8733k;

    /* renamed from: l, reason: collision with root package name */
    public static final t6.c f8734l;

    /* renamed from: m, reason: collision with root package name */
    public static final t6.c f8735m;

    /* renamed from: n, reason: collision with root package name */
    public static final t6.c f8736n;

    /* renamed from: o, reason: collision with root package name */
    public static final t6.c f8737o;

    /* renamed from: p, reason: collision with root package name */
    public static final t6.c f8738p;

    static {
        i iVar = new i(1);
        HashMap map = new HashMap();
        map.put(m.class, iVar);
        f8725b = new t6.c("projectNumber", androidx.appcompat.graphics.drawable.a.i(map));
        i iVar2 = new i(2);
        HashMap map2 = new HashMap();
        map2.put(m.class, iVar2);
        f8726c = new t6.c("messageId", androidx.appcompat.graphics.drawable.a.i(map2));
        i iVar3 = new i(3);
        HashMap map3 = new HashMap();
        map3.put(m.class, iVar3);
        f8727d = new t6.c("instanceId", androidx.appcompat.graphics.drawable.a.i(map3));
        i iVar4 = new i(4);
        HashMap map4 = new HashMap();
        map4.put(m.class, iVar4);
        f8728e = new t6.c("messageType", androidx.appcompat.graphics.drawable.a.i(map4));
        i iVar5 = new i(5);
        HashMap map5 = new HashMap();
        map5.put(m.class, iVar5);
        f = new t6.c("sdkPlatform", androidx.appcompat.graphics.drawable.a.i(map5));
        i iVar6 = new i(6);
        HashMap map6 = new HashMap();
        map6.put(m.class, iVar6);
        f8729g = new t6.c("packageName", androidx.appcompat.graphics.drawable.a.i(map6));
        i iVar7 = new i(7);
        HashMap map7 = new HashMap();
        map7.put(m.class, iVar7);
        f8730h = new t6.c("collapseKey", androidx.appcompat.graphics.drawable.a.i(map7));
        i iVar8 = new i(8);
        HashMap map8 = new HashMap();
        map8.put(m.class, iVar8);
        f8731i = new t6.c("priority", androidx.appcompat.graphics.drawable.a.i(map8));
        i iVar9 = new i(9);
        HashMap map9 = new HashMap();
        map9.put(m.class, iVar9);
        f8732j = new t6.c("ttl", androidx.appcompat.graphics.drawable.a.i(map9));
        i iVar10 = new i(10);
        HashMap map10 = new HashMap();
        map10.put(m.class, iVar10);
        f8733k = new t6.c("topic", androidx.appcompat.graphics.drawable.a.i(map10));
        i iVar11 = new i(11);
        HashMap map11 = new HashMap();
        map11.put(m.class, iVar11);
        f8734l = new t6.c("bulkId", androidx.appcompat.graphics.drawable.a.i(map11));
        i iVar12 = new i(12);
        HashMap map12 = new HashMap();
        map12.put(m.class, iVar12);
        f8735m = new t6.c(NotificationCompat.CATEGORY_EVENT, androidx.appcompat.graphics.drawable.a.i(map12));
        i iVar13 = new i(13);
        HashMap map13 = new HashMap();
        map13.put(m.class, iVar13);
        f8736n = new t6.c("analyticsLabel", androidx.appcompat.graphics.drawable.a.i(map13));
        i iVar14 = new i(14);
        HashMap map14 = new HashMap();
        map14.put(m.class, iVar14);
        f8737o = new t6.c("campaignId", androidx.appcompat.graphics.drawable.a.i(map14));
        i iVar15 = new i(15);
        HashMap map15 = new HashMap();
        map15.put(m.class, iVar15);
        f8738p = new t6.c("composerLabel", androidx.appcompat.graphics.drawable.a.i(map15));
    }

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        h7.a aVar = (h7.a) obj;
        t6.e eVar2 = eVar;
        eVar2.d(f8725b, aVar.f6997a);
        eVar2.a(f8726c, aVar.f6998b);
        eVar2.a(f8727d, aVar.f6999c);
        eVar2.a(f8728e, aVar.f7000d);
        eVar2.a(f, aVar.f7001e);
        eVar2.a(f8729g, aVar.f);
        eVar2.a(f8730h, aVar.f7002g);
        eVar2.c(f8731i, aVar.f7003h);
        eVar2.c(f8732j, aVar.f7004i);
        eVar2.a(f8733k, aVar.f7005j);
        eVar2.d(f8734l, aVar.f7006k);
        eVar2.a(f8735m, aVar.f7007l);
        eVar2.a(f8736n, aVar.f7008m);
        eVar2.d(f8737o, aVar.f7009n);
        eVar2.a(f8738p, aVar.f7010o);
    }
}
