package v0;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class g<T> {

    /* renamed from: e, reason: collision with root package name */
    public static final a f18201e = new a();

    /* renamed from: a, reason: collision with root package name */
    public final T f18202a;

    /* renamed from: b, reason: collision with root package name */
    public final b<T> f18203b;

    /* renamed from: c, reason: collision with root package name */
    public final String f18204c;

    /* renamed from: d, reason: collision with root package name */
    public volatile byte[] f18205d;

    public class a implements b<Object> {
        @Override // v0.g.b
        public final void a(@NonNull byte[] bArr, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        }
    }

    public interface b<T> {
        void a(@NonNull byte[] bArr, @NonNull T t10, @NonNull MessageDigest messageDigest);
    }

    public g(@NonNull String str, @Nullable T t10, @NonNull b<T> bVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must not be null or empty");
        }
        this.f18204c = str;
        this.f18202a = t10;
        this.f18203b = bVar;
    }

    @NonNull
    public static g a(@NonNull Object obj, @NonNull String str) {
        return new g(str, obj, f18201e);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof g) {
            return this.f18204c.equals(((g) obj).f18204c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f18204c.hashCode();
    }

    public final String toString() {
        return androidx.camera.camera2.internal.c.h(new StringBuilder("Option{key='"), this.f18204c, "'}");
    }
}
