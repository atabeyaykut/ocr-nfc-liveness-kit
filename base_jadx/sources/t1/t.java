package t1;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class t extends kotlin.jvm.internal.j implements x9.l<w, w> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ List<d2.b> f15549a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(ArrayList arrayList) {
        super(1);
        this.f15549a = arrayList;
    }

    @Override // x9.l
    public final w invoke(w wVar) {
        w setState = wVar;
        kotlin.jvm.internal.h.f(setState, "$this$setState");
        List<d2.b> list = this.f15549a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (new File(((d2.b) obj).f4651c).exists()) {
                arrayList.add(obj);
            }
        }
        return w.a(setState, new c2.c(arrayList), null, 95);
    }
}
