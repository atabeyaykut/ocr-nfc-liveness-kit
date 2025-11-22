package c5;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;

/* loaded from: classes.dex */
public final class p3 {

    /* renamed from: a, reason: collision with root package name */
    public final String f1843a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1844b;

    /* renamed from: c, reason: collision with root package name */
    public final String f1845c;

    /* renamed from: d, reason: collision with root package name */
    public final long f1846d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ s3 f1847e;

    public /* synthetic */ p3(s3 s3Var, long j10) {
        this.f1847e = s3Var;
        r3.r.f("health_monitor");
        r3.r.a(j10 > 0);
        this.f1843a = "health_monitor:start";
        this.f1844b = "health_monitor:count";
        this.f1845c = "health_monitor:value";
        this.f1846d = j10;
    }

    @WorkerThread
    public final void a() {
        s3 s3Var = this.f1847e;
        s3Var.b();
        ((i4) s3Var.f2115a).f1640p.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor editorEdit = s3Var.g().edit();
        editorEdit.remove(this.f1844b);
        editorEdit.remove(this.f1845c);
        editorEdit.putLong(this.f1843a, jCurrentTimeMillis);
        editorEdit.apply();
    }
}
