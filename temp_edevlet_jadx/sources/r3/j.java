package r3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final String f13999a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f14000b;

    public j(@NonNull String str, @Nullable String str2) {
        r.c(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.f13999a = str;
        if (str2 == null || str2.length() <= 0) {
            this.f14000b = null;
        } else {
            this.f14000b = str2;
        }
    }
}
