package h6;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class j0 {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f6926a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final int f6927b = 64;

    /* renamed from: c, reason: collision with root package name */
    public final int f6928c;

    public j0(int r22) {
        this.f6928c = r22;
    }

    @NonNull
    public final synchronized Map<String, String> a() {
        return Collections.unmodifiableMap(new HashMap(this.f6926a));
    }
}
