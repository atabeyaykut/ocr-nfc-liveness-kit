package a0;

import kotlin.jvm.internal.f;
import kotlin.jvm.internal.w;
import l9.m;
import v.e;

/* loaded from: classes.dex */
public final /* synthetic */ class a extends f implements x9.a<m> {
    public a(e eVar) {
        super(0, eVar);
    }

    @Override // kotlin.jvm.internal.a, da.c
    public final String getName() {
        return "dismiss";
    }

    @Override // kotlin.jvm.internal.a
    public final da.f getOwner() {
        return w.a(e.class);
    }

    @Override // kotlin.jvm.internal.a
    public final String getSignature() {
        return "dismiss()V";
    }

    @Override // x9.a
    public final m invoke() {
        ((e) this.receiver).dismiss();
        return m.f9594a;
    }
}
