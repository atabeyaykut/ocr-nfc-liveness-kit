package ha;

import java.lang.reflect.Member;
import java.lang.reflect.Type;
import java.util.List;

/* loaded from: classes2.dex */
public interface f<M extends Member> {

    public static final class a {
        public static <M extends Member> void a(f<? extends M> fVar, Object[] args) {
            kotlin.jvm.internal.h.f(args, "args");
            if (b8.f.H(fVar) == args.length) {
                return;
            }
            StringBuilder sb2 = new StringBuilder("Callable expects ");
            sb2.append(b8.f.H(fVar));
            sb2.append(" arguments, but ");
            throw new IllegalArgumentException(androidx.browser.browseractions.a.b(sb2, args.length, " were provided."));
        }
    }

    List<Type> a();

    M b();

    Object call(Object[] objArr);

    Type getReturnType();
}
