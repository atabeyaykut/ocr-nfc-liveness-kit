package t2;

import java.io.IOException;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final b f15562a = new b();

    public static final class a implements t6.d<t2.a> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f15563a = new a();

        /* renamed from: b, reason: collision with root package name */
        public static final t6.c f15564b = t6.c.b("sdkVersion");

        /* renamed from: c, reason: collision with root package name */
        public static final t6.c f15565c = t6.c.b("model");

        /* renamed from: d, reason: collision with root package name */
        public static final t6.c f15566d = t6.c.b("hardware");

        /* renamed from: e, reason: collision with root package name */
        public static final t6.c f15567e = t6.c.b("device");
        public static final t6.c f = t6.c.b("product");

        /* renamed from: g, reason: collision with root package name */
        public static final t6.c f15568g = t6.c.b("osBuild");

        /* renamed from: h, reason: collision with root package name */
        public static final t6.c f15569h = t6.c.b("manufacturer");

        /* renamed from: i, reason: collision with root package name */
        public static final t6.c f15570i = t6.c.b("fingerprint");

        /* renamed from: j, reason: collision with root package name */
        public static final t6.c f15571j = t6.c.b("locale");

        /* renamed from: k, reason: collision with root package name */
        public static final t6.c f15572k = t6.c.b("country");

        /* renamed from: l, reason: collision with root package name */
        public static final t6.c f15573l = t6.c.b("mccMnc");

        /* renamed from: m, reason: collision with root package name */
        public static final t6.c f15574m = t6.c.b("applicationBuild");

        @Override // t6.a
        public final void a(Object obj, t6.e eVar) throws IOException {
            t2.a aVar = (t2.a) obj;
            t6.e eVar2 = eVar;
            eVar2.a(f15564b, aVar.l());
            eVar2.a(f15565c, aVar.i());
            eVar2.a(f15566d, aVar.e());
            eVar2.a(f15567e, aVar.c());
            eVar2.a(f, aVar.k());
            eVar2.a(f15568g, aVar.j());
            eVar2.a(f15569h, aVar.g());
            eVar2.a(f15570i, aVar.d());
            eVar2.a(f15571j, aVar.f());
            eVar2.a(f15572k, aVar.b());
            eVar2.a(f15573l, aVar.h());
            eVar2.a(f15574m, aVar.a());
        }
    }

    /* renamed from: t2.b$b, reason: collision with other inner class name */
    public static final class C0252b implements t6.d<j> {

        /* renamed from: a, reason: collision with root package name */
        public static final C0252b f15575a = new C0252b();

        /* renamed from: b, reason: collision with root package name */
        public static final t6.c f15576b = t6.c.b("logRequest");

        @Override // t6.a
        public final void a(Object obj, t6.e eVar) throws IOException {
            eVar.a(f15576b, ((j) obj).a());
        }
    }

    public static final class c implements t6.d<k> {

        /* renamed from: a, reason: collision with root package name */
        public static final c f15577a = new c();

        /* renamed from: b, reason: collision with root package name */
        public static final t6.c f15578b = t6.c.b("clientType");

        /* renamed from: c, reason: collision with root package name */
        public static final t6.c f15579c = t6.c.b("androidClientInfo");

        @Override // t6.a
        public final void a(Object obj, t6.e eVar) throws IOException {
            k kVar = (k) obj;
            t6.e eVar2 = eVar;
            eVar2.a(f15578b, kVar.b());
            eVar2.a(f15579c, kVar.a());
        }
    }

    public static final class d implements t6.d<l> {

        /* renamed from: a, reason: collision with root package name */
        public static final d f15580a = new d();

        /* renamed from: b, reason: collision with root package name */
        public static final t6.c f15581b = t6.c.b("eventTimeMs");

        /* renamed from: c, reason: collision with root package name */
        public static final t6.c f15582c = t6.c.b("eventCode");

        /* renamed from: d, reason: collision with root package name */
        public static final t6.c f15583d = t6.c.b("eventUptimeMs");

        /* renamed from: e, reason: collision with root package name */
        public static final t6.c f15584e = t6.c.b("sourceExtension");
        public static final t6.c f = t6.c.b("sourceExtensionJsonProto3");

        /* renamed from: g, reason: collision with root package name */
        public static final t6.c f15585g = t6.c.b("timezoneOffsetSeconds");

        /* renamed from: h, reason: collision with root package name */
        public static final t6.c f15586h = t6.c.b("networkConnectionInfo");

        @Override // t6.a
        public final void a(Object obj, t6.e eVar) throws IOException {
            l lVar = (l) obj;
            t6.e eVar2 = eVar;
            eVar2.d(f15581b, lVar.b());
            eVar2.a(f15582c, lVar.a());
            eVar2.d(f15583d, lVar.c());
            eVar2.a(f15584e, lVar.e());
            eVar2.a(f, lVar.f());
            eVar2.d(f15585g, lVar.g());
            eVar2.a(f15586h, lVar.d());
        }
    }

    public static final class e implements t6.d<m> {

        /* renamed from: a, reason: collision with root package name */
        public static final e f15587a = new e();

        /* renamed from: b, reason: collision with root package name */
        public static final t6.c f15588b = t6.c.b("requestTimeMs");

        /* renamed from: c, reason: collision with root package name */
        public static final t6.c f15589c = t6.c.b("requestUptimeMs");

        /* renamed from: d, reason: collision with root package name */
        public static final t6.c f15590d = t6.c.b("clientInfo");

        /* renamed from: e, reason: collision with root package name */
        public static final t6.c f15591e = t6.c.b("logSource");
        public static final t6.c f = t6.c.b("logSourceName");

        /* renamed from: g, reason: collision with root package name */
        public static final t6.c f15592g = t6.c.b("logEvent");

        /* renamed from: h, reason: collision with root package name */
        public static final t6.c f15593h = t6.c.b("qosTier");

        @Override // t6.a
        public final void a(Object obj, t6.e eVar) throws IOException {
            m mVar = (m) obj;
            t6.e eVar2 = eVar;
            eVar2.d(f15588b, mVar.f());
            eVar2.d(f15589c, mVar.g());
            eVar2.a(f15590d, mVar.a());
            eVar2.a(f15591e, mVar.c());
            eVar2.a(f, mVar.d());
            eVar2.a(f15592g, mVar.b());
            eVar2.a(f15593h, mVar.e());
        }
    }

    public static final class f implements t6.d<o> {

        /* renamed from: a, reason: collision with root package name */
        public static final f f15594a = new f();

        /* renamed from: b, reason: collision with root package name */
        public static final t6.c f15595b = t6.c.b("networkType");

        /* renamed from: c, reason: collision with root package name */
        public static final t6.c f15596c = t6.c.b("mobileSubtype");

        @Override // t6.a
        public final void a(Object obj, t6.e eVar) throws IOException {
            o oVar = (o) obj;
            t6.e eVar2 = eVar;
            eVar2.a(f15595b, oVar.b());
            eVar2.a(f15596c, oVar.a());
        }
    }

    public final void a(u6.a<?> aVar) {
        C0252b c0252b = C0252b.f15575a;
        v6.e eVar = (v6.e) aVar;
        eVar.a(j.class, c0252b);
        eVar.a(t2.d.class, c0252b);
        e eVar2 = e.f15587a;
        eVar.a(m.class, eVar2);
        eVar.a(g.class, eVar2);
        c cVar = c.f15577a;
        eVar.a(k.class, cVar);
        eVar.a(t2.e.class, cVar);
        a aVar2 = a.f15563a;
        eVar.a(t2.a.class, aVar2);
        eVar.a(t2.c.class, aVar2);
        d dVar = d.f15580a;
        eVar.a(l.class, dVar);
        eVar.a(t2.f.class, dVar);
        f fVar = f.f15594a;
        eVar.a(o.class, fVar);
        eVar.a(i.class, fVar);
    }
}
