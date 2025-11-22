package i0;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.collection.LruCache;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class g {

    /* renamed from: b, reason: collision with root package name */
    public static final g f7227b = new g();

    /* renamed from: a, reason: collision with root package name */
    public final LruCache<String, d0.f> f7228a = new LruCache<>(20);

    @VisibleForTesting
    public g() {
    }
}
