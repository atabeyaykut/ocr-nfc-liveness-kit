package p4;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class q0<E> extends n0<Object> {

    /* renamed from: a, reason: collision with root package name */
    public Object[] f12610a = new Object[4];

    /* renamed from: b, reason: collision with root package name */
    public int f12611b = 0;

    /* renamed from: c, reason: collision with root package name */
    public boolean f12612c;

    public final void a(Object obj) {
        obj.getClass();
        c(this.f12611b + 1);
        Object[] objArr = this.f12610a;
        int r12 = this.f12611b;
        this.f12611b = r12 + 1;
        objArr[r12] = obj;
    }

    public final void b(Collection collection) {
        if (collection instanceof Collection) {
            c(collection.size() + this.f12611b);
            if (collection instanceof o0) {
                this.f12611b = ((o0) collection).h(this.f12610a, this.f12611b);
                return;
            }
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    public final void c(int r42) {
        Object[] objArr = this.f12610a;
        int length = objArr.length;
        if (length < r42) {
            int r12 = length + (length >> 1) + 1;
            if (r12 < r42) {
                int r43 = Integer.highestOneBit(r42 - 1);
                r12 = r43 + r43;
            }
            if (r12 < 0) {
                r12 = Integer.MAX_VALUE;
            }
            this.f12610a = Arrays.copyOf(objArr, r12);
        } else if (!this.f12612c) {
            return;
        } else {
            this.f12610a = (Object[]) objArr.clone();
        }
        this.f12612c = false;
    }

    public final d1 d() {
        this.f12612c = true;
        Object[] objArr = this.f12610a;
        int r12 = this.f12611b;
        r0 r0Var = u0.f12703b;
        return r12 == 0 ? d1.f12296e : new d1(objArr, r12);
    }
}
