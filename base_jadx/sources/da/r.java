package da;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class r implements ParameterizedType, Type {

    /* renamed from: a, reason: collision with root package name */
    public final Class<?> f4723a;

    /* renamed from: b, reason: collision with root package name */
    public final Type f4724b;

    /* renamed from: c, reason: collision with root package name */
    public final Type[] f4725c;

    public /* synthetic */ class a extends kotlin.jvm.internal.g implements x9.l<Type, String> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4726a = new a();

        public a() {
            super(1, t.class, "typeToString", "typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;", 1);
        }

        @Override // x9.l
        public final String invoke(Type type) {
            Type p02 = type;
            kotlin.jvm.internal.h.f(p02, "p0");
            return t.a(p02);
        }
    }

    public r(Class cls, Type type, ArrayList arrayList) {
        this.f4723a = cls;
        this.f4724b = type;
        this.f4725c = (Type[]) arrayList.toArray(new Type[0]);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) obj;
            if (kotlin.jvm.internal.h.a(this.f4723a, parameterizedType.getRawType()) && kotlin.jvm.internal.h.a(this.f4724b, parameterizedType.getOwnerType())) {
                if (Arrays.equals(this.f4725c, parameterizedType.getActualTypeArguments())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type[] getActualTypeArguments() {
        return this.f4725c;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getOwnerType() {
        return this.f4724b;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getRawType() {
        return this.f4723a;
    }

    @Override // java.lang.reflect.Type
    public final String getTypeName() {
        String strA;
        StringBuilder sb2 = new StringBuilder();
        Class<?> cls = this.f4723a;
        Type type = this.f4724b;
        if (type != null) {
            sb2.append(t.a(type));
            sb2.append("$");
            strA = cls.getSimpleName();
        } else {
            strA = t.a(cls);
        }
        sb2.append(strA);
        Type[] typeArr = this.f4725c;
        if (!(typeArr.length == 0)) {
            m9.k.u0(typeArr, sb2, ", ", "<", ">", -1, "...", a.f4726a);
        }
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final int hashCode() {
        int r02 = this.f4723a.hashCode();
        Type type = this.f4724b;
        return (r02 ^ (type != null ? type.hashCode() : 0)) ^ Arrays.hashCode(this.f4725c);
    }

    public final String toString() {
        return getTypeName();
    }
}
