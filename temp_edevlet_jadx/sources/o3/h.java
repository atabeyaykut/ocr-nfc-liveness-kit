package o3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class h<L> {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f11139a = m4.e0.f9994a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public volatile Object f11140b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public volatile a f11141c;

    public static final class a<L> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f11142a;

        /* renamed from: b, reason: collision with root package name */
        public final String f11143b = "GetCurrentLocation";

        public a(w4.c cVar) {
            this.f11142a = cVar;
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f11142a == aVar.f11142a && this.f11143b.equals(aVar.f11143b);
        }

        public final int hashCode() {
            return this.f11143b.hashCode() + (System.identityHashCode(this.f11142a) * 31);
        }
    }

    public interface b<L> {
        void a(@NonNull L l5);

        void b();
    }

    public h(@NonNull m4.f fVar) {
        this.f11140b = fVar;
        r3.r.f("GetCurrentLocation");
        this.f11141c = new a(fVar);
    }
}
