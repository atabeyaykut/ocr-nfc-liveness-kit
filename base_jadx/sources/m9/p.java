package m9;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class p extends o {
    public static final int S0(int r42, List list) {
        if (new ca.d(0, b8.f.M(list)).l(r42)) {
            return b8.f.M(list) - r42;
        }
        StringBuilder sbE = androidx.appcompat.widget.v.e("Element index ", r42, " must be in range [");
        sbE.append(new ca.d(0, b8.f.M(list)));
        sbE.append("].");
        throw new IndexOutOfBoundsException(sbE.toString());
    }

    public static final void T0(Iterable elements, Collection collection) {
        kotlin.jvm.internal.h.f(elements, "elements");
        if (elements instanceof Collection) {
            collection.addAll((Collection) elements);
            return;
        }
        Iterator it = elements.iterator();
        while (it.hasNext()) {
            collection.add(it.next());
        }
    }
}
