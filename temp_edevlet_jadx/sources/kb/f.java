package kb;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import jb.a;
import m9.t;
import m9.x;

/* loaded from: classes2.dex */
public final class f extends g {
    public f(a.d dVar, String[] strArr) {
        List<Integer> list = dVar.f8462c;
        Set setY1 = list.isEmpty() ? x.f10175a : t.y1(list);
        List<a.d.c> list2 = dVar.f8461b;
        kotlin.jvm.internal.h.e(list2, "types.recordList");
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(list2.size());
        for (a.d.c cVar : list2) {
            int r32 = cVar.f8472c;
            for (int r42 = 0; r42 < r32; r42++) {
                arrayList.add(cVar);
            }
        }
        arrayList.trimToSize();
        super(strArr, setY1, arrayList);
    }
}
