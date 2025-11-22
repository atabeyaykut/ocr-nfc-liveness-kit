package kd;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class j implements i {

    /* renamed from: a, reason: collision with root package name */
    public ArrayList<a> f8870a = new ArrayList<>();

    public class a implements Comparable<a> {

        /* renamed from: a, reason: collision with root package name */
        public Integer f8871a;

        /* renamed from: b, reason: collision with root package name */
        public long f8872b;

        @Override // java.lang.Comparable
        public final int compareTo(a aVar) {
            return this.f8871a.compareTo(aVar.f8871a);
        }
    }

    @Override // kd.i
    public final boolean a() {
        return this.f8870a.size() == 0;
    }

    @Override // kd.i
    public final double b() {
        int r42;
        synchronized (this) {
            ArrayList<a> arrayList = new ArrayList<>();
            Iterator<a> it = this.f8870a.iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (SystemClock.elapsedRealtime() - next.f8872b < 20000) {
                    arrayList.add(next);
                }
            }
            this.f8870a = arrayList;
            Collections.sort(arrayList);
        }
        int size = this.f8870a.size();
        int r12 = size - 1;
        if (size > 2) {
            int r13 = size / 10;
            r42 = r13 + 1;
            r12 = (size - r13) - 2;
        } else {
            r42 = 0;
        }
        double dIntValue = 0.0d;
        for (int r72 = r42; r72 <= r12; r72++) {
            dIntValue += this.f8870a.get(r72).f8871a.intValue();
        }
        double d10 = dIntValue / ((r12 - r42) + 1);
        id.b.a("RunningAverageRssiFilter", "Running average mRssi based on %s measurements: %s", Integer.valueOf(size), Double.valueOf(d10));
        return d10;
    }

    @Override // kd.i
    public final void c(Integer num) {
        a aVar = new a();
        aVar.f8871a = num;
        aVar.f8872b = SystemClock.elapsedRealtime();
        this.f8870a.add(aVar);
    }

    @Override // kd.i
    public final int d() {
        return this.f8870a.size();
    }
}
