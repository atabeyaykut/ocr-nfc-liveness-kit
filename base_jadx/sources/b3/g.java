package b3;

import android.content.Context;

/* loaded from: classes.dex */
public final class g implements x2.b<String> {

    /* renamed from: a, reason: collision with root package name */
    public final k9.a<Context> f1101a;

    public g(k9.a<Context> aVar) {
        this.f1101a = aVar;
    }

    @Override // k9.a
    public final Object get() {
        String packageName = this.f1101a.get().getPackageName();
        if (packageName != null) {
            return packageName;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
