package kotlin.reflect.jvm.internal.impl.load.java;

import eb.w;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import ma.q0;
import x9.l;

/* loaded from: classes2.dex */
public final class a extends j implements l<ma.b, Boolean> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ q0 f8980a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(q0 q0Var) {
        super(1);
        this.f8980a = q0Var;
    }

    @Override // x9.l
    public final Boolean invoke(ma.b bVar) {
        ma.b it = bVar;
        h.f(it, "it");
        return Boolean.valueOf(e.f8995j.containsKey(w.b(this.f8980a)));
    }
}
