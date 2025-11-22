package d0;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class j implements Callable<r<f>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WeakReference f4545a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f4546b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4547c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f4548d;

    public j(WeakReference weakReference, Context context, int r32, String str) {
        this.f4545a = weakReference;
        this.f4546b = context;
        this.f4547c = r32;
        this.f4548d = str;
    }

    @Override // java.util.concurrent.Callable
    public final r<f> call() throws Exception {
        Context context = (Context) this.f4545a.get();
        if (context == null) {
            context = this.f4546b;
        }
        return g.e(context, this.f4547c, this.f4548d);
    }
}
