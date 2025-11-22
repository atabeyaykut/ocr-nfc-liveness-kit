package com.airbnb.epoxy;

import androidx.recyclerview.widget.AdapterListUpdateCallback;
import androidx.recyclerview.widget.DiffUtil;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ List f2542a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2543b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ m f2544c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d f2545d;

    public c(int r12, d dVar, m mVar, List list) {
        this.f2545d = dVar;
        this.f2542a = list;
        this.f2543b = r12;
        this.f2544c = mVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f2543b;
        List list = this.f2542a;
        d dVar = this.f2545d;
        boolean zB = dVar.b(r02, list);
        m mVar = this.f2544c;
        if (mVar == null || !zB) {
            return;
        }
        q qVar = (q) dVar.f2547b;
        qVar.getClass();
        List<? extends u<?>> list2 = mVar.f2599b;
        qVar.f2611i = list2.size();
        h0 h0Var = qVar.f;
        h0Var.f2589a = true;
        AdapterListUpdateCallback adapterListUpdateCallback = new AdapterListUpdateCallback(qVar);
        DiffUtil.DiffResult diffResult = mVar.f2600c;
        if (diffResult != null) {
            diffResult.dispatchUpdatesTo(adapterListUpdateCallback);
        } else {
            boolean zIsEmpty = list2.isEmpty();
            List<? extends u<?>> list3 = mVar.f2598a;
            if (zIsEmpty && !list3.isEmpty()) {
                adapterListUpdateCallback.onRemoved(0, list3.size());
            } else if (!list2.isEmpty() && list3.isEmpty()) {
                adapterListUpdateCallback.onInserted(0, list2.size());
            }
        }
        h0Var.f2589a = false;
        ArrayList arrayList = qVar.f2612j;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((j0) arrayList.get(size)).a();
        }
    }
}
