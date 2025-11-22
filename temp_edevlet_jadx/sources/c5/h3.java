package c5;

import androidx.annotation.WorkerThread;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WorkerThread
/* loaded from: classes.dex */
public final class h3 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final g3 f1590a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1591b;

    /* renamed from: c, reason: collision with root package name */
    public final Throwable f1592c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f1593d;

    /* renamed from: e, reason: collision with root package name */
    public final String f1594e;
    public final Map<String, List<String>> f;

    public /* synthetic */ h3(String str, g3 g3Var, int r32, IOException iOException, byte[] bArr, Map map) {
        r3.r.i(g3Var);
        this.f1590a = g3Var;
        this.f1591b = r32;
        this.f1592c = iOException;
        this.f1593d = bArr;
        this.f1594e = str;
        this.f = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f1590a.a(this.f1594e, this.f1591b, this.f1592c, this.f1593d, this.f);
    }
}
