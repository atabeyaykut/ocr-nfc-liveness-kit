package y3;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: b, reason: collision with root package name */
    public static final c f19315b = new c();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public b f19316a = null;

    @NonNull
    public static b a(@NonNull Context context) {
        b bVar;
        c cVar = f19315b;
        synchronized (cVar) {
            if (cVar.f19316a == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                cVar.f19316a = new b(context);
            }
            bVar = cVar.f19316a;
        }
        return bVar;
    }
}
