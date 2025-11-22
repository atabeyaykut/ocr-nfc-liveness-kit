package b1;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import r1.a;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final s f1052a;

    /* renamed from: b, reason: collision with root package name */
    public final a f1053b;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final HashMap f1054a = new HashMap();

        /* renamed from: b1.q$a$a, reason: collision with other inner class name */
        public static class C0043a<Model> {

            /* renamed from: a, reason: collision with root package name */
            public final List<o<Model, ?>> f1055a;

            public C0043a(List<o<Model, ?>> list) {
                this.f1055a = list;
            }
        }
    }

    public q(@NonNull a.c cVar) {
        s sVar = new s(cVar);
        this.f1053b = new a();
        this.f1052a = sVar;
    }

    @NonNull
    public final synchronized ArrayList a(@NonNull Class cls) {
        return this.f1052a.e(cls);
    }
}
