package h6;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public final class d0 implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f6898a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicLong f6899b;

    public class a extends c {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Runnable f6900a;

        public a(Runnable runnable) {
            this.f6900a = runnable;
        }

        @Override // h6.c
        public final void a() {
            this.f6900a.run();
        }
    }

    public d0(String str, AtomicLong atomicLong) {
        this.f6898a = str;
        this.f6899b = atomicLong;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = Executors.defaultThreadFactory().newThread(new a(runnable));
        threadNewThread.setName(this.f6898a + this.f6899b.getAndIncrement());
        return threadNewThread;
    }
}
