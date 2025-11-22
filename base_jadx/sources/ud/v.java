package ud;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Optional;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import ud.f;

@IgnoreJRERequirement
/* loaded from: classes2.dex */
public final class v extends f.a {

    /* renamed from: a, reason: collision with root package name */
    public static final v f18069a = new v();

    @IgnoreJRERequirement
    public static final class a<T> implements f<rc.d0, Optional<T>> {

        /* renamed from: a, reason: collision with root package name */
        public final f<rc.d0, T> f18070a;

        public a(f<rc.d0, T> fVar) {
            this.f18070a = fVar;
        }

        @Override // ud.f
        public final Object a(rc.d0 d0Var) throws IOException {
            return Optional.ofNullable(this.f18070a.a(d0Var));
        }
    }

    @Override // ud.f.a
    public final f<rc.d0, ?> b(Type type, Annotation[] annotationArr, d0 d0Var) {
        if (h0.f(type) != Optional.class) {
            return null;
        }
        return new a(d0Var.e(h0.e(0, (ParameterizedType) type), annotationArr));
    }
}
