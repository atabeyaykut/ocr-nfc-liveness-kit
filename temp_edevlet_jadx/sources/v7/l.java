package v7;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import c5.a0;
import c6.d;
import java.util.UUID;

/* loaded from: classes2.dex */
public final class l {

    /* renamed from: b, reason: collision with root package name */
    @RecentlyNonNull
    public static final c6.d<?> f18274b;

    /* renamed from: a, reason: collision with root package name */
    public final Context f18275a;

    static {
        d.a aVarA = c6.d.a(l.class);
        aVarA.a(new c6.o(1, 0, h.class));
        aVarA.a(new c6.o(1, 0, Context.class));
        aVarA.f2197e = a0.f1392b;
        f18274b = aVarA.b();
    }

    public l(@RecentlyNonNull Context context) {
        this.f18275a = context;
    }

    @RecentlyNonNull
    public final synchronized String a() {
        String string = this.f18275a.getSharedPreferences("com.google.mlkit.internal", 0).getString("ml_sdk_instance_id", null);
        if (string != null) {
            return string;
        }
        String string2 = UUID.randomUUID().toString();
        this.f18275a.getSharedPreferences("com.google.mlkit.internal", 0).edit().putString("ml_sdk_instance_id", string2).apply();
        return string2;
    }
}
