package c5;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class n4 implements Callable<List<t7>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f1768a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1769b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f1770c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ w4 f1771d;

    public n4(w4 w4Var, String str, String str2, String str3) {
        this.f1771d = w4Var;
        this.f1768a = str;
        this.f1769b = str2;
        this.f1770c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final List<t7> call() throws Exception {
        w4 w4Var = this.f1771d;
        w4Var.f2101a.a();
        i iVar = w4Var.f2101a.f1820c;
        o7.I(iVar);
        return iVar.O(this.f1768a, this.f1769b, this.f1770c);
    }
}
