package b1;

import androidx.annotation.NonNull;
import b1.o;
import com.bumptech.glide.load.data.d;

/* loaded from: classes.dex */
public final class w<Model> implements o<Model, Model> {

    /* renamed from: a, reason: collision with root package name */
    public static final w<?> f1080a = new w<>();

    public static class a<Model> implements p<Model, Model> {

        /* renamed from: a, reason: collision with root package name */
        public static final a<?> f1081a = new a<>();

        @Deprecated
        public a() {
        }

        @Override // b1.p
        @NonNull
        public final o<Model, Model> a(s sVar) {
            return w.f1080a;
        }
    }

    public static class b<Model> implements com.bumptech.glide.load.data.d<Model> {

        /* renamed from: a, reason: collision with root package name */
        public final Model f1082a;

        public b(Model model) {
            this.f1082a = model;
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public final Class<Model> a() {
            return (Class<Model>) this.f1082a.getClass();
        }

        @Override // com.bumptech.glide.load.data.d
        public final void b() {
        }

        @Override // com.bumptech.glide.load.data.d
        public final void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public final v0.a d() {
            return v0.a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void e(@NonNull com.bumptech.glide.j jVar, @NonNull d.a<? super Model> aVar) {
            aVar.f(this.f1082a);
        }
    }

    @Deprecated
    public w() {
    }

    @Override // b1.o
    public final boolean a(@NonNull Model model) {
        return true;
    }

    @Override // b1.o
    public final o.a<Model> b(@NonNull Model model, int r22, int r32, @NonNull v0.h hVar) {
        return new o.a<>(new p1.b(model), new b(model));
    }
}
