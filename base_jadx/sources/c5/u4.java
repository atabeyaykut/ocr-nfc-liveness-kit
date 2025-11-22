package c5;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class u4 implements Callable<List<t7>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f2035a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ w4 f2036b;

    public u4(w4 w4Var, String str) {
        this.f2036b = w4Var;
        this.f2035a = str;
    }

    @Override // java.util.concurrent.Callable
    public final List<t7> call() throws Exception {
        w4 w4Var = this.f2036b;
        w4Var.f2101a.a();
        i iVar = w4Var.f2101a.f1820c;
        o7.I(iVar);
        return iVar.N(this.f2035a);
    }
}
