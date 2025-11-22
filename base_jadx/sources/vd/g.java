package vd;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import ud.c;
import ud.c0;
import ud.h0;

/* loaded from: classes2.dex */
public final class g extends c.a {

    /* renamed from: a, reason: collision with root package name */
    public final y8.e f18570a = null;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f18571b = false;

    @Override // ud.c.a
    public final ud.c a(Type type, Annotation[] annotationArr) {
        Type type2;
        boolean z10;
        boolean z11;
        Type typeE;
        Class<?> clsF = h0.f(type);
        if (clsF == y8.a.class) {
            return new f(Void.class, this.f18570a, this.f18571b, false, true, false, false, false, true);
        }
        boolean z12 = true;
        boolean z13 = clsF == y8.b.class;
        boolean z14 = clsF == y8.f.class;
        boolean z15 = clsF == y8.c.class;
        if (clsF != y8.d.class && !z13 && !z14 && !z15) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            String str = !z13 ? !z14 ? z15 ? "Maybe" : "Observable" : "Single" : "Flowable";
            throw new IllegalStateException(str + " return type must be parameterized as " + str + "<Foo> or " + str + "<? extends Foo>");
        }
        Type typeE2 = h0.e(0, (ParameterizedType) type);
        Class<?> clsF2 = h0.f(typeE2);
        if (clsF2 == c0.class) {
            if (!(typeE2 instanceof ParameterizedType)) {
                throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
            }
            typeE = h0.e(0, (ParameterizedType) typeE2);
            z12 = false;
        } else {
            if (clsF2 != d.class) {
                type2 = typeE2;
                z10 = false;
                z11 = true;
                return new f(type2, this.f18570a, this.f18571b, z10, z11, z13, z14, z15, false);
            }
            if (!(typeE2 instanceof ParameterizedType)) {
                throw new IllegalStateException("Result must be parameterized as Result<Foo> or Result<? extends Foo>");
            }
            typeE = h0.e(0, (ParameterizedType) typeE2);
        }
        type2 = typeE;
        z10 = z12;
        z11 = false;
        return new f(type2, this.f18570a, this.f18571b, z10, z11, z13, z14, z15, false);
    }
}
