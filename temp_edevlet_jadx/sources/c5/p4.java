package c5;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class p4 implements Callable<List<b>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f1848a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1849b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f1850c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ w4 f1851d;

    public p4(w4 w4Var, String str, String str2, String str3) {
        this.f1851d = w4Var;
        this.f1848a = str;
        this.f1849b = str2;
        this.f1850c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final List<b> call() throws Exception {
        w4 w4Var = this.f1851d;
        w4Var.f2101a.a();
        i iVar = w4Var.f2101a.f1820c;
        o7.I(iVar);
        return iVar.L(this.f1848a, this.f1849b, this.f1850c);
    }
}
