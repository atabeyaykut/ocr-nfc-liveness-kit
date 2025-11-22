package vg;

import io.realm.g0;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.h;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements g0.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18625a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ List f18626b;

    public /* synthetic */ a(int r12, ArrayList arrayList) {
        this.f18625a = r12;
        this.f18626b = arrayList;
    }

    @Override // io.realm.g0.a
    public final void d(g0 g0Var) {
        int r02 = this.f18625a;
        List resultList = this.f18626b;
        switch (r02) {
            case 0:
                h.f(resultList, "$resultList");
                g0Var.E(resultList);
                break;
            default:
                h.f(resultList, "$resultList");
                g0Var.E(resultList);
                break;
        }
    }
}
