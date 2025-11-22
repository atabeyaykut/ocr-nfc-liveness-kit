package b1;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public interface o<Model, Data> {

    public static class a<Data> {

        /* renamed from: a, reason: collision with root package name */
        public final v0.f f1049a;

        /* renamed from: b, reason: collision with root package name */
        public final List<v0.f> f1050b;

        /* renamed from: c, reason: collision with root package name */
        public final com.bumptech.glide.load.data.d<Data> f1051c;

        public a() {
            throw null;
        }

        public a(@NonNull v0.f fVar, @NonNull com.bumptech.glide.load.data.d<Data> dVar) {
            List<v0.f> listEmptyList = Collections.emptyList();
            q1.l.b(fVar);
            this.f1049a = fVar;
            q1.l.b(listEmptyList);
            this.f1050b = listEmptyList;
            q1.l.b(dVar);
            this.f1051c = dVar;
        }
    }

    boolean a(@NonNull Model model);

    @Nullable
    a<Data> b(@NonNull Model model, int r22, int r32, @NonNull v0.h hVar);
}
