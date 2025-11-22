package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes2.dex */
public abstract class c<T> extends o {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9134a = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_consensus");
    private volatile /* synthetic */ Object _consensus = b8.f.f1181d;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.o
    public final c<?> a() {
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.o
    public final Object c(Object obj) {
        Object objE = this._consensus;
        if (objE == b8.f.f1181d) {
            objE = e(i(obj));
        }
        d(obj, objE);
        return objE;
    }

    public abstract void d(T t10, Object obj);

    public final Object e(Object obj) {
        boolean z10;
        Object obj2 = this._consensus;
        u uVar = b8.f.f1181d;
        if (obj2 != uVar) {
            return obj2;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9134a;
        while (true) {
            if (atomicReferenceFieldUpdater.compareAndSet(this, uVar, obj)) {
                z10 = true;
                break;
            }
            if (atomicReferenceFieldUpdater.get(this) != uVar) {
                z10 = false;
                break;
            }
        }
        return z10 ? obj : this._consensus;
    }

    public final Object f() {
        return this._consensus;
    }

    public long g() {
        return 0L;
    }

    public final boolean h() {
        return this._consensus != b8.f.f1181d;
    }

    public abstract Object i(T t10);
}
