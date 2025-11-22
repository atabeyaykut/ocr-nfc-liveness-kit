package uc;

import com.google.android.gms.internal.clearcut.d0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import kotlin.jvm.internal.h;
import l9.m;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public boolean f17922a;

    /* renamed from: b, reason: collision with root package name */
    public a f17923b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f17924c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f17925d;

    /* renamed from: e, reason: collision with root package name */
    public final d f17926e;
    public final String f;

    public c(d taskRunner, String name) {
        h.f(taskRunner, "taskRunner");
        h.f(name, "name");
        this.f17926e = taskRunner;
        this.f = name;
        this.f17924c = new ArrayList();
    }

    public final void a() {
        byte[] bArr = sc.c.f15380a;
        synchronized (this.f17926e) {
            if (b()) {
                this.f17926e.e(this);
            }
            m mVar = m.f9594a;
        }
    }

    public final boolean b() {
        a aVar = this.f17923b;
        if (aVar != null && aVar.f17920d) {
            this.f17925d = true;
        }
        ArrayList arrayList = this.f17924c;
        boolean z10 = false;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((a) arrayList.get(size)).f17920d) {
                a aVar2 = (a) arrayList.get(size);
                d dVar = d.f17927h;
                if (d.f17928i.isLoggable(Level.FINE)) {
                    d0.e(aVar2, this, "canceled");
                }
                arrayList.remove(size);
                z10 = true;
            }
        }
        return z10;
    }

    public final void c(a task, long j10) {
        h.f(task, "task");
        synchronized (this.f17926e) {
            if (!this.f17922a) {
                if (d(task, j10, false)) {
                    this.f17926e.e(this);
                }
                m mVar = m.f9594a;
            } else if (task.f17920d) {
                d.f17929j.getClass();
                if (d.f17928i.isLoggable(Level.FINE)) {
                    d0.e(task, this, "schedule canceled (queue is shutdown)");
                }
            } else {
                d.f17929j.getClass();
                if (d.f17928i.isLoggable(Level.FINE)) {
                    d0.e(task, this, "schedule failed (queue is shutdown)");
                }
                throw new RejectedExecutionException();
            }
        }
    }

    public final boolean d(a task, long j10, boolean z10) {
        h.f(task, "task");
        c cVar = task.f17917a;
        if (cVar != this) {
            if (!(cVar == null)) {
                throw new IllegalStateException("task is in multiple queues".toString());
            }
            task.f17917a = this;
        }
        long jC = this.f17926e.f17935g.c();
        long j11 = jC + j10;
        ArrayList arrayList = this.f17924c;
        int r92 = arrayList.indexOf(task);
        if (r92 != -1) {
            if (task.f17918b <= j11) {
                d dVar = d.f17927h;
                if (d.f17928i.isLoggable(Level.FINE)) {
                    d0.e(task, this, "already scheduled");
                }
                return false;
            }
            arrayList.remove(r92);
        }
        task.f17918b = j11;
        d dVar2 = d.f17927h;
        if (d.f17928i.isLoggable(Level.FINE)) {
            d0.e(task, this, (z10 ? "run again after " : "scheduled after ").concat(d0.o(j11 - jC)));
        }
        Iterator it = arrayList.iterator();
        int size = 0;
        while (true) {
            if (!it.hasNext()) {
                size = -1;
                break;
            }
            if (((a) it.next()).f17918b - jC > j10) {
                break;
            }
            size++;
        }
        if (size == -1) {
            size = arrayList.size();
        }
        arrayList.add(size, task);
        return size == 0;
    }

    public final void e() {
        byte[] bArr = sc.c.f15380a;
        synchronized (this.f17926e) {
            this.f17922a = true;
            if (b()) {
                this.f17926e.e(this);
            }
            m mVar = m.f9594a;
        }
    }

    public final String toString() {
        return this.f;
    }
}
