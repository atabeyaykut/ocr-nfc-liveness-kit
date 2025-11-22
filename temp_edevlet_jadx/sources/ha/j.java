package ha;

import java.lang.reflect.Member;
import java.lang.reflect.Type;
import java.util.List;
import m9.v;

/* loaded from: classes2.dex */
public final class j implements f {

    /* renamed from: a, reason: collision with root package name */
    public static final j f7064a = new j();

    @Override // ha.f
    public final List<Type> a() {
        return v.f10173a;
    }

    @Override // ha.f
    public final /* bridge */ /* synthetic */ Member b() {
        return null;
    }

    @Override // ha.f
    public final Object call(Object[] args) {
        kotlin.jvm.internal.h.f(args, "args");
        throw new UnsupportedOperationException("call/callBy are not supported for this declaration.");
    }

    @Override // ha.f
    public final Type getReturnType() {
        Class TYPE = Void.TYPE;
        kotlin.jvm.internal.h.e(TYPE, "TYPE");
        return TYPE;
    }
}
