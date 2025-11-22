package j7;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class j extends l implements Iterable<l> {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f8299a = new ArrayList();

    public final boolean equals(Object obj) {
        return obj == this || ((obj instanceof j) && ((j) obj).f8299a.equals(this.f8299a));
    }

    public final int hashCode() {
        return this.f8299a.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator<l> iterator() {
        return this.f8299a.iterator();
    }
}
