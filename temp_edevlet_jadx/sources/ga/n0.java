package ga;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.List;

/* loaded from: classes2.dex */
public final class n0 extends kotlin.jvm.internal.j implements x9.a<Type> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p0 f6089a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6090b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l9.e<List<Type>> f6091c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public n0(p0 p0Var, int r22, l9.e<? extends List<? extends Type>> eVar) {
        super(0);
        this.f6089a = p0Var;
        this.f6090b = r22;
        this.f6091c = eVar;
    }

    @Override // x9.a
    public final Type invoke() {
        Class genericComponentType;
        p0 p0Var = this.f6089a;
        Type typeE = p0Var.e();
        if (typeE instanceof Class) {
            Class cls = (Class) typeE;
            genericComponentType = cls.isArray() ? cls.getComponentType() : Object.class;
        } else {
            boolean z10 = typeE instanceof GenericArrayType;
            int r42 = this.f6090b;
            if (z10) {
                if (r42 != 0) {
                    throw new l9.f("Array type has been queried for a non-0th argument: " + p0Var, 1);
                }
                genericComponentType = ((GenericArrayType) typeE).getGenericComponentType();
            } else {
                if (!(typeE instanceof ParameterizedType)) {
                    throw new l9.f("Non-generic type has been queried for arguments: " + p0Var, 1);
                }
                genericComponentType = this.f6091c.getValue().get(r42);
                if (genericComponentType instanceof WildcardType) {
                    WildcardType wildcardType = (WildcardType) genericComponentType;
                    Type[] lowerBounds = wildcardType.getLowerBounds();
                    kotlin.jvm.internal.h.e(lowerBounds, "argument.lowerBounds");
                    Type type = (Type) m9.k.r0(lowerBounds);
                    if (type == null) {
                        Type[] upperBounds = wildcardType.getUpperBounds();
                        kotlin.jvm.internal.h.e(upperBounds, "argument.upperBounds");
                        genericComponentType = (Type) m9.k.q0(upperBounds);
                    } else {
                        genericComponentType = type;
                    }
                }
            }
        }
        kotlin.jvm.internal.h.e(genericComponentType, "{\n                      …                        }");
        return genericComponentType;
    }
}
