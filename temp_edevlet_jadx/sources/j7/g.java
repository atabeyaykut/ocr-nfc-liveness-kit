package j7;

import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLongArray;

/* loaded from: classes2.dex */
public final class g extends u<AtomicLongArray> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u f8289a;

    public g(u uVar) {
        this.f8289a = uVar;
    }

    @Override // j7.u
    public final AtomicLongArray a(q7.a aVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        aVar.a();
        while (aVar.i()) {
            arrayList.add(Long.valueOf(((Number) this.f8289a.a(aVar)).longValue()));
        }
        aVar.e();
        int size = arrayList.size();
        AtomicLongArray atomicLongArray = new AtomicLongArray(size);
        for (int r22 = 0; r22 < size; r22++) {
            atomicLongArray.set(r22, ((Long) arrayList.get(r22)).longValue());
        }
        return atomicLongArray;
    }

    @Override // j7.u
    public final void b(q7.b bVar, AtomicLongArray atomicLongArray) throws IOException {
        AtomicLongArray atomicLongArray2 = atomicLongArray;
        bVar.b();
        int length = atomicLongArray2.length();
        for (int r12 = 0; r12 < length; r12++) {
            this.f8289a.b(bVar, Long.valueOf(atomicLongArray2.get(r12)));
        }
        bVar.e();
    }
}
