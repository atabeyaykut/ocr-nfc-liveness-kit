package vb;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes2.dex */
public final class k {
    public static final HashSet a(Iterable iterable) {
        HashSet hashSet = new HashSet();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Set<lb.f> setG = ((i) it.next()).g();
            if (setG == null) {
                return null;
            }
            m9.p.T0(setG, hashSet);
        }
        return hashSet;
    }
}
