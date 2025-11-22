package c5;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class o4 implements Callable<List<b>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f1804a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1805b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f1806c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ w4 f1807d;

    public o4(w4 w4Var, String str, String str2, String str3) {
        this.f1807d = w4Var;
        this.f1804a = str;
        this.f1805b = str2;
        this.f1806c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final List<b> call() throws Exception {
        w4 w4Var = this.f1807d;
        w4Var.f2101a.a();
        i iVar = w4Var.f2101a.f1820c;
        o7.I(iVar);
        return iVar.L(this.f1804a, this.f1805b, this.f1806c);
    }
}
