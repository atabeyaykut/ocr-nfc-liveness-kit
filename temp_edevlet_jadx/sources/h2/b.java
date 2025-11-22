package h2;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.PriorityQueue;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final PriorityQueue<k2.a> f6794a;

    /* renamed from: b, reason: collision with root package name */
    public final PriorityQueue<k2.a> f6795b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f6796c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f6797d = new Object();

    public class a implements Comparator<k2.a> {
        @Override // java.util.Comparator
        public final int compare(k2.a aVar, k2.a aVar2) {
            int r12 = aVar.f;
            int r22 = aVar2.f;
            if (r12 == r22) {
                return 0;
            }
            return r12 > r22 ? 1 : -1;
        }
    }

    public b() {
        a aVar = new a();
        this.f6795b = new PriorityQueue<>(120, aVar);
        this.f6794a = new PriorityQueue<>(120, aVar);
        this.f6796c = new ArrayList();
    }

    public final void a(k2.a aVar) {
        synchronized (this.f6796c) {
            if (this.f6796c.size() >= 6) {
                ((k2.a) this.f6796c.remove(0)).f8694c.recycle();
            }
            this.f6796c.add(aVar);
        }
    }

    public final ArrayList b() {
        ArrayList arrayList;
        synchronized (this.f6797d) {
            arrayList = new ArrayList(this.f6794a);
            arrayList.addAll(this.f6795b);
        }
        return arrayList;
    }

    public final void c() {
        synchronized (this.f6797d) {
            while (this.f6795b.size() + this.f6794a.size() >= 120 && !this.f6794a.isEmpty()) {
                this.f6794a.poll().f8694c.recycle();
            }
            while (this.f6795b.size() + this.f6794a.size() >= 120 && !this.f6795b.isEmpty()) {
                this.f6795b.poll().f8694c.recycle();
            }
        }
    }
}
