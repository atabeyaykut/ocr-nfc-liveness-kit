package c5;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;

/* loaded from: classes.dex */
public final class q3 {

    /* renamed from: a, reason: collision with root package name */
    public final String f1870a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1871b;

    /* renamed from: c, reason: collision with root package name */
    public String f1872c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ s3 f1873d;

    public q3(s3 s3Var, String str) {
        this.f1873d = s3Var;
        r3.r.f(str);
        this.f1870a = str;
    }

    @WorkerThread
    public final String a() {
        if (!this.f1871b) {
            this.f1871b = true;
            this.f1872c = this.f1873d.g().getString(this.f1870a, null);
        }
        return this.f1872c;
    }

    @WorkerThread
    public final void b(String str) {
        SharedPreferences.Editor editorEdit = this.f1873d.g().edit();
        editorEdit.putString(this.f1870a, str);
        editorEdit.apply();
        this.f1872c = str;
    }
}
