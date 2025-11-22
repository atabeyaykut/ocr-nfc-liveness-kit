package z0;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantLock;
import q1.l;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f19732a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final C0311b f19733b = new C0311b();

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final ReentrantLock f19734a = new ReentrantLock();

        /* renamed from: b, reason: collision with root package name */
        public int f19735b;
    }

    /* renamed from: z0.b$b, reason: collision with other inner class name */
    public static class C0311b {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayDeque f19736a = new ArrayDeque();

        public final a a() {
            a aVar;
            synchronized (this.f19736a) {
                aVar = (a) this.f19736a.poll();
            }
            return aVar == null ? new a() : aVar;
        }

        public final void b(a aVar) {
            synchronized (this.f19736a) {
                if (this.f19736a.size() < 10) {
                    this.f19736a.offer(aVar);
                }
            }
        }
    }

    public final void a(String str) {
        a aVar;
        synchronized (this) {
            Object obj = this.f19732a.get(str);
            l.b(obj);
            aVar = (a) obj;
            int r32 = aVar.f19735b;
            if (r32 < 1) {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + aVar.f19735b);
            }
            int r33 = r32 - 1;
            aVar.f19735b = r33;
            if (r33 == 0) {
                a aVar2 = (a) this.f19732a.remove(str);
                if (!aVar2.equals(aVar)) {
                    throw new IllegalStateException("Removed the wrong lock, expected to remove: " + aVar + ", but actually removed: " + aVar2 + ", safeKey: " + str);
                }
                this.f19733b.b(aVar2);
            }
        }
        aVar.f19734a.unlock();
    }
}
