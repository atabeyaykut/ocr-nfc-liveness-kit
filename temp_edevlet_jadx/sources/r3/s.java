package r3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class s {

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public static s f14038b;

    /* renamed from: c, reason: collision with root package name */
    public static final t f14039c = new t(0, false, false, 0, 0);

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public t f14040a;

    @NonNull
    public static synchronized s a() {
        if (f14038b == null) {
            f14038b = new s();
        }
        return f14038b;
    }
}
