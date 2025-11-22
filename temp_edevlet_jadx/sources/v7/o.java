package v7;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.Set;

/* loaded from: classes2.dex */
public final class o extends PhantomReference<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final Set<o> f18281a;

    /* renamed from: b, reason: collision with root package name */
    public final Runnable f18282b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ o(a aVar, ReferenceQueue referenceQueue, Set set) {
        super(aVar, referenceQueue);
        n nVar = new Runnable() { // from class: v7.n
            @Override // java.lang.Runnable
            public final void run() {
            }
        };
        this.f18281a = set;
        this.f18282b = nVar;
    }
}
