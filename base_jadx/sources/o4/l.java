package o4;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final /* synthetic */ class l implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11222a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f11223b;

    public /* synthetic */ l(String str, int r22) {
        this.f11222a = r22;
        this.f11223b = str;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int r02 = this.f11222a;
        String str = this.f11223b;
        switch (r02) {
        }
        return r3.n.f14021c.a(str);
    }
}
