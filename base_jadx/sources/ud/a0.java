package ud;

import java.io.IOException;
import java.util.ArrayList;
import java.util.regex.Pattern;
import org.bouncycastle.math.Primes;
import rc.o;
import rc.q;
import rc.r;
import rc.t;
import rc.u;
import rc.x;

/* loaded from: classes2.dex */
public final class a0 {

    /* renamed from: l, reason: collision with root package name */
    public static final char[] f17945l = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: m, reason: collision with root package name */
    public static final Pattern f17946m = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");

    /* renamed from: a, reason: collision with root package name */
    public final String f17947a;

    /* renamed from: b, reason: collision with root package name */
    public final rc.r f17948b;

    /* renamed from: c, reason: collision with root package name */
    public String f17949c;

    /* renamed from: d, reason: collision with root package name */
    public r.a f17950d;

    /* renamed from: e, reason: collision with root package name */
    public final x.a f17951e = new x.a();
    public final q.a f;

    /* renamed from: g, reason: collision with root package name */
    public rc.t f17952g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f17953h;

    /* renamed from: i, reason: collision with root package name */
    public final u.a f17954i;

    /* renamed from: j, reason: collision with root package name */
    public final o.a f17955j;

    /* renamed from: k, reason: collision with root package name */
    public rc.a0 f17956k;

    public static class a extends rc.a0 {

        /* renamed from: b, reason: collision with root package name */
        public final rc.a0 f17957b;

        /* renamed from: c, reason: collision with root package name */
        public final rc.t f17958c;

        public a(rc.a0 a0Var, rc.t tVar) {
            this.f17957b = a0Var;
            this.f17958c = tVar;
        }

        @Override // rc.a0
        public final long a() throws IOException {
            return this.f17957b.a();
        }

        @Override // rc.a0
        public final rc.t b() {
            return this.f17958c;
        }

        @Override // rc.a0
        public final void c(ed.f fVar) throws IOException {
            this.f17957b.c(fVar);
        }
    }

    public a0(String str, rc.r rVar, String str2, rc.q qVar, rc.t tVar, boolean z10, boolean z11, boolean z12) {
        this.f17947a = str;
        this.f17948b = rVar;
        this.f17949c = str2;
        this.f17952g = tVar;
        this.f17953h = z10;
        this.f = qVar != null ? qVar.u() : new q.a();
        if (z11) {
            this.f17955j = new o.a();
            return;
        }
        if (z12) {
            u.a aVar = new u.a();
            this.f17954i = aVar;
            rc.t type = rc.u.f14537g;
            kotlin.jvm.internal.h.f(type, "type");
            if (kotlin.jvm.internal.h.a(type.f14535b, "multipart")) {
                aVar.f14546b = type;
            } else {
                throw new IllegalArgumentException(("multipart != " + type).toString());
            }
        }
    }

    public final void a(String name, String str, boolean z10) {
        o.a aVar = this.f17955j;
        aVar.getClass();
        ArrayList arrayList = aVar.f14502b;
        ArrayList arrayList2 = aVar.f14501a;
        if (z10) {
            kotlin.jvm.internal.h.f(name, "name");
            r.b bVar = rc.r.f14515l;
            arrayList2.add(r.b.a(bVar, name, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, false, aVar.f14503c, 83));
            arrayList.add(r.b.a(bVar, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, false, aVar.f14503c, 83));
            return;
        }
        kotlin.jvm.internal.h.f(name, "name");
        r.b bVar2 = rc.r.f14515l;
        arrayList2.add(r.b.a(bVar2, name, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, aVar.f14503c, 91));
        arrayList.add(r.b.a(bVar2, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, aVar.f14503c, 91));
    }

    public final void b(String str, String str2) {
        if (!"Content-Type".equalsIgnoreCase(str)) {
            this.f.a(str, str2);
            return;
        }
        try {
            rc.t.f.getClass();
            this.f17952g = t.a.a(str2);
        } catch (IllegalArgumentException e10) {
            throw new IllegalArgumentException(androidx.browser.browseractions.b.e("Malformed content type: ", str2), e10);
        }
    }

    public final void c(rc.q qVar, rc.a0 body) {
        u.a aVar = this.f17954i;
        aVar.getClass();
        kotlin.jvm.internal.h.f(body, "body");
        if (!((qVar != null ? qVar.l("Content-Type") : null) == null)) {
            throw new IllegalArgumentException("Unexpected header: Content-Type".toString());
        }
        if (!((qVar != null ? qVar.l("Content-Length") : null) == null)) {
            throw new IllegalArgumentException("Unexpected header: Content-Length".toString());
        }
        aVar.f14547c.add(new u.b(qVar, body));
    }

    public final void d(String name, String str, boolean z10) {
        r.a aVar;
        String str2 = this.f17949c;
        if (str2 != null) {
            rc.r rVar = this.f17948b;
            rVar.getClass();
            try {
                aVar = new r.a();
                aVar.c(rVar, str2);
            } catch (IllegalArgumentException unused) {
                aVar = null;
            }
            this.f17950d = aVar;
            if (aVar == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + rVar + ", Relative: " + this.f17949c);
            }
            this.f17949c = null;
        }
        r.a aVar2 = this.f17950d;
        aVar2.getClass();
        if (z10) {
            kotlin.jvm.internal.h.f(name, "encodedName");
            if (aVar2.f14530g == null) {
                aVar2.f14530g = new ArrayList();
            }
            ArrayList arrayList = aVar2.f14530g;
            kotlin.jvm.internal.h.c(arrayList);
            r.b bVar = rc.r.f14515l;
            arrayList.add(r.b.a(bVar, name, 0, 0, " \"'<>#&=", true, false, true, false, null, Primes.SMALL_FACTOR_LIMIT));
            ArrayList arrayList2 = aVar2.f14530g;
            kotlin.jvm.internal.h.c(arrayList2);
            arrayList2.add(str != null ? r.b.a(bVar, str, 0, 0, " \"'<>#&=", true, false, true, false, null, Primes.SMALL_FACTOR_LIMIT) : null);
            return;
        }
        kotlin.jvm.internal.h.f(name, "name");
        if (aVar2.f14530g == null) {
            aVar2.f14530g = new ArrayList();
        }
        ArrayList arrayList3 = aVar2.f14530g;
        kotlin.jvm.internal.h.c(arrayList3);
        r.b bVar2 = rc.r.f14515l;
        arrayList3.add(r.b.a(bVar2, name, 0, 0, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, false, null, 219));
        ArrayList arrayList4 = aVar2.f14530g;
        kotlin.jvm.internal.h.c(arrayList4);
        arrayList4.add(str != null ? r.b.a(bVar2, str, 0, 0, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, false, null, 219) : null);
    }
}
