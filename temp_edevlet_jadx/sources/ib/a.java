package ib;

import androidx.core.os.EnvironmentCompat;
import java.util.ArrayList;
import java.util.List;
import m9.c;
import m9.k;
import m9.t;
import m9.v;

/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f7319a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7320b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7321c;

    /* renamed from: d, reason: collision with root package name */
    public final int f7322d;

    /* renamed from: e, reason: collision with root package name */
    public final List<Integer> f7323e;

    public a(int... numbers) {
        List<Integer> listV1;
        kotlin.jvm.internal.h.f(numbers, "numbers");
        this.f7319a = numbers;
        Integer numS0 = k.s0(numbers, 0);
        this.f7320b = numS0 != null ? numS0.intValue() : -1;
        Integer numS02 = k.s0(numbers, 1);
        this.f7321c = numS02 != null ? numS02.intValue() : -1;
        Integer numS03 = k.s0(numbers, 2);
        this.f7322d = numS03 != null ? numS03.intValue() : -1;
        if (numbers.length <= 3) {
            listV1 = v.f10173a;
        } else {
            if (numbers.length > 1024) {
                throw new IllegalArgumentException(androidx.constraintlayout.core.a.d(new StringBuilder("BinaryVersion with length more than 1024 are not supported. Provided length "), numbers.length, '.'));
            }
            listV1 = t.v1(new c.d(new m9.h(numbers), 3, numbers.length));
        }
        this.f7323e = listV1;
    }

    public final boolean a(int r42, int r52, int r6) {
        int r12 = this.f7320b;
        if (r12 > r42) {
            return true;
        }
        if (r12 < r42) {
            return false;
        }
        int r43 = this.f7321c;
        if (r43 > r52) {
            return true;
        }
        return r43 >= r52 && this.f7322d >= r6;
    }

    public final boolean b(a ourVersion) {
        kotlin.jvm.internal.h.f(ourVersion, "ourVersion");
        int r12 = this.f7321c;
        int r32 = ourVersion.f7321c;
        int r6 = ourVersion.f7320b;
        int r42 = this.f7320b;
        if (r42 == 0) {
            if (r6 == 0 && r12 == r32) {
                return true;
            }
        } else if (r42 == r6 && r12 <= r32) {
            return true;
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (obj != null && kotlin.jvm.internal.h.a(getClass(), obj.getClass())) {
            a aVar = (a) obj;
            if (this.f7320b == aVar.f7320b && this.f7321c == aVar.f7321c && this.f7322d == aVar.f7322d && kotlin.jvm.internal.h.a(this.f7323e, aVar.f7323e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int r02 = this.f7320b;
        int r12 = (r02 * 31) + this.f7321c + r02;
        int r03 = (r12 * 31) + this.f7322d + r12;
        return this.f7323e.hashCode() + (r03 * 31) + r03;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        int[] r12 = this.f7319a;
        int length = r12.length;
        for (int r42 = 0; r42 < length; r42++) {
            int r52 = r12[r42];
            if (!(r52 != -1)) {
                break;
            }
            arrayList.add(Integer.valueOf(r52));
        }
        return arrayList.isEmpty() ? EnvironmentCompat.MEDIA_UNKNOWN : t.g1(arrayList, ".", null, null, null, 62);
    }
}
