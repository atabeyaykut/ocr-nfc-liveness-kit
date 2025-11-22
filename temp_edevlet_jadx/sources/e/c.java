package e;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import androidx.core.content.ContextCompat;
import e.f;

/* loaded from: classes.dex */
public final class c extends kotlin.jvm.internal.j implements x9.a<n.b> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f.a f4987a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(f.a aVar) {
        super(0);
        this.f4987a = aVar;
    }

    @Override // x9.a
    public final n.b invoke() {
        int largeMemoryClass;
        Object systemService;
        Context context = this.f4987a.f4990a;
        Bitmap.Config[] configArr = u.c.f17726a;
        try {
            systemService = ContextCompat.getSystemService(context, ActivityManager.class);
            kotlin.jvm.internal.h.c(systemService);
        } catch (Exception unused) {
        }
        double d10 = ((ActivityManager) systemService).isLowRamDevice() ? 0.15d : 0.2d;
        n.f fVar = new n.f();
        if (d10 > 0.0d) {
            Bitmap.Config[] configArr2 = u.c.f17726a;
            try {
                Object systemService2 = ContextCompat.getSystemService(context, ActivityManager.class);
                kotlin.jvm.internal.h.c(systemService2);
                ActivityManager activityManager = (ActivityManager) systemService2;
                largeMemoryClass = ((context.getApplicationInfo().flags & 1048576) != 0 ? 1 : 0) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass();
            } catch (Exception unused2) {
                largeMemoryClass = 256;
            }
            double d11 = d10 * largeMemoryClass;
            double d12 = 1024;
            ı = (int) (d11 * d12 * d12);
        }
        return new n.d(ı > 0 ? new n.e(ı, fVar) : new n.a(fVar), fVar);
    }
}
