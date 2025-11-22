package sa;

import java.lang.reflect.Member;

/* loaded from: classes2.dex */
public final /* synthetic */ class j extends kotlin.jvm.internal.f implements x9.l<Member, Boolean> {

    /* renamed from: a, reason: collision with root package name */
    public static final j f15355a = new j();

    public j() {
        super(1);
    }

    @Override // kotlin.jvm.internal.a, da.c
    public final String getName() {
        return "isSynthetic";
    }

    @Override // kotlin.jvm.internal.a
    public final da.f getOwner() {
        return kotlin.jvm.internal.w.a(Member.class);
    }

    @Override // kotlin.jvm.internal.a
    public final String getSignature() {
        return "isSynthetic()Z";
    }

    @Override // x9.l
    public final Boolean invoke(Member member) {
        Member p02 = member;
        kotlin.jvm.internal.h.f(p02, "p0");
        return Boolean.valueOf(p02.isSynthetic());
    }
}
