package m7;

import j7.u;
import j7.v;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class a<E> extends u<Object> {

    /* renamed from: c, reason: collision with root package name */
    public static final C0182a f10047c = new C0182a();

    /* renamed from: a, reason: collision with root package name */
    public final Class<E> f10048a;

    /* renamed from: b, reason: collision with root package name */
    public final n f10049b;

    /* renamed from: m7.a$a, reason: collision with other inner class name */
    public static class C0182a implements v {
        @Override // j7.v
        public final <T> u<T> b(j7.h hVar, p7.a<T> aVar) {
            Type type = aVar.f12845b;
            boolean z10 = type instanceof GenericArrayType;
            if (!z10 && (!(type instanceof Class) || !((Class) type).isArray())) {
                return null;
            }
            Type genericComponentType = z10 ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
            return new a(hVar, hVar.b(new p7.a<>(genericComponentType)), l7.a.e(genericComponentType));
        }
    }

    public a(j7.h hVar, u<E> uVar, Class<E> cls) {
        this.f10049b = new n(hVar, uVar, cls);
        this.f10048a = cls;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // j7.u
    public final Object a(q7.a aVar) throws IOException, ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        if (aVar.B() == 9) {
            aVar.s();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        aVar.a();
        while (aVar.i()) {
            arrayList.add(this.f10049b.a(aVar));
        }
        aVar.e();
        int size = arrayList.size();
        Object objNewInstance = Array.newInstance((Class<?>) this.f10048a, size);
        for (int r22 = 0; r22 < size; r22++) {
            Array.set(objNewInstance, r22, arrayList.get(r22));
        }
        return objNewInstance;
    }

    @Override // j7.u
    public final void b(q7.b bVar, Object obj) throws IOException, ArrayIndexOutOfBoundsException, IllegalArgumentException {
        if (obj == null) {
            bVar.j();
            return;
        }
        bVar.b();
        int length = Array.getLength(obj);
        for (int r12 = 0; r12 < length; r12++) {
            this.f10049b.b(bVar, Array.get(obj, r12));
        }
        bVar.e();
    }
}
