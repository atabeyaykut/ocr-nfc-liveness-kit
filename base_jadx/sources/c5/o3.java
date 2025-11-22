package c5;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;

/* loaded from: classes.dex */
public final class o3 {

    /* renamed from: a, reason: collision with root package name */
    public final String f1799a;

    /* renamed from: b, reason: collision with root package name */
    public final long f1800b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1801c;

    /* renamed from: d, reason: collision with root package name */
    public long f1802d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ s3 f1803e;

    public o3(s3 s3Var, String str, long j10) {
        this.f1803e = s3Var;
        r3.r.f(str);
        this.f1799a = str;
        this.f1800b = j10;
    }

    @WorkerThread
    public final long a() {
        if (!this.f1801c) {
            this.f1801c = true;
            this.f1802d = this.f1803e.g().getLong(this.f1799a, this.f1800b);
        }
        return this.f1802d;
    }

    @WorkerThread
    public final void b(long j10) {
        SharedPreferences.Editor editorEdit = this.f1803e.g().edit();
        editorEdit.putLong(this.f1799a, j10);
        editorEdit.apply();
        this.f1802d = j10;
    }
}
