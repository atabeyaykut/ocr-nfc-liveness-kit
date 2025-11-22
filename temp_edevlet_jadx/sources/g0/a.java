package g0;

import android.view.animation.Interpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class a<K, A> {

    /* renamed from: c, reason: collision with root package name */
    public final c<K> f5737c;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public q0.c<A> f5739e;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f5735a = new ArrayList(1);

    /* renamed from: b, reason: collision with root package name */
    public boolean f5736b = false;

    /* renamed from: d, reason: collision with root package name */
    public float f5738d = 0.0f;

    @Nullable
    public A f = null;

    /* renamed from: g, reason: collision with root package name */
    public float f5740g = -1.0f;

    /* renamed from: h, reason: collision with root package name */
    public float f5741h = -1.0f;

    /* renamed from: g0.a$a, reason: collision with other inner class name */
    public interface InterfaceC0091a {
        void a();
    }

    public static final class b<T> implements c<T> {
        @Override // g0.a.c
        public final boolean a(float f) {
            throw new IllegalStateException("not implemented");
        }

        @Override // g0.a.c
        public final q0.a<T> b() {
            throw new IllegalStateException("not implemented");
        }

        @Override // g0.a.c
        public final boolean c(float f) {
            return false;
        }

        @Override // g0.a.c
        public final float d() {
            return 1.0f;
        }

        @Override // g0.a.c
        public final float e() {
            return 0.0f;
        }

        @Override // g0.a.c
        public final boolean isEmpty() {
            return true;
        }
    }

    public interface c<T> {
        boolean a(float f);

        q0.a<T> b();

        boolean c(float f);

        @FloatRange(from = 0.0d, to = 1.0d)
        float d();

        @FloatRange(from = 0.0d, to = 1.0d)
        float e();

        boolean isEmpty();
    }

    public static final class d<T> implements c<T> {

        /* renamed from: a, reason: collision with root package name */
        public final List<? extends q0.a<T>> f5742a;

        /* renamed from: c, reason: collision with root package name */
        public q0.a<T> f5744c = null;

        /* renamed from: d, reason: collision with root package name */
        public float f5745d = -1.0f;

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        public q0.a<T> f5743b = f(0.0f);

        public d(List<? extends q0.a<T>> list) {
            this.f5742a = list;
        }

        @Override // g0.a.c
        public final boolean a(float f) {
            q0.a<T> aVar = this.f5744c;
            q0.a<T> aVar2 = this.f5743b;
            if (aVar == aVar2 && this.f5745d == f) {
                return true;
            }
            this.f5744c = aVar2;
            this.f5745d = f;
            return false;
        }

        @Override // g0.a.c
        @NonNull
        public final q0.a<T> b() {
            return this.f5743b;
        }

        @Override // g0.a.c
        public final boolean c(float f) {
            q0.a<T> aVar = this.f5743b;
            if (f >= aVar.b() && f < aVar.a()) {
                return !this.f5743b.c();
            }
            this.f5743b = f(f);
            return true;
        }

        @Override // g0.a.c
        public final float d() {
            return this.f5742a.get(r0.size() - 1).a();
        }

        @Override // g0.a.c
        public final float e() {
            return this.f5742a.get(0).b();
        }

        public final q0.a<T> f(float f) {
            List<? extends q0.a<T>> list = this.f5742a;
            q0.a<T> aVar = list.get(list.size() - 1);
            if (f >= aVar.b()) {
                return aVar;
            }
            int size = list.size() - 2;
            while (true) {
                boolean z10 = false;
                if (size < 1) {
                    return list.get(0);
                }
                q0.a<T> aVar2 = list.get(size);
                if (this.f5743b != aVar2) {
                    if (f >= aVar2.b() && f < aVar2.a()) {
                        z10 = true;
                    }
                    if (z10) {
                        return aVar2;
                    }
                }
                size--;
            }
        }

        @Override // g0.a.c
        public final boolean isEmpty() {
            return false;
        }
    }

    public static final class e<T> implements c<T> {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        public final q0.a<T> f5746a;

        /* renamed from: b, reason: collision with root package name */
        public float f5747b = -1.0f;

        public e(List<? extends q0.a<T>> list) {
            this.f5746a = list.get(0);
        }

        @Override // g0.a.c
        public final boolean a(float f) {
            if (this.f5747b == f) {
                return true;
            }
            this.f5747b = f;
            return false;
        }

        @Override // g0.a.c
        public final q0.a<T> b() {
            return this.f5746a;
        }

        @Override // g0.a.c
        public final boolean c(float f) {
            return !this.f5746a.c();
        }

        @Override // g0.a.c
        public final float d() {
            return this.f5746a.a();
        }

        @Override // g0.a.c
        public final float e() {
            return this.f5746a.b();
        }

        @Override // g0.a.c
        public final boolean isEmpty() {
            return false;
        }
    }

    public a(List<? extends q0.a<K>> list) {
        c eVar;
        if (list.isEmpty()) {
            eVar = new b();
        } else {
            eVar = list.size() == 1 ? new e(list) : new d(list);
        }
        this.f5737c = eVar;
    }

    public final void a(InterfaceC0091a interfaceC0091a) {
        this.f5735a.add(interfaceC0091a);
    }

    public final q0.a<K> b() {
        q0.a<K> aVarB = this.f5737c.b();
        d0.c.a();
        return aVarB;
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float c() {
        if (this.f5741h == -1.0f) {
            this.f5741h = this.f5737c.d();
        }
        return this.f5741h;
    }

    public final float d() {
        q0.a<K> aVarB = b();
        if (aVarB.c()) {
            return 0.0f;
        }
        return aVarB.f13273d.getInterpolation(e());
    }

    public final float e() {
        if (this.f5736b) {
            return 0.0f;
        }
        q0.a<K> aVarB = b();
        if (aVarB.c()) {
            return 0.0f;
        }
        return (this.f5738d - aVarB.b()) / (aVarB.a() - aVarB.b());
    }

    public A f() {
        Interpolator interpolator;
        float fE = e();
        if (this.f5739e == null && this.f5737c.a(fE)) {
            return this.f;
        }
        q0.a<K> aVarB = b();
        Interpolator interpolator2 = aVarB.f13274e;
        A aG = (interpolator2 == null || (interpolator = aVarB.f) == null) ? g(aVarB, d()) : h(aVarB, fE, interpolator2.getInterpolation(fE), interpolator.getInterpolation(fE));
        this.f = aG;
        return aG;
    }

    public abstract A g(q0.a<K> aVar, float f);

    public A h(q0.a<K> aVar, float f, float f10, float f11) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    public void i() {
        int r02 = 0;
        while (true) {
            ArrayList arrayList = this.f5735a;
            if (r02 >= arrayList.size()) {
                return;
            }
            ((InterfaceC0091a) arrayList.get(r02)).a();
            r02++;
        }
    }

    public void j(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        c<K> cVar = this.f5737c;
        if (cVar.isEmpty()) {
            return;
        }
        if (this.f5740g == -1.0f) {
            this.f5740g = cVar.e();
        }
        float f10 = this.f5740g;
        if (f < f10) {
            if (f10 == -1.0f) {
                this.f5740g = cVar.e();
            }
            f = this.f5740g;
        } else if (f > c()) {
            f = c();
        }
        if (f == this.f5738d) {
            return;
        }
        this.f5738d = f;
        if (cVar.c(f)) {
            i();
        }
    }

    public final void k(@Nullable q0.c<A> cVar) {
        q0.c<A> cVar2 = this.f5739e;
        if (cVar2 != null) {
            cVar2.getClass();
        }
        this.f5739e = cVar;
    }
}
