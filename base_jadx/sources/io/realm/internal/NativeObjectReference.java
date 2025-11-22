package io.realm.internal;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;

/* loaded from: classes2.dex */
final class NativeObjectReference extends PhantomReference<i> {
    public static final a f = new a();

    /* renamed from: a, reason: collision with root package name */
    public final long f7574a;

    /* renamed from: b, reason: collision with root package name */
    public final long f7575b;

    /* renamed from: c, reason: collision with root package name */
    public final h f7576c;

    /* renamed from: d, reason: collision with root package name */
    public NativeObjectReference f7577d;

    /* renamed from: e, reason: collision with root package name */
    public NativeObjectReference f7578e;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public NativeObjectReference f7579a;

        public final synchronized void a(NativeObjectReference nativeObjectReference) {
            NativeObjectReference nativeObjectReference2 = nativeObjectReference.f7578e;
            NativeObjectReference nativeObjectReference3 = nativeObjectReference.f7577d;
            nativeObjectReference.f7578e = null;
            nativeObjectReference.f7577d = null;
            if (nativeObjectReference3 != null) {
                nativeObjectReference3.f7578e = nativeObjectReference2;
            } else {
                this.f7579a = nativeObjectReference2;
            }
            if (nativeObjectReference2 != null) {
                nativeObjectReference2.f7577d = nativeObjectReference3;
            }
        }
    }

    public NativeObjectReference(h hVar, i iVar, ReferenceQueue<? super i> referenceQueue) {
        super(iVar, referenceQueue);
        this.f7574a = iVar.getNativePtr();
        this.f7575b = iVar.getNativeFinalizerPtr();
        this.f7576c = hVar;
        a aVar = f;
        synchronized (aVar) {
            this.f7577d = null;
            NativeObjectReference nativeObjectReference = aVar.f7579a;
            this.f7578e = nativeObjectReference;
            if (nativeObjectReference != null) {
                nativeObjectReference.f7577d = this;
            }
            aVar.f7579a = this;
        }
    }

    public static native void nativeCleanUp(long j10, long j11);
}
