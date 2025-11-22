package t2;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class d extends j {

    /* renamed from: a, reason: collision with root package name */
    public final List<m> f15608a;

    public d(ArrayList arrayList) {
        this.f15608a = arrayList;
    }

    @Override // t2.j
    @NonNull
    public final List<m> a() {
        return this.f15608a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            return this.f15608a.equals(((j) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return this.f15608a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "BatchedLogRequest{logRequests=" + this.f15608a + "}";
    }
}
