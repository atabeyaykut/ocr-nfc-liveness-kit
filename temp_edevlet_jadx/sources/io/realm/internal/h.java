package io.realm.internal;

import java.lang.ref.ReferenceQueue;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public static final ReferenceQueue<i> f7663a;

    /* renamed from: b, reason: collision with root package name */
    public static final h f7664b;

    static {
        ReferenceQueue<i> referenceQueue = new ReferenceQueue<>();
        f7663a = referenceQueue;
        Thread thread = new Thread(new e(referenceQueue));
        f7664b = new h();
        thread.setName("RealmFinalizingDaemon");
        thread.start();
    }

    public final void a(i iVar) {
        new NativeObjectReference(this, iVar, f7663a);
    }
}
