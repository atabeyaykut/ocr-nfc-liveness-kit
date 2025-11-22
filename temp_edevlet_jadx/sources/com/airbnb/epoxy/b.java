package com.airbnb.epoxy;

import androidx.recyclerview.widget.DiffUtil;
import com.airbnb.epoxy.d;
import java.util.List;

/* loaded from: classes.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d.a f2537a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2538b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f2539c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ List f2540d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ d f2541e;

    public b(d dVar, d.a aVar, int r32, j jVar, List list) {
        this.f2541e = dVar;
        this.f2537a = aVar;
        this.f2538b = r32;
        this.f2539c = jVar;
        this.f2540d = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DiffUtil.DiffResult diffResultCalculateDiff = DiffUtil.calculateDiff(this.f2537a);
        List list = this.f2540d;
        List list2 = this.f2539c;
        m mVar = new m(list, list2, diffResultCalculateDiff);
        d dVar = this.f2541e;
        dVar.getClass();
        e0.f2563c.execute(new c(this.f2538b, dVar, mVar, list2));
    }
}
