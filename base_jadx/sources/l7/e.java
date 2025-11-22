package l7;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

/* loaded from: classes2.dex */
public final class e implements j<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Type f9409a;

    public e(Type type) {
        this.f9409a = type;
    }

    @Override // l7.j
    public final Object h() {
        Type type = this.f9409a;
        if (!(type instanceof ParameterizedType)) {
            throw new j7.m("Invalid EnumSet type: " + type.toString());
        }
        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
        if (type2 instanceof Class) {
            return EnumSet.noneOf((Class) type2);
        }
        throw new j7.m("Invalid EnumSet type: " + type.toString());
    }
}
