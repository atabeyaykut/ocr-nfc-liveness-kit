package vc;

import java.net.Socket;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class j extends uc.a {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ k f18540e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(k kVar, String str) {
        super(str, true);
        this.f18540e = kVar;
    }

    @Override // uc.a
    public final long a() {
        k kVar = this.f18540e;
        long jNanoTime = System.nanoTime();
        Iterator<i> it = kVar.f18544d.iterator();
        int r42 = 0;
        long j10 = Long.MIN_VALUE;
        i iVar = null;
        int r52 = 0;
        while (it.hasNext()) {
            i connection = it.next();
            kotlin.jvm.internal.h.e(connection, "connection");
            synchronized (connection) {
                if (kVar.b(connection, jNanoTime) > 0) {
                    r52++;
                } else {
                    r42++;
                    long j11 = jNanoTime - connection.f18538p;
                    if (j11 > j10) {
                        l9.m mVar = l9.m.f9594a;
                        iVar = connection;
                        j10 = j11;
                    } else {
                        l9.m mVar2 = l9.m.f9594a;
                    }
                }
            }
        }
        long j12 = kVar.f18541a;
        if (j10 < j12 && r42 <= kVar.f18545e) {
            if (r42 > 0) {
                return j12 - j10;
            }
            if (r52 > 0) {
                return j12;
            }
            return -1L;
        }
        kotlin.jvm.internal.h.c(iVar);
        synchronized (iVar) {
            if (!(!iVar.f18537o.isEmpty()) && iVar.f18538p + j10 == jNanoTime) {
                iVar.f18531i = true;
                kVar.f18544d.remove(iVar);
                Socket socket = iVar.f18526c;
                kotlin.jvm.internal.h.c(socket);
                sc.c.d(socket);
                if (kVar.f18544d.isEmpty()) {
                    kVar.f18542b.a();
                }
            }
        }
        return 0L;
    }
}
