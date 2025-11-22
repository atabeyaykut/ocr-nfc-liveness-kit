package rc;

import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: n, reason: collision with root package name */
    public static final c f14410n;

    /* renamed from: o, reason: collision with root package name */
    public static final c f14411o;

    /* renamed from: p, reason: collision with root package name */
    public static final b f14412p = new b();

    /* renamed from: a, reason: collision with root package name */
    public final boolean f14413a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f14414b;

    /* renamed from: c, reason: collision with root package name */
    public final int f14415c;

    /* renamed from: d, reason: collision with root package name */
    public final int f14416d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f14417e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f14418g;

    /* renamed from: h, reason: collision with root package name */
    public final int f14419h;

    /* renamed from: i, reason: collision with root package name */
    public final int f14420i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f14421j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f14422k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f14423l;

    /* renamed from: m, reason: collision with root package name */
    public String f14424m;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public boolean f14425a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f14426b;

        /* renamed from: c, reason: collision with root package name */
        public final int f14427c = -1;

        /* renamed from: d, reason: collision with root package name */
        public int f14428d = -1;

        /* renamed from: e, reason: collision with root package name */
        public final int f14429e = -1;
        public boolean f;

        public final c a() {
            return new c(this.f14425a, this.f14426b, this.f14427c, -1, false, false, false, this.f14428d, this.f14429e, this.f, false, false, null);
        }
    }

    public static final class b {
        /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static rc.c a(rc.q r25) {
            /*
                Method dump skipped, instructions count: 449
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: rc.c.b.a(rc.q):rc.c");
        }
    }

    static {
        a aVar = new a();
        aVar.f14425a = true;
        f14410n = aVar.a();
        a aVar2 = new a();
        aVar2.f = true;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        kotlin.jvm.internal.h.f(timeUnit, "timeUnit");
        long j10 = Integer.MAX_VALUE;
        long seconds = timeUnit.toSeconds(j10);
        aVar2.f14428d = seconds <= j10 ? (int) seconds : Integer.MAX_VALUE;
        f14411o = aVar2.a();
    }

    public c(boolean z10, boolean z11, int r32, int r42, boolean z12, boolean z13, boolean z14, int r82, int r92, boolean z15, boolean z16, boolean z17, String str) {
        this.f14413a = z10;
        this.f14414b = z11;
        this.f14415c = r32;
        this.f14416d = r42;
        this.f14417e = z12;
        this.f = z13;
        this.f14418g = z14;
        this.f14419h = r82;
        this.f14420i = r92;
        this.f14421j = z15;
        this.f14422k = z16;
        this.f14423l = z17;
        this.f14424m = str;
    }

    public final String toString() {
        String str = this.f14424m;
        if (str != null) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.f14413a) {
            sb2.append("no-cache, ");
        }
        if (this.f14414b) {
            sb2.append("no-store, ");
        }
        int r12 = this.f14415c;
        if (r12 != -1) {
            sb2.append("max-age=");
            sb2.append(r12);
            sb2.append(", ");
        }
        int r13 = this.f14416d;
        if (r13 != -1) {
            sb2.append("s-maxage=");
            sb2.append(r13);
            sb2.append(", ");
        }
        if (this.f14417e) {
            sb2.append("private, ");
        }
        if (this.f) {
            sb2.append("public, ");
        }
        if (this.f14418g) {
            sb2.append("must-revalidate, ");
        }
        int r14 = this.f14419h;
        if (r14 != -1) {
            sb2.append("max-stale=");
            sb2.append(r14);
            sb2.append(", ");
        }
        int r15 = this.f14420i;
        if (r15 != -1) {
            sb2.append("min-fresh=");
            sb2.append(r15);
            sb2.append(", ");
        }
        if (this.f14421j) {
            sb2.append("only-if-cached, ");
        }
        if (this.f14422k) {
            sb2.append("no-transform, ");
        }
        if (this.f14423l) {
            sb2.append("immutable, ");
        }
        if (sb2.length() == 0) {
            return "";
        }
        sb2.delete(sb2.length() - 2, sb2.length());
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
        this.f14424m = string;
        return string;
    }
}
