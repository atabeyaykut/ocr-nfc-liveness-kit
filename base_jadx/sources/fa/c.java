package fa;

import gb.h;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.w;
import ma.q0;
import x9.p;
import yb.z;

/* loaded from: classes2.dex */
public final /* synthetic */ class c extends f implements p<z, h, q0> {

    /* renamed from: a, reason: collision with root package name */
    public static final c f5552a = new c();

    public c() {
        super(2);
    }

    @Override // kotlin.jvm.internal.a, da.c
    public final String getName() {
        return "loadFunction";
    }

    @Override // kotlin.jvm.internal.a
    public final da.f getOwner() {
        return w.a(z.class);
    }

    @Override // kotlin.jvm.internal.a
    public final String getSignature() {
        return "loadFunction(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Function;)Lorg/jetbrains/kotlin/descriptors/SimpleFunctionDescriptor;";
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final q0 mo7invoke(z zVar, h hVar) {
        z p02 = zVar;
        h p12 = hVar;
        kotlin.jvm.internal.h.f(p02, "p0");
        kotlin.jvm.internal.h.f(p12, "p1");
        return p02.e(p12);
    }
}
