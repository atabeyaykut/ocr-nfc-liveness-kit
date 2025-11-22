package t1;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class r implements w1.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u f15546a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f15547b;

    public r(u uVar, d dVar) {
        this.f15546a = uVar;
        this.f15547b = dVar;
    }

    @Override // w1.a
    public final void a(NullPointerException nullPointerException) {
        this.f15546a.a(new p(nullPointerException));
    }

    @Override // w1.a
    public final void b(ArrayList arrayList, List list) {
        this.f15546a.a(new q(this.f15547b, arrayList, list));
    }
}
