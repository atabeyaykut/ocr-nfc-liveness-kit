package x3;

import android.os.Process;
import java.util.Deque;
import l3.o;
import r3.r;
import v7.i;

/* loaded from: classes.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19131a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f19132b;

    public /* synthetic */ b(int r12, Object obj) {
        this.f19131a = r12;
        this.f19132b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() throws SecurityException, IllegalArgumentException {
        switch (this.f19131a) {
            case 0:
                Process.setThreadPriority(0);
                ((Runnable) this.f19132b).run();
                return;
            case 1:
                Runnable runnablePeekFirst = (Runnable) this.f19132b;
                Deque<Runnable> deque = i.f18269b.get();
                r.i(deque);
                deque.add(runnablePeekFirst);
                if (deque.size() <= 1) {
                    do {
                        runnablePeekFirst.run();
                        deque.removeFirst();
                        runnablePeekFirst = deque.peekFirst();
                    } while (runnablePeekFirst != null);
                    return;
                }
                return;
            default:
                o oVar = (o) this.f19132b;
                synchronized (oVar) {
                    if (oVar.f9366a == 1) {
                        oVar.a(1, "Timed out while binding");
                    }
                }
                return;
        }
    }

    public b(Runnable runnable) {
        this.f19131a = 0;
        this.f19132b = runnable;
    }
}
