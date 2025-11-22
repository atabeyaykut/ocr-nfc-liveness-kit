package sc;

import java.util.concurrent.ThreadFactory;

/* loaded from: classes2.dex */
public final class b implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f15378a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f15379b;

    public b(String str, boolean z10) {
        this.f15378a = str;
        this.f15379b = z10;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.f15378a);
        thread.setDaemon(this.f15379b);
        return thread;
    }
}
