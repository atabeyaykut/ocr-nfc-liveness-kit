package i7;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes2.dex */
public final class b implements g {

    /* renamed from: a, reason: collision with root package name */
    public final String f7308a;

    /* renamed from: b, reason: collision with root package name */
    public final c f7309b;

    public b(Set<d> set, c cVar) {
        this.f7308a = b(set);
        this.f7309b = cVar;
    }

    public static String b(Set<d> set) {
        StringBuilder sb2 = new StringBuilder();
        Iterator<d> it = set.iterator();
        while (it.hasNext()) {
            d next = it.next();
            sb2.append(next.a());
            sb2.append('/');
            sb2.append(next.b());
            if (it.hasNext()) {
                sb2.append(' ');
            }
        }
        return sb2.toString();
    }

    @Override // i7.g
    public final String a() {
        Set setUnmodifiableSet;
        c cVar = this.f7309b;
        synchronized (cVar.f7311a) {
            setUnmodifiableSet = Collections.unmodifiableSet(cVar.f7311a);
        }
        boolean zIsEmpty = setUnmodifiableSet.isEmpty();
        String str = this.f7308a;
        if (zIsEmpty) {
            return str;
        }
        return str + ' ' + b(cVar.a());
    }
}
