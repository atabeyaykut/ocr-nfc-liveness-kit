package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlinx.coroutines.internal.s;

/* loaded from: classes2.dex */
public final class i extends s<i> {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AtomicReferenceArray f9265e;

    public i(long j10, i iVar, int r42) {
        super(j10, iVar, r42);
        this.f9265e = new AtomicReferenceArray(h.f);
    }

    @Override // kotlinx.coroutines.internal.s
    public final int f() {
        return h.f;
    }

    public final String toString() {
        return "SemaphoreSegment[id=" + this.f9174c + ", hashCode=" + hashCode() + ']';
    }
}
