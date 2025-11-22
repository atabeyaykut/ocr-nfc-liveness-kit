package vc;

import java.lang.ref.Reference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import rc.e0;
import vc.e;

/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final long f18541a;

    /* renamed from: b, reason: collision with root package name */
    public final uc.c f18542b;

    /* renamed from: c, reason: collision with root package name */
    public final j f18543c;

    /* renamed from: d, reason: collision with root package name */
    public final ConcurrentLinkedQueue<i> f18544d;

    /* renamed from: e, reason: collision with root package name */
    public final int f18545e;

    public k(uc.d taskRunner, TimeUnit timeUnit) {
        kotlin.jvm.internal.h.f(taskRunner, "taskRunner");
        kotlin.jvm.internal.h.f(timeUnit, "timeUnit");
        this.f18545e = 5;
        this.f18541a = timeUnit.toNanos(5L);
        this.f18542b = taskRunner.f();
        this.f18543c = new j(this, androidx.camera.camera2.internal.c.h(new StringBuilder(), sc.c.f, " ConnectionPool"));
        this.f18544d = new ConcurrentLinkedQueue<>();
    }

    public final boolean a(rc.a address, e call, List<e0> list, boolean z10) {
        kotlin.jvm.internal.h.f(address, "address");
        kotlin.jvm.internal.h.f(call, "call");
        Iterator<i> it = this.f18544d.iterator();
        while (true) {
            if (!it.hasNext()) {
                return false;
            }
            i connection = it.next();
            kotlin.jvm.internal.h.e(connection, "connection");
            synchronized (connection) {
                if (z10) {
                    if (!(connection.f != null)) {
                    }
                    l9.m mVar = l9.m.f9594a;
                }
                if (connection.i(address, list)) {
                    call.c(connection);
                    return true;
                }
                l9.m mVar2 = l9.m.f9594a;
            }
        }
    }

    public final int b(i iVar, long j10) {
        byte[] bArr = sc.c.f15380a;
        ArrayList arrayList = iVar.f18537o;
        int r22 = 0;
        while (r22 < arrayList.size()) {
            Reference reference = (Reference) arrayList.get(r22);
            if (reference.get() != null) {
                r22++;
            } else {
                String str = "A connection to " + iVar.f18539q.f14434a.f14373a + " was leaked. Did you forget to close a response body?";
                zc.h.f20045c.getClass();
                zc.h.f20043a.k(((e.b) reference).f18518a, str);
                arrayList.remove(r22);
                iVar.f18531i = true;
                if (arrayList.isEmpty()) {
                    iVar.f18538p = j10 - this.f18541a;
                    return 0;
                }
            }
        }
        return arrayList.size();
    }
}
