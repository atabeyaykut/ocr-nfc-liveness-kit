package x3;

import androidx.annotation.NonNull;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
public final class a implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final String f19129a;

    /* renamed from: b, reason: collision with root package name */
    public final ThreadFactory f19130b = Executors.defaultThreadFactory();

    public a(@NonNull String str) {
        this.f19129a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    @NonNull
    public final Thread newThread(@NonNull Runnable runnable) {
        Thread threadNewThread = this.f19130b.newThread(new b(runnable));
        threadNewThread.setName(this.f19129a);
        return threadNewThread;
    }
}
