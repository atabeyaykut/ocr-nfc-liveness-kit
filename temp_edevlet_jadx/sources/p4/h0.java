package p4;

import java.util.AbstractMap;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public abstract class h0 implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12373a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f12374b;

    /* renamed from: c, reason: collision with root package name */
    public int f12375c;

    /* renamed from: d, reason: collision with root package name */
    public int f12376d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AbstractMap f12377e;

    public h0(l0 l0Var) {
        this.f12377e = l0Var;
        this.f12374b = l0Var.f12466e;
        this.f12375c = l0Var.isEmpty() ? -1 : 0;
        this.f12376d = -1;
    }

    public abstract Object a(int r12);

    public final void b() {
        AbstractMap abstractMap = this.f12377e;
        switch (this.f12373a) {
            case 0:
                if (((l0) abstractMap).f12466e != this.f12374b) {
                    throw new ConcurrentModificationException();
                }
                return;
            default:
                if (((s4.x) abstractMap).f15217e != this.f12374b) {
                    throw new ConcurrentModificationException();
                }
                return;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f12373a) {
            case 0:
                if (this.f12375c >= 0) {
                }
                break;
            default:
                if (this.f12375c >= 0) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        AbstractMap abstractMap = this.f12377e;
        switch (this.f12373a) {
            case 0:
                b();
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                int r22 = this.f12375c;
                this.f12376d = r22;
                Object objA = a(r22);
                int r32 = this.f12375c + 1;
                this.f12375c = r32 < ((l0) abstractMap).f ? r32 : -1;
                return objA;
            default:
                b();
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                int r23 = this.f12375c;
                this.f12376d = r23;
                Object objA2 = a(r23);
                int r33 = this.f12375c + 1;
                this.f12375c = r33 < ((s4.x) abstractMap).f ? r33 : -1;
                return objA2;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        AbstractMap abstractMap = this.f12377e;
        switch (this.f12373a) {
            case 0:
                b();
                int r22 = this.f12376d;
                if (!(r22 >= 0)) {
                    throw new IllegalStateException("no calls to next() since the last call to remove()");
                }
                this.f12374b += 32;
                l0 l0Var = (l0) abstractMap;
                l0Var.remove(l0Var.f12464c[r22]);
                this.f12375c--;
                this.f12376d = -1;
                return;
            default:
                b();
                int r23 = this.f12376d;
                if (!(r23 >= 0)) {
                    throw new IllegalStateException("no calls to next() since the last call to remove()");
                }
                this.f12374b += 32;
                s4.x xVar = (s4.x) abstractMap;
                xVar.remove(xVar.f15215c[r23]);
                this.f12375c--;
                this.f12376d = -1;
                return;
        }
    }

    public h0(s4.x xVar) {
        this.f12377e = xVar;
        this.f12374b = xVar.f15217e;
        this.f12375c = xVar.isEmpty() ? -1 : 0;
        this.f12376d = -1;
    }
}
