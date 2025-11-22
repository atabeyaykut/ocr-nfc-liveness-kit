package l1;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import v0.k;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f9334a = new ArrayList();

    public static final class a<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Class<T> f9335a;

        /* renamed from: b, reason: collision with root package name */
        public final k<T> f9336b;

        public a(@NonNull Class<T> cls, @NonNull k<T> kVar) {
            this.f9335a = cls;
            this.f9336b = kVar;
        }
    }

    @Nullable
    public final synchronized <Z> k<Z> a(@NonNull Class<Z> cls) {
        int size = this.f9334a.size();
        for (int r12 = 0; r12 < size; r12++) {
            a aVar = (a) this.f9334a.get(r12);
            if (aVar.f9335a.isAssignableFrom(cls)) {
                return (k<Z>) aVar.f9336b;
            }
        }
        return null;
    }
}
