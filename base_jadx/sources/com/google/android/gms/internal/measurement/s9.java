package com.google.android.gms.internal.measurement;

import androidx.lifecycle.CoroutineLiveDataKt;
import androidx.work.WorkRequest;

/* loaded from: classes.dex */
public final class s9 implements r9 {
    public static final v4 A;
    public static final v4 B;
    public static final v4 C;
    public static final v4 D;
    public static final v4 E;
    public static final v4 F;
    public static final v4 G;
    public static final y4 H;
    public static final v4 I;

    /* renamed from: a, reason: collision with root package name */
    public static final v4 f3740a;

    /* renamed from: b, reason: collision with root package name */
    public static final v4 f3741b;

    /* renamed from: c, reason: collision with root package name */
    public static final v4 f3742c;

    /* renamed from: d, reason: collision with root package name */
    public static final y4 f3743d;

    /* renamed from: e, reason: collision with root package name */
    public static final y4 f3744e;
    public static final v4 f;

    /* renamed from: g, reason: collision with root package name */
    public static final v4 f3745g;

    /* renamed from: h, reason: collision with root package name */
    public static final v4 f3746h;

    /* renamed from: i, reason: collision with root package name */
    public static final v4 f3747i;

    /* renamed from: j, reason: collision with root package name */
    public static final v4 f3748j;

    /* renamed from: k, reason: collision with root package name */
    public static final v4 f3749k;

    /* renamed from: l, reason: collision with root package name */
    public static final v4 f3750l;

    /* renamed from: m, reason: collision with root package name */
    public static final v4 f3751m;

    /* renamed from: n, reason: collision with root package name */
    public static final v4 f3752n;

    /* renamed from: o, reason: collision with root package name */
    public static final v4 f3753o;

    /* renamed from: p, reason: collision with root package name */
    public static final v4 f3754p;

    /* renamed from: q, reason: collision with root package name */
    public static final v4 f3755q;

    /* renamed from: r, reason: collision with root package name */
    public static final v4 f3756r;

    /* renamed from: s, reason: collision with root package name */
    public static final v4 f3757s;

    /* renamed from: t, reason: collision with root package name */
    public static final v4 f3758t;

    /* renamed from: u, reason: collision with root package name */
    public static final v4 f3759u;

    /* renamed from: v, reason: collision with root package name */
    public static final v4 f3760v;
    public static final v4 w;

    /* renamed from: x, reason: collision with root package name */
    public static final v4 f3761x;

    /* renamed from: y, reason: collision with root package name */
    public static final v4 f3762y;

    /* renamed from: z, reason: collision with root package name */
    public static final v4 f3763z;

    static {
        z4 z4Var = new z4(u4.a(), false);
        f3740a = z4Var.a(WorkRequest.MIN_BACKOFF_MILLIS, "measurement.ad_id_cache_time");
        f3741b = z4Var.a(100L, "measurement.max_bundles_per_iteration");
        f3742c = z4Var.a(86400000L, "measurement.config.cache_time");
        z4Var.b("measurement.log_tag", "FA");
        f3743d = new y4(z4Var, "measurement.config.url_authority", "app-measurement.com");
        f3744e = new y4(z4Var, "measurement.config.url_scheme", "https");
        f = z4Var.a(1000L, "measurement.upload.debug_upload_interval");
        f3745g = z4Var.a(4L, "measurement.lifetimevalue.max_currency_tracked");
        f3746h = z4Var.a(100000L, "measurement.store.max_stored_events_per_app");
        f3747i = z4Var.a(50L, "measurement.experiment.max_ids");
        f3748j = z4Var.a(200L, "measurement.audience.filter_result_max_count");
        f3749k = z4Var.a(60000L, "measurement.alarm_manager.minimum_interval");
        f3750l = z4Var.a(500L, "measurement.upload.minimum_delay");
        f3751m = z4Var.a(86400000L, "measurement.monitoring.sample_period_millis");
        f3752n = z4Var.a(WorkRequest.MIN_BACKOFF_MILLIS, "measurement.upload.realtime_upload_interval");
        f3753o = z4Var.a(604800000L, "measurement.upload.refresh_blacklisted_config_interval");
        z4Var.a(3600000L, "measurement.config.cache_time.service");
        f3754p = z4Var.a(CoroutineLiveDataKt.DEFAULT_TIMEOUT, "measurement.service_client.idle_disconnect_millis");
        z4Var.b("measurement.log_tag.service", "FA-SVC");
        f3755q = z4Var.a(86400000L, "measurement.upload.stale_data_deletion_interval");
        f3756r = z4Var.a(604800000L, "measurement.sdk.attribution.cache.ttl");
        f3757s = z4Var.a(43200000L, "measurement.upload.backoff_period");
        f3758t = z4Var.a(15000L, "measurement.upload.initial_upload_delay_time");
        f3759u = z4Var.a(3600000L, "measurement.upload.interval");
        f3760v = z4Var.a(65536L, "measurement.upload.max_bundle_size");
        w = z4Var.a(100L, "measurement.upload.max_bundles");
        f3761x = z4Var.a(500L, "measurement.upload.max_conversions_per_day");
        f3762y = z4Var.a(1000L, "measurement.upload.max_error_events_per_day");
        f3763z = z4Var.a(1000L, "measurement.upload.max_events_per_bundle");
        A = z4Var.a(100000L, "measurement.upload.max_events_per_day");
        B = z4Var.a(50000L, "measurement.upload.max_public_events_per_day");
        C = z4Var.a(2419200000L, "measurement.upload.max_queue_time");
        D = z4Var.a(10L, "measurement.upload.max_realtime_events_per_day");
        E = z4Var.a(65536L, "measurement.upload.max_batch_size");
        F = z4Var.a(6L, "measurement.upload.retry_count");
        G = z4Var.a(1800000L, "measurement.upload.retry_time");
        H = new y4(z4Var, "measurement.upload.url", "https://app-measurement.com/a");
        I = z4Var.a(3600000L, "measurement.upload.window_interval");
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long A() {
        return G.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long B() {
        return f3763z.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long C() {
        return D.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long D() {
        return E.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final String E() {
        return f3744e.b();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long F() {
        return f3759u.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final String G() {
        return H.b();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long H() {
        return C.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long I() {
        return f3760v.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long a() {
        return f3740a.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long b() {
        return f3741b.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long c() {
        return f3742c.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long d() {
        return f.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long e() {
        return f3745g.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long f() {
        return f3751m.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long g() {
        return f3756r.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long h() {
        return f3749k.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long i() {
        return f3748j.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long j() {
        return f3757s.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long k() {
        return f3746h.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long l() {
        return f3747i.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long m() {
        return f3750l.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long n() {
        return f3758t.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long o() {
        return f3752n.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long p() {
        return f3754p.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long q() {
        return w.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long r() {
        return f3753o.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long s() {
        return f3761x.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long t() {
        return I.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long u() {
        return A.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long v() {
        return B.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final String w() {
        return f3743d.b();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long x() {
        return f3762y.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long y() {
        return F.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.r9
    public final long z() {
        return f3755q.b().longValue();
    }
}
