package io.realm.internal;

import io.realm.log.RealmLog;
import java.lang.ref.ReferenceQueue;

/* loaded from: classes2.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final ReferenceQueue<i> f7660a;

    public e(ReferenceQueue<i> referenceQueue) {
        this.f7660a = referenceQueue;
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (true) {
            try {
                NativeObjectReference nativeObjectReference = (NativeObjectReference) this.f7660a.remove();
                synchronized (nativeObjectReference.f7576c) {
                    NativeObjectReference.nativeCleanUp(nativeObjectReference.f7575b, nativeObjectReference.f7574a);
                }
                NativeObjectReference.f.a(nativeObjectReference);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                RealmLog.a(7, null, "The FinalizerRunnable thread has been interrupted. Native resources cannot be freed anymore", new Object[0]);
                return;
            }
        }
    }
}
