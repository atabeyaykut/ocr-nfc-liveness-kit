package ca;

import c5.w;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class b implements Iterable<Integer>, y9.a {

    /* renamed from: a, reason: collision with root package name */
    public final int f2246a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2247b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2248c;

    public b(int r22, int r32, int r42) {
        if (r42 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (r42 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f2246a = r22;
        this.f2247b = w.t(r22, r32, r42);
        this.f2248c = r42;
    }

    public boolean equals(Object obj) {
        if (obj instanceof b) {
            if (!isEmpty() || !((b) obj).isEmpty()) {
                b bVar = (b) obj;
                if (this.f2246a != bVar.f2246a || this.f2247b != bVar.f2247b || this.f2248c != bVar.f2248c) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f2246a * 31) + this.f2247b) * 31) + this.f2248c;
    }

    public boolean isEmpty() {
        int r02 = this.f2248c;
        int r32 = this.f2247b;
        int r42 = this.f2246a;
        if (r02 > 0) {
            if (r42 > r32) {
                return true;
            }
        } else if (r42 < r32) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    public final Iterator<Integer> iterator() {
        return new c(this.f2246a, this.f2247b, this.f2248c);
    }

    public String toString() {
        StringBuilder sb2;
        int r12 = this.f2247b;
        int r22 = this.f2246a;
        int r32 = this.f2248c;
        if (r32 > 0) {
            sb2 = new StringBuilder();
            sb2.append(r22);
            sb2.append("..");
            sb2.append(r12);
            sb2.append(" step ");
            sb2.append(r32);
        } else {
            sb2 = new StringBuilder();
            sb2.append(r22);
            sb2.append(" downTo ");
            sb2.append(r12);
            sb2.append(" step ");
            sb2.append(-r32);
        }
        return sb2.toString();
    }
}
