package c5;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class m7 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f1753a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Bundle f1754b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b4 f1755c;

    public m7(b4 b4Var, String str, Bundle bundle) {
        this.f1755c = b4Var;
        this.f1753a = str;
        this.f1754b = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b4 b4Var = this.f1755c;
        v7 v7VarQ = ((o7) b4Var.f1418a).Q();
        String str = this.f1753a;
        Bundle bundle = this.f1754b;
        Object obj = b4Var.f1418a;
        ((w) ((o7) obj).i()).getClass();
        s sVarP0 = v7VarQ.p0(str, "_err", bundle, "auto", System.currentTimeMillis(), false);
        r3.r.i(sVarP0);
        ((o7) obj).e(sVarP0, this.f1753a);
    }
}
