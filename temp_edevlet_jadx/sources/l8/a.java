package l8;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Set;
import l8.p;

/* loaded from: classes2.dex */
public final class a extends p<Object> {

    /* renamed from: c, reason: collision with root package name */
    public static final C0179a f9450c = new C0179a();

    /* renamed from: a, reason: collision with root package name */
    public final Class<?> f9451a;

    /* renamed from: b, reason: collision with root package name */
    public final p<Object> f9452b;

    /* renamed from: l8.a$a, reason: collision with other inner class name */
    public class C0179a implements p.a {
        @Override // l8.p.a
        public final p<?> a(Type type, Set<? extends Annotation> set, b0 b0Var) {
            Type genericComponentType = type instanceof GenericArrayType ? ((GenericArrayType) type).getGenericComponentType() : type instanceof Class ? ((Class) type).getComponentType() : null;
            if (genericComponentType != null && set.isEmpty()) {
                return new m(new a(d0.c(genericComponentType), b0Var.a(genericComponentType)));
            }
            return null;
        }
    }

    public a(Class<?> cls, p<Object> pVar) {
        this.f9451a = cls;
        this.f9452b = pVar;
    }

    @Override // l8.p
    public final Object a(u uVar) throws IOException, ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        ArrayList arrayList = new ArrayList();
        uVar.a();
        while (uVar.e()) {
            arrayList.add(this.f9452b.a(uVar));
        }
        uVar.c();
        Object objNewInstance = Array.newInstance(this.f9451a, arrayList.size());
        for (int r12 = 0; r12 < arrayList.size(); r12++) {
            Array.set(objNewInstance, r12, arrayList.get(r12));
        }
        return objNewInstance;
    }

    @Override // l8.p
    public final void c(y yVar, Object obj) throws IOException {
        yVar.a();
        int length = Array.getLength(obj);
        for (int r12 = 0; r12 < length; r12++) {
            this.f9452b.c(yVar, Array.get(obj, r12));
        }
        yVar.d();
    }

    public final String toString() {
        return this.f9452b + ".array()";
    }
}
