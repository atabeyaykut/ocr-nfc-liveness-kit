package c5;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import f3.a;
import java.net.MalformedURLException;
import java.net.URL;

/* loaded from: classes.dex */
public final /* synthetic */ class d5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1474a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r3 f1475b;

    public /* synthetic */ d5(r3 r3Var, int r22) {
        this.f1474a = r22;
        this.f1475b = r3Var;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        Pair pair;
        String str;
        c3 c3Var;
        NetworkInfo activeNetworkInfo;
        int r02 = this.f1474a;
        r3 r3Var = this.f1475b;
        switch (r02) {
            case 0:
                v5 v5Var = (v5) r3Var;
                v5Var.b();
                i4 i4Var = (i4) v5Var.f2115a;
                s3 s3Var = i4Var.f1634h;
                i4.c(s3Var);
                boolean zB = s3Var.f1976s.b();
                e3 e3Var = i4Var.f1635j;
                if (!zB) {
                    s3 s3Var2 = i4Var.f1634h;
                    i4.c(s3Var2);
                    long jA = s3Var2.f1977t.a();
                    i4.c(s3Var2);
                    s3Var2.f1977t.b(1 + jA);
                    if (jA < 5) {
                        h4 h4Var = i4Var.f1636k;
                        i4.e(h4Var);
                        h4Var.b();
                        z5 z5Var = i4Var.f1644t;
                        i4.e(z5Var);
                        i4.e(z5Var);
                        String strH = i4Var.o().h();
                        i4.c(s3Var2);
                        s3Var2.b();
                        z4 z4Var = s3Var2.f2115a;
                        i4 i4Var2 = (i4) z4Var;
                        i4Var2.f1640p.getClass();
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        String str2 = s3Var2.f1966g;
                        if (str2 == null || jElapsedRealtime >= s3Var2.f1968j) {
                            s3Var2.f1968j = i4Var2.f1633g.h(strH, r2.f1891b) + jElapsedRealtime;
                            try {
                                a.C0086a c0086aA = f3.a.a(((i4) z4Var).f1628a);
                                s3Var2.f1966g = "";
                                String str3 = c0086aA.f5511a;
                                if (str3 != null) {
                                    s3Var2.f1966g = str3;
                                }
                                s3Var2.f1967h = c0086aA.f5512b;
                            } catch (Exception e10) {
                                e3 e3Var2 = i4Var2.f1635j;
                                i4.e(e3Var2);
                                e3Var2.f1512n.b(e10, "Unable to get advertising id");
                                s3Var2.f1966g = "";
                            }
                            pair = new Pair(s3Var2.f1966g, Boolean.valueOf(s3Var2.f1967h));
                        } else {
                            pair = new Pair(str2, Boolean.valueOf(s3Var2.f1967h));
                        }
                        Boolean boolO = i4Var.f1633g.o("google_analytics_adid_collection_enabled");
                        if (!(boolO == null || boolO.booleanValue()) || ((Boolean) pair.second).booleanValue() || TextUtils.isEmpty((CharSequence) pair.first)) {
                            i4.e(e3Var);
                            str = "ADID unavailable to retrieve Deferred Deep Link. Skipping";
                            c3Var = e3Var.f1512n;
                        } else {
                            i4.e(z5Var);
                            z5Var.d();
                            i4 i4Var3 = (i4) z5Var.f2115a;
                            ConnectivityManager connectivityManager = (ConnectivityManager) i4Var3.f1628a.getSystemService("connectivity");
                            URL url = null;
                            if (connectivityManager != null) {
                                try {
                                    activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                                } catch (SecurityException unused) {
                                }
                                if (activeNetworkInfo == null && activeNetworkInfo.isConnected()) {
                                    v7 v7Var = i4Var.f1638m;
                                    i4.c(v7Var);
                                    ((i4) i4Var.o().f2115a).f1633g.g();
                                    String str4 = (String) pair.first;
                                    long jA2 = s3Var2.f1977t.a() - 1;
                                    z4 z4Var2 = v7Var.f2115a;
                                    try {
                                        r3.r.f(str4);
                                        r3.r.f(strH);
                                        String strConcat = String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s", String.format("v%s.%s", 46000L, Integer.valueOf(v7Var.j0())), str4, strH, Long.valueOf(jA2));
                                        if (strH.equals(((i4) z4Var2).f1633g.c("debug.deferred.deeplink"))) {
                                            strConcat = strConcat.concat("&ddl_test=1");
                                        }
                                        url = new URL(strConcat);
                                    } catch (IllegalArgumentException | MalformedURLException e11) {
                                        e3 e3Var3 = ((i4) z4Var2).f1635j;
                                        i4.e(e3Var3);
                                        e3Var3.f.b(e11.getMessage(), "Failed to create BOW URL for Deferred Deep Link. exception");
                                    }
                                    if (url != null) {
                                        i4.e(z5Var);
                                        c0.c cVar = new c0.c(i4Var);
                                        z5Var.b();
                                        z5Var.d();
                                        h4 h4Var2 = i4Var3.f1636k;
                                        i4.e(h4Var2);
                                        h4Var2.o(new y5(z5Var, strH, url, cVar));
                                        break;
                                    }
                                } else {
                                    i4.e(e3Var);
                                    str = "Network is not available for Deferred Deep Link request. Skipping";
                                    c3Var = e3Var.f1508j;
                                }
                            } else {
                                activeNetworkInfo = null;
                                if (activeNetworkInfo == null) {
                                }
                                i4.e(e3Var);
                                str = "Network is not available for Deferred Deep Link request. Skipping";
                                c3Var = e3Var.f1508j;
                            }
                        }
                        c3Var.a(str);
                        break;
                    } else {
                        i4.e(e3Var);
                        e3Var.f1508j.a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                        i4.c(s3Var2);
                        s3Var2.f1976s.a(true);
                        break;
                    }
                } else {
                    i4.e(e3Var);
                    e3Var.f1512n.a("Deferred Deep Link already retrieved. Not fetching again.");
                    break;
                }
                break;
            default:
                f6 f6Var = (f6) r3Var;
                f6Var.f1549e = f6Var.f1553k;
                break;
        }
    }
}
