package c5;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;

/* loaded from: classes.dex */
public final class m3 {

    /* renamed from: a, reason: collision with root package name */
    public final String f1717a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f1718b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1719c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1720d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ s3 f1721e;

    public m3(s3 s3Var, String str, boolean z10) {
        this.f1721e = s3Var;
        r3.r.f(str);
        this.f1717a = str;
        this.f1718b = z10;
    }

    @WorkerThread
    public final void a(boolean z10) {
        SharedPreferences.Editor editorEdit = this.f1721e.g().edit();
        editorEdit.putBoolean(this.f1717a, z10);
        editorEdit.apply();
        this.f1720d = z10;
    }

    @WorkerThread
    public final boolean b() {
        if (!this.f1719c) {
            this.f1719c = true;
            this.f1720d = this.f1721e.g().getBoolean(this.f1717a, this.f1718b);
        }
        return this.f1720d;
    }
}
