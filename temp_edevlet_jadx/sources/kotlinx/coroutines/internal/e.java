package kotlinx.coroutines.internal;

import c5.e0;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.internal.e;

/* loaded from: classes2.dex */
public abstract class e<N extends e<N>> {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9136a = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "_next");

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9137b = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "_prev");
    private volatile /* synthetic */ Object _next = null;
    private volatile /* synthetic */ Object _prev;

    public e(N n10) {
        this._prev = n10;
    }

    public static final Object a(s sVar) {
        return ((e) sVar)._next;
    }

    public abstract boolean b();

    public final boolean c() {
        Object obj = this._next;
        return (obj == e0.f1489c ? null : (e) obj) == null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001a, code lost:
    
        r1 = (kotlinx.coroutines.internal.e) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001c, code lost:
    
        kotlin.jvm.internal.h.c(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0023, code lost:
    
        if (r1.b() == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
    
        r1 = r1._next;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0027, code lost:
    
        if (r1 != r2) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002a, code lost:
    
        r1._prev = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002c, code lost:
    
        if (r0 == null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002e, code lost:
    
        r0._next = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0034, code lost:
    
        if (r1.b() == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0037, code lost:
    
        if (r0 == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003d, code lost:
    
        if (r0.b() == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0040, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x001c, code lost:
    
        r1 = (kotlinx.coroutines.internal.e) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0016, code lost:
    
        if (r1 == r2) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0018, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0027 -> B:9:0x0018). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d() {
        /*
            r5 = this;
        L0:
            java.lang.Object r0 = r5._prev
            kotlinx.coroutines.internal.e r0 = (kotlinx.coroutines.internal.e) r0
        L4:
            if (r0 == 0) goto L11
            boolean r1 = r0.b()
            if (r1 == 0) goto L11
            java.lang.Object r0 = r0._prev
            kotlinx.coroutines.internal.e r0 = (kotlinx.coroutines.internal.e) r0
            goto L4
        L11:
            java.lang.Object r1 = r5._next
            kotlinx.coroutines.internal.u r2 = c5.e0.f1489c
            r3 = 0
            if (r1 != r2) goto L1a
        L18:
            r1 = r3
            goto L1c
        L1a:
            kotlinx.coroutines.internal.e r1 = (kotlinx.coroutines.internal.e) r1
        L1c:
            kotlin.jvm.internal.h.c(r1)
            boolean r4 = r1.b()
            if (r4 == 0) goto L2a
            java.lang.Object r1 = r1._next
            if (r1 != r2) goto L1a
            goto L18
        L2a:
            r1._prev = r0
            if (r0 == 0) goto L30
            r0._next = r1
        L30:
            boolean r1 = r1.b()
            if (r1 == 0) goto L37
            goto L0
        L37:
            if (r0 == 0) goto L40
            boolean r0 = r0.b()
            if (r0 == 0) goto L40
            goto L0
        L40:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.e.d():void");
    }
}
