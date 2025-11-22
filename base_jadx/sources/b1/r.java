package b1;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import b1.o;
import com.bumptech.glide.load.data.d;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class r<Model, Data> implements o<Model, Data> {

    /* renamed from: a, reason: collision with root package name */
    public final List<o<Model, Data>> f1056a;

    /* renamed from: b, reason: collision with root package name */
    public final Pools.Pool<List<Throwable>> f1057b;

    public static class a<Data> implements com.bumptech.glide.load.data.d<Data>, d.a<Data> {

        /* renamed from: a, reason: collision with root package name */
        public final List<com.bumptech.glide.load.data.d<Data>> f1058a;

        /* renamed from: b, reason: collision with root package name */
        public final Pools.Pool<List<Throwable>> f1059b;

        /* renamed from: c, reason: collision with root package name */
        public int f1060c;

        /* renamed from: d, reason: collision with root package name */
        public com.bumptech.glide.j f1061d;

        /* renamed from: e, reason: collision with root package name */
        public d.a<? super Data> f1062e;

        @Nullable
        public List<Throwable> f;

        /* renamed from: g, reason: collision with root package name */
        public boolean f1063g;

        public a(@NonNull ArrayList arrayList, @NonNull Pools.Pool pool) {
            this.f1059b = pool;
            if (arrayList.isEmpty()) {
                throw new IllegalArgumentException("Must not be empty.");
            }
            this.f1058a = arrayList;
            this.f1060c = 0;
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public final Class<Data> a() {
            return this.f1058a.get(0).a();
        }

        @Override // com.bumptech.glide.load.data.d
        public final void b() {
            List<Throwable> list = this.f;
            if (list != null) {
                this.f1059b.release(list);
            }
            this.f = null;
            Iterator<com.bumptech.glide.load.data.d<Data>> it = this.f1058a.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
        }

        @Override // com.bumptech.glide.load.data.d.a
        public final void c(@NonNull Exception exc) {
            List<Throwable> list = this.f;
            q1.l.b(list);
            list.add(exc);
            g();
        }

        @Override // com.bumptech.glide.load.data.d
        public final void cancel() {
            this.f1063g = true;
            Iterator<com.bumptech.glide.load.data.d<Data>> it = this.f1058a.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public final v0.a d() {
            return this.f1058a.get(0).d();
        }

        @Override // com.bumptech.glide.load.data.d
        public final void e(@NonNull com.bumptech.glide.j jVar, @NonNull d.a<? super Data> aVar) {
            this.f1061d = jVar;
            this.f1062e = aVar;
            this.f = this.f1059b.acquire();
            this.f1058a.get(this.f1060c).e(jVar, this);
            if (this.f1063g) {
                cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.d.a
        public final void f(@Nullable Data data) {
            if (data != null) {
                this.f1062e.f(data);
            } else {
                g();
            }
        }

        public final void g() {
            if (this.f1063g) {
                return;
            }
            if (this.f1060c < this.f1058a.size() - 1) {
                this.f1060c++;
                e(this.f1061d, this.f1062e);
            } else {
                q1.l.b(this.f);
                this.f1062e.c(new x0.r("Fetch failed", new ArrayList(this.f)));
            }
        }
    }

    public r(@NonNull ArrayList arrayList, @NonNull Pools.Pool pool) {
        this.f1056a = arrayList;
        this.f1057b = pool;
    }

    @Override // b1.o
    public final boolean a(@NonNull Model model) {
        Iterator<o<Model, Data>> it = this.f1056a.iterator();
        while (it.hasNext()) {
            if (it.next().a(model)) {
                return true;
            }
        }
        return false;
    }

    @Override // b1.o
    public final o.a<Data> b(@NonNull Model model, int r10, int r11, @NonNull v0.h hVar) {
        o.a<Data> aVarB;
        List<o<Model, Data>> list = this.f1056a;
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        v0.f fVar = null;
        for (int r42 = 0; r42 < size; r42++) {
            o<Model, Data> oVar = list.get(r42);
            if (oVar.a(model) && (aVarB = oVar.b(model, r10, r11, hVar)) != null) {
                arrayList.add(aVarB.f1051c);
                fVar = aVarB.f1049a;
            }
        }
        if (arrayList.isEmpty() || fVar == null) {
            return null;
        }
        return new o.a<>(fVar, new a(arrayList, this.f1057b));
    }

    public final String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f1056a.toArray()) + '}';
    }
}
