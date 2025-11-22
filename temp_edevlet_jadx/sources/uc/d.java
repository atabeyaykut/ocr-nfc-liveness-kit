package uc;

import androidx.core.location.LocationRequestCompat;
import com.google.android.gms.dynamite.descriptors.com.google.mlkit.dynamite.barcode.ModuleDescriptor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
import kotlin.jvm.internal.h;
import l9.m;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: h, reason: collision with root package name */
    public static final d f17927h;

    /* renamed from: i, reason: collision with root package name */
    public static final Logger f17928i;

    /* renamed from: j, reason: collision with root package name */
    public static final b f17929j = new b();

    /* renamed from: b, reason: collision with root package name */
    public boolean f17931b;

    /* renamed from: c, reason: collision with root package name */
    public long f17932c;

    /* renamed from: g, reason: collision with root package name */
    public final a f17935g;

    /* renamed from: a, reason: collision with root package name */
    public int f17930a = ModuleDescriptor.MODULE_VERSION;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f17933d = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f17934e = new ArrayList();
    public final e f = new e(this);

    public interface a {
        void a(d dVar);

        void b(d dVar, long j10);

        long c();

        void execute(Runnable runnable);
    }

    public static final class b {
    }

    public static final class c implements a {

        /* renamed from: a, reason: collision with root package name */
        public final ThreadPoolExecutor f17936a;

        public c(sc.b bVar) {
            this.f17936a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), bVar);
        }

        @Override // uc.d.a
        public final void a(d taskRunner) {
            h.f(taskRunner, "taskRunner");
            taskRunner.notify();
        }

        @Override // uc.d.a
        public final void b(d taskRunner, long j10) throws InterruptedException {
            h.f(taskRunner, "taskRunner");
            long j11 = j10 / 1000000;
            long j12 = j10 - (1000000 * j11);
            if (j11 > 0 || j10 > 0) {
                taskRunner.wait(j11, (int) j12);
            }
        }

        @Override // uc.d.a
        public final long c() {
            return System.nanoTime();
        }

        @Override // uc.d.a
        public final void execute(Runnable runnable) {
            h.f(runnable, "runnable");
            this.f17936a.execute(runnable);
        }
    }

    static {
        String name = sc.c.f + " TaskRunner";
        h.f(name, "name");
        f17927h = new d(new c(new sc.b(name, true)));
        Logger logger = Logger.getLogger(d.class.getName());
        h.e(logger, "Logger.getLogger(TaskRunner::class.java.name)");
        f17928i = logger;
    }

    public d(c cVar) {
        this.f17935g = cVar;
    }

    public static final void a(d dVar, uc.a aVar) {
        dVar.getClass();
        byte[] bArr = sc.c.f15380a;
        Thread currentThread = Thread.currentThread();
        h.e(currentThread, "currentThread");
        String name = currentThread.getName();
        currentThread.setName(aVar.f17919c);
        try {
            long jA = aVar.a();
            synchronized (dVar) {
                dVar.b(aVar, jA);
                m mVar = m.f9594a;
            }
            currentThread.setName(name);
        } catch (Throwable th2) {
            synchronized (dVar) {
                dVar.b(aVar, -1L);
                m mVar2 = m.f9594a;
                currentThread.setName(name);
                throw th2;
            }
        }
    }

    public final void b(uc.a aVar, long j10) {
        byte[] bArr = sc.c.f15380a;
        uc.c cVar = aVar.f17917a;
        h.c(cVar);
        if (!(cVar.f17923b == aVar)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        boolean z10 = cVar.f17925d;
        cVar.f17925d = false;
        cVar.f17923b = null;
        this.f17933d.remove(cVar);
        if (j10 != -1 && !z10 && !cVar.f17922a) {
            cVar.d(aVar, j10, true);
        }
        if (!cVar.f17924c.isEmpty()) {
            this.f17934e.add(cVar);
        }
    }

    public final uc.a c() {
        long j10;
        boolean z10;
        byte[] bArr = sc.c.f15380a;
        while (true) {
            ArrayList arrayList = this.f17934e;
            if (arrayList.isEmpty()) {
                return null;
            }
            a aVar = this.f17935g;
            long jC = aVar.c();
            Iterator it = arrayList.iterator();
            long jMin = LocationRequestCompat.PASSIVE_INTERVAL;
            uc.a aVar2 = null;
            while (true) {
                if (!it.hasNext()) {
                    j10 = jC;
                    z10 = false;
                    break;
                }
                uc.a aVar3 = (uc.a) ((uc.c) it.next()).f17924c.get(0);
                j10 = jC;
                long jMax = Math.max(0L, aVar3.f17918b - jC);
                if (jMax > 0) {
                    jMin = Math.min(jMax, jMin);
                } else {
                    if (aVar2 != null) {
                        z10 = true;
                        break;
                    }
                    aVar2 = aVar3;
                }
                jC = j10;
            }
            if (aVar2 != null) {
                byte[] bArr2 = sc.c.f15380a;
                aVar2.f17918b = -1L;
                uc.c cVar = aVar2.f17917a;
                h.c(cVar);
                cVar.f17924c.remove(aVar2);
                arrayList.remove(cVar);
                cVar.f17923b = aVar2;
                this.f17933d.add(cVar);
                if (z10 || (!this.f17931b && (!arrayList.isEmpty()))) {
                    aVar.execute(this.f);
                }
                return aVar2;
            }
            if (this.f17931b) {
                if (jMin >= this.f17932c - j10) {
                    return null;
                }
                aVar.a(this);
                return null;
            }
            this.f17931b = true;
            this.f17932c = j10 + jMin;
            try {
                try {
                    aVar.b(this, jMin);
                } catch (InterruptedException unused) {
                    d();
                }
            } finally {
                this.f17931b = false;
            }
        }
    }

    public final void d() {
        ArrayList arrayList = this.f17933d;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            } else {
                ((uc.c) arrayList.get(size)).b();
            }
        }
        ArrayList arrayList2 = this.f17934e;
        int size2 = arrayList2.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                return;
            }
            uc.c cVar = (uc.c) arrayList2.get(size2);
            cVar.b();
            if (cVar.f17924c.isEmpty()) {
                arrayList2.remove(size2);
            }
        }
    }

    public final void e(uc.c taskQueue) {
        h.f(taskQueue, "taskQueue");
        byte[] bArr = sc.c.f15380a;
        if (taskQueue.f17923b == null) {
            boolean z10 = !taskQueue.f17924c.isEmpty();
            ArrayList addIfAbsent = this.f17934e;
            if (z10) {
                h.f(addIfAbsent, "$this$addIfAbsent");
                if (!addIfAbsent.contains(taskQueue)) {
                    addIfAbsent.add(taskQueue);
                }
            } else {
                addIfAbsent.remove(taskQueue);
            }
        }
        boolean z11 = this.f17931b;
        a aVar = this.f17935g;
        if (z11) {
            aVar.a(this);
        } else {
            aVar.execute(this.f);
        }
    }

    public final uc.c f() {
        int r02;
        synchronized (this) {
            r02 = this.f17930a;
            this.f17930a = r02 + 1;
        }
        return new uc.c(this, android.support.v4.media.a.d("Q", r02));
    }
}
