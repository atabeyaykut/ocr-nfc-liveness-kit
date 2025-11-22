package s4;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class y1 {

    /* renamed from: a, reason: collision with root package name */
    public Object f15242a;

    /* renamed from: b, reason: collision with root package name */
    public Object f15243b;

    public /* synthetic */ y1() {
    }

    public /* synthetic */ y1(gf.c cVar, mf.l lVar) {
        this.f15242a = cVar;
        this.f15243b = lVar;
    }

    public /* synthetic */ y1(Collection collection, gd.l lVar) {
        synchronized (collection) {
            this.f15242a = collection;
        }
        this.f15243b = lVar;
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("region", (gd.l) this.f15243b);
        ArrayList arrayList = new ArrayList();
        Iterator it = ((Collection) this.f15242a).iterator();
        while (it.hasNext()) {
            arrayList.add((gd.c) it.next());
        }
        bundle.putSerializable("beacons", arrayList);
        return bundle;
    }
}
