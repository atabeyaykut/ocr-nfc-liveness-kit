package r4;

import android.os.SystemClock;
import java.io.Closeable;
import java.util.HashMap;
import java.util.Locale;

/* loaded from: classes.dex */
public class g6 implements Closeable {

    /* renamed from: h, reason: collision with root package name */
    public static final HashMap f14134h = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f14135a;

    /* renamed from: b, reason: collision with root package name */
    public int f14136b;

    /* renamed from: c, reason: collision with root package name */
    public double f14137c;

    /* renamed from: d, reason: collision with root package name */
    public long f14138d;

    /* renamed from: e, reason: collision with root package name */
    public long f14139e;
    public long f = 2147483647L;

    /* renamed from: g, reason: collision with root package name */
    public long f14140g = -2147483648L;

    public g6(String str) {
        this.f14135a = str;
    }

    public void a() {
        this.f14138d = SystemClock.elapsedRealtimeNanos() / 1000;
    }

    public void b(long j10) {
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos() / 1000;
        long j11 = this.f14139e;
        if (j11 != 0 && jElapsedRealtimeNanos - j11 >= 1000000) {
            this.f14136b = 0;
            this.f14137c = 0.0d;
            this.f14138d = 0L;
            this.f = 2147483647L;
            this.f14140g = -2147483648L;
        }
        this.f14139e = jElapsedRealtimeNanos;
        this.f14136b++;
        this.f14137c += j10;
        this.f = Math.min(this.f, j10);
        this.f14140g = Math.max(this.f14140g, j10);
        if (this.f14136b % 50 == 0) {
            String.format(Locale.US, "[%s] cur=%dus, counts=%d, min=%dus, max=%dus, avg=%dus", this.f14135a, Long.valueOf(j10), Integer.valueOf(this.f14136b), Long.valueOf(this.f), Long.valueOf(this.f14140g), Integer.valueOf((int) (this.f14137c / this.f14136b)));
            t6.a();
        }
        if (this.f14136b % 500 == 0) {
            this.f14136b = 0;
            this.f14137c = 0.0d;
            this.f14138d = 0L;
            this.f = 2147483647L;
            this.f14140g = -2147483648L;
        }
    }

    public void c(long j10) {
        b((SystemClock.elapsedRealtimeNanos() / 1000) - j10);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        long j10 = this.f14138d;
        if (j10 == 0) {
            throw new IllegalStateException("Did you forget to call start()?");
        }
        c(j10);
    }
}
