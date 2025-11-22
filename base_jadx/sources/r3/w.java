package r3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import n3.a;

/* loaded from: classes.dex */
public final class w implements a.c {

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public static final w f14054b = new w(new a().f14056a);

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f14055a;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        public String f14056a;
    }

    public /* synthetic */ w(String str) {
        this.f14055a = str;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof w) {
            return p.a(this.f14055a, ((w) obj).f14055a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f14055a});
    }
}
