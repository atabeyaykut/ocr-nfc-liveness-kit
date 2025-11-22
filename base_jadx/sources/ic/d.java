package ic;

import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class d<T> extends c<T> {

    /* renamed from: a, reason: collision with root package name */
    public Object[] f7358a = new Object[20];

    /* renamed from: b, reason: collision with root package name */
    public int f7359b = 0;

    public static final class a extends m9.b<T> {

        /* renamed from: c, reason: collision with root package name */
        public int f7360c = -1;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ d<T> f7361d;

        public a(d<T> dVar) {
            this.f7361d = dVar;
        }

        @Override // m9.b
        public final void a() {
            int r02;
            Object[] objArr;
            do {
                r02 = this.f7360c + 1;
                this.f7360c = r02;
                objArr = this.f7361d.f7358a;
                if (r02 >= objArr.length) {
                    break;
                }
            } while (objArr[r02] == null);
            if (r02 >= objArr.length) {
                this.f10151a = 3;
                return;
            }
            T t10 = (T) objArr[r02];
            kotlin.jvm.internal.h.d(t10, "null cannot be cast to non-null type T of org.jetbrains.kotlin.util.ArrayMapImpl");
            this.f10152b = t10;
            this.f10151a = 1;
        }
    }

    @Override // ic.c
    public final T get(int r32) {
        Object[] objArr = this.f7358a;
        kotlin.jvm.internal.h.f(objArr, "<this>");
        if (r32 < 0 || r32 > objArr.length - 1) {
            return null;
        }
        return (T) objArr[r32];
    }

    @Override // ic.c, java.lang.Iterable
    public final Iterator<T> iterator() {
        return new a(this);
    }

    @Override // ic.c
    public final int l() {
        return this.f7359b;
    }

    @Override // ic.c
    public final void m(int r32, T value) {
        kotlin.jvm.internal.h.f(value, "value");
        Object[] objArr = this.f7358a;
        if (objArr.length <= r32) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length * 2);
            kotlin.jvm.internal.h.e(objArrCopyOf, "copyOf(this, newSize)");
            this.f7358a = objArrCopyOf;
        }
        Object[] objArr2 = this.f7358a;
        if (objArr2[r32] == null) {
            this.f7359b++;
        }
        objArr2[r32] = value;
    }
}
