package c5;

import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import f3.a;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* loaded from: classes.dex */
public final class u6 extends j7 {

    /* renamed from: d, reason: collision with root package name */
    public String f2041d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2042e;
    public long f;

    /* renamed from: g, reason: collision with root package name */
    public final o3 f2043g;

    /* renamed from: h, reason: collision with root package name */
    public final o3 f2044h;

    /* renamed from: j, reason: collision with root package name */
    public final o3 f2045j;

    /* renamed from: k, reason: collision with root package name */
    public final o3 f2046k;

    /* renamed from: l, reason: collision with root package name */
    public final o3 f2047l;

    public u6(o7 o7Var) {
        super(o7Var);
        s3 s3Var = ((i4) this.f2115a).f1634h;
        i4.c(s3Var);
        this.f2043g = new o3(s3Var, "last_delete_stale", 0L);
        s3 s3Var2 = ((i4) this.f2115a).f1634h;
        i4.c(s3Var2);
        this.f2044h = new o3(s3Var2, "backoff", 0L);
        s3 s3Var3 = ((i4) this.f2115a).f1634h;
        i4.c(s3Var3);
        this.f2045j = new o3(s3Var3, "last_upload", 0L);
        s3 s3Var4 = ((i4) this.f2115a).f1634h;
        i4.c(s3Var4);
        this.f2046k = new o3(s3Var4, "last_upload_attempt", 0L);
        s3 s3Var5 = ((i4) this.f2115a).f1634h;
        i4.c(s3Var5);
        this.f2047l = new o3(s3Var5, "midnight_offset", 0L);
    }

    @Override // c5.j7
    public final void e() {
    }

    @WorkerThread
    @Deprecated
    public final Pair<String, Boolean> g(String str) {
        b();
        z4 z4Var = this.f2115a;
        i4 i4Var = (i4) z4Var;
        i4Var.f1640p.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        String str2 = this.f2041d;
        if (str2 != null && jElapsedRealtime < this.f) {
            return new Pair<>(str2, Boolean.valueOf(this.f2042e));
        }
        this.f = i4Var.f1633g.h(str, r2.f1891b) + jElapsedRealtime;
        try {
            a.C0086a c0086aA = f3.a.a(((i4) z4Var).f1628a);
            this.f2041d = "";
            String str3 = c0086aA.f5511a;
            if (str3 != null) {
                this.f2041d = str3;
            }
            this.f2042e = c0086aA.f5512b;
        } catch (Exception e10) {
            e3 e3Var = i4Var.f1635j;
            i4.e(e3Var);
            e3Var.f1512n.b(e10, "Unable to get advertising id");
            this.f2041d = "";
        }
        return new Pair<>(this.f2041d, Boolean.valueOf(this.f2042e));
    }

    @WorkerThread
    public final Pair<String, Boolean> h(String str, f fVar) {
        return fVar.e() ? g(str) : new Pair<>("", Boolean.FALSE);
    }

    @WorkerThread
    @Deprecated
    public final String n(String str) throws NoSuchAlgorithmException {
        b();
        String str2 = (String) g(str).first;
        MessageDigest messageDigestO = v7.o();
        if (messageDigestO == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigestO.digest(str2.getBytes())));
    }
}
