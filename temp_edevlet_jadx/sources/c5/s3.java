package c5;

import android.content.SharedPreferences;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* loaded from: classes.dex */
public final class s3 extends y4 {

    /* renamed from: z, reason: collision with root package name */
    public static final Pair<String, Long> f1962z = new Pair<>("", 0L);

    /* renamed from: c, reason: collision with root package name */
    public SharedPreferences f1963c;

    /* renamed from: d, reason: collision with root package name */
    public p3 f1964d;

    /* renamed from: e, reason: collision with root package name */
    public final o3 f1965e;
    public final q3 f;

    /* renamed from: g, reason: collision with root package name */
    public String f1966g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1967h;

    /* renamed from: j, reason: collision with root package name */
    public long f1968j;

    /* renamed from: k, reason: collision with root package name */
    public final o3 f1969k;

    /* renamed from: l, reason: collision with root package name */
    public final m3 f1970l;

    /* renamed from: m, reason: collision with root package name */
    public final q3 f1971m;

    /* renamed from: n, reason: collision with root package name */
    public final m3 f1972n;

    /* renamed from: p, reason: collision with root package name */
    public final o3 f1973p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f1974q;

    /* renamed from: r, reason: collision with root package name */
    public final m3 f1975r;

    /* renamed from: s, reason: collision with root package name */
    public final m3 f1976s;

    /* renamed from: t, reason: collision with root package name */
    public final o3 f1977t;

    /* renamed from: v, reason: collision with root package name */
    public final q3 f1978v;
    public final q3 w;

    /* renamed from: x, reason: collision with root package name */
    public final o3 f1979x;

    /* renamed from: y, reason: collision with root package name */
    public final n3 f1980y;

    public s3(i4 i4Var) {
        super(i4Var);
        this.f1969k = new o3(this, "session_timeout", 1800000L);
        this.f1970l = new m3(this, "start_new_session", true);
        this.f1973p = new o3(this, "last_pause_time", 0L);
        this.f1971m = new q3(this, "non_personalized_ads");
        this.f1972n = new m3(this, "allow_remote_dynamite", false);
        this.f1965e = new o3(this, "first_open_time", 0L);
        r3.r.f("app_install_time");
        this.f = new q3(this, "app_instance_id");
        this.f1975r = new m3(this, "app_backgrounded", false);
        this.f1976s = new m3(this, "deep_link_retrieval_complete", false);
        this.f1977t = new o3(this, "deep_link_retrieval_attempts", 0L);
        this.f1978v = new q3(this, "firebase_feature_rollouts");
        this.w = new q3(this, "deferred_attribution_cache");
        this.f1979x = new o3(this, "deferred_attribution_cache_timestamp", 0L);
        this.f1980y = new n3(this);
    }

    @Override // c5.y4
    public final boolean c() {
        return true;
    }

    @WorkerThread
    public final SharedPreferences g() {
        b();
        d();
        r3.r.i(this.f1963c);
        return this.f1963c;
    }

    @EnsuresNonNull.List({@EnsuresNonNull({"this.preferences"}), @EnsuresNonNull({"this.monitoringSample"})})
    @WorkerThread
    public final void h() {
        i4 i4Var = (i4) this.f2115a;
        SharedPreferences sharedPreferences = i4Var.f1628a.getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.f1963c = sharedPreferences;
        boolean z10 = sharedPreferences.getBoolean("has_been_opened", false);
        this.f1974q = z10;
        if (!z10) {
            SharedPreferences.Editor editorEdit = this.f1963c.edit();
            editorEdit.putBoolean("has_been_opened", true);
            editorEdit.apply();
        }
        i4Var.getClass();
        this.f1964d = new p3(this, Math.max(0L, r2.f1893c.a(null).longValue()));
    }

    @WorkerThread
    public final f n() {
        b();
        return f.b(g().getString("consent_settings", "G1"));
    }

    @WorkerThread
    public final Boolean o() {
        b();
        if (g().contains("measurement_enabled")) {
            return Boolean.valueOf(g().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    @WorkerThread
    public final void p(Boolean bool) {
        b();
        SharedPreferences.Editor editorEdit = g().edit();
        if (bool != null) {
            editorEdit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            editorEdit.remove("measurement_enabled");
        }
        editorEdit.apply();
    }

    @WorkerThread
    public final void q(boolean z10) {
        b();
        e3 e3Var = ((i4) this.f2115a).f1635j;
        i4.e(e3Var);
        e3Var.f1513p.b(Boolean.valueOf(z10), "App measurement setting deferred collection");
        SharedPreferences.Editor editorEdit = g().edit();
        editorEdit.putBoolean("deferred_analytics_collection", z10);
        editorEdit.apply();
    }

    public final boolean r(long j10) {
        return j10 - this.f1969k.a() > this.f1973p.a();
    }

    @WorkerThread
    public final boolean s(int r42) {
        return r42 <= g().getInt("consent_source", 100);
    }
}
