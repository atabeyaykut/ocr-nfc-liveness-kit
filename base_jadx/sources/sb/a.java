package sb;

import java.util.Collection;
import kc.a;
import m9.v;

/* loaded from: classes2.dex */
public final class a implements a.c {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f15371a;

    public a(boolean z10) {
        this.f15371a = z10;
    }

    @Override // kc.a.c
    public final Iterable d(Object obj) {
        ma.b bVarA = (ma.b) obj;
        if (this.f15371a) {
            bVarA = bVarA != null ? bVarA.a() : null;
        }
        Collection<? extends ma.b> collectionE = bVarA != null ? bVarA.e() : null;
        return collectionE == null ? v.f10173a : collectionE;
    }
}
