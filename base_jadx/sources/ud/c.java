package ud;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

/* loaded from: classes2.dex */
public interface c<R, T> {

    public static abstract class a {
        public abstract c a(Type type, Annotation[] annotationArr);
    }

    Type a();

    Object b(u uVar);
}
