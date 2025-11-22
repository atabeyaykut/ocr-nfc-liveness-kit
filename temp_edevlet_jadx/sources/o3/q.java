package o3;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final Map f11183a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b, reason: collision with root package name */
    public final Map f11184b = Collections.synchronizedMap(new WeakHashMap());

    public final void a(boolean z10, Status status) {
        HashMap map;
        HashMap map2;
        synchronized (this.f11183a) {
            map = new HashMap(this.f11183a);
        }
        synchronized (this.f11184b) {
            map2 = new HashMap(this.f11184b);
        }
        for (Map.Entry entry : map.entrySet()) {
            if (z10 || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).c(status);
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            if (z10 || ((Boolean) entry2.getValue()).booleanValue()) {
                ((h5.l) entry2.getKey()).c(new n3.b(status));
            }
        }
    }
}
