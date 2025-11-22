package q0;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import d0.w;

/* loaded from: classes.dex */
public final class c<T> {

    /* renamed from: a, reason: collision with root package name */
    public final b<T> f13287a = new b<>();

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final T f13288b;

    /* JADX WARN: Multi-variable type inference failed */
    public c(@Nullable w wVar) {
        this.f13288b = null;
        this.f13288b = wVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final Object a(Object obj, Object obj2) {
        b<T> bVar = this.f13287a;
        bVar.f13285a = obj;
        bVar.f13286b = obj2;
        return this.f13288b;
    }
}
