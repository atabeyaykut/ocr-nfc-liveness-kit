package lc;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class k implements h<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x9.p f9732a;

    public k(x9.p pVar) {
        this.f9732a = pVar;
    }

    @Override // lc.h
    public final Iterator<Object> iterator() {
        x9.p block = this.f9732a;
        kotlin.jvm.internal.h.f(block, "block");
        i iVar = new i();
        iVar.f9731d = c5.w.g(iVar, iVar, block);
        return iVar;
    }
}
