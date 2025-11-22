package l8;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import l8.p;

/* loaded from: classes2.dex */
public abstract class h<C extends Collection<T>, T> extends p<C> {

    /* renamed from: b, reason: collision with root package name */
    public static final a f9504b = new a();

    /* renamed from: a, reason: collision with root package name */
    public final p<T> f9505a;

    public class a implements p.a {
        @Override // l8.p.a
        public final p<?> a(Type type, Set<? extends Annotation> set, b0 b0Var) {
            Class<?> clsC = d0.c(type);
            if (!set.isEmpty()) {
                return null;
            }
            if (clsC == List.class || clsC == Collection.class) {
                return new m(new i(b0Var.a(d0.a(type))));
            }
            if (clsC == Set.class) {
                return new m(new j(b0Var.a(d0.a(type))));
            }
            return null;
        }
    }

    public h(p pVar) {
        this.f9505a = pVar;
    }

    @Override // l8.p
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final C a(u uVar) throws IOException {
        C c10 = (C) e();
        uVar.a();
        while (uVar.e()) {
            c10.add(this.f9505a.a(uVar));
        }
        uVar.c();
        return c10;
    }

    public abstract C e();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // l8.p
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final void c(y yVar, C c10) throws IOException {
        yVar.a();
        Iterator it = c10.iterator();
        while (it.hasNext()) {
            this.f9505a.c(yVar, it.next());
        }
        yVar.d();
    }

    public final String toString() {
        return this.f9505a + ".collection()";
    }
}
