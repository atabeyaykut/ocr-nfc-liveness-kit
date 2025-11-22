package tr.gov.turkiye.edevlet.kapisi.mkt.data;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Type;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.b0;
import l8.p;
import l8.t;
import l8.u;
import l8.y;

@Retention(RetentionPolicy.RUNTIME)
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\u0002\u0018\u00002\u00020\u0001:\u0001\u0004B\b\u0012\u0006\u0010\u0003\u001a\u00020\u0002¨\u0006\u0005"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/mkt/data/SpecifiedTypeOrNull;", "", "Ll8/u$b;", "token", "a", "data-mkt_release"}, k = 1, mv = {1, 8, 0})
@t
/* loaded from: classes3.dex */
public @interface SpecifiedTypeOrNull {

    public static final class a extends p<Object> {
        private final p<Object> delegate;
        private final u.b token;

        /* renamed from: tr.gov.turkiye.edevlet.kapisi.mkt.data.SpecifiedTypeOrNull$a$a, reason: collision with other inner class name */
        public static final class C0272a implements p.a {
            @Override // l8.p.a
            public final p<?> a(Type type, Set<? extends Annotation> annotations, b0 moshi) {
                h.f(type, "type");
                h.f(annotations, "annotations");
                h.f(moshi, "moshi");
                if (annotations.isEmpty()) {
                    return null;
                }
                u.b bVar = null;
                Set<? extends Annotation> setX1 = null;
                for (Annotation annotation : annotations) {
                    if (annotation instanceof SpecifiedTypeOrNull) {
                        bVar = ((SpecifiedTypeOrNull) annotation).token();
                        setX1 = m9.t.x1(annotations);
                        setX1.remove(annotation);
                    }
                }
                if (bVar == null) {
                    return null;
                }
                h.c(setX1);
                return new a(moshi.c(this, type, setX1), bVar);
            }
        }

        public a(p<Object> delegate, u.b token) {
            h.f(delegate, "delegate");
            h.f(token, "token");
            this.delegate = delegate;
            this.token = token;
        }

        @Override // l8.p
        public final Object a(u reader) throws IOException {
            h.f(reader, "reader");
            if (reader.k() == this.token) {
                return this.delegate.a(reader);
            }
            reader.p();
            return null;
        }

        @Override // l8.p
        public final void c(y writer, Object obj) throws IOException {
            h.f(writer, "writer");
            this.delegate.c(writer, obj);
        }
    }

    u.b token();
}
