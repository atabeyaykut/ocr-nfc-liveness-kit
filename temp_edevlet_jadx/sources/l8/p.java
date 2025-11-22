package l8;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class p<T> {

    public interface a {
        p<?> a(Type type, Set<? extends Annotation> set, b0 b0Var);
    }

    public abstract T a(u uVar) throws IOException;

    public final m b() {
        return new m(this);
    }

    public abstract void c(y yVar, T t10) throws IOException;
}
