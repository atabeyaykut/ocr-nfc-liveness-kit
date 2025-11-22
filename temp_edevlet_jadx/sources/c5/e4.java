package c5;

import java.lang.Thread;

/* loaded from: classes.dex */
public final class e4 implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    public final String f1514a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h4 f1515b;

    public e4(h4 h4Var, String str) {
        this.f1515b = h4Var;
        this.f1514a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th2) {
        e3 e3Var = ((i4) this.f1515b.f2115a).f1635j;
        i4.e(e3Var);
        e3Var.f.b(th2, this.f1514a);
    }
}
