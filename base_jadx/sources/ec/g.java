package ec;

import cc.c1;
import cc.e0;
import ja.k;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import m9.v;
import ma.w0;

/* loaded from: classes2.dex */
public final class g implements c1 {

    /* renamed from: a, reason: collision with root package name */
    public final h f5253a;

    /* renamed from: b, reason: collision with root package name */
    public final String[] f5254b;

    /* renamed from: c, reason: collision with root package name */
    public final String f5255c;

    public g(h hVar, String... formatParams) {
        kotlin.jvm.internal.h.f(formatParams, "formatParams");
        this.f5253a = hVar;
        this.f5254b = formatParams;
        Object[] objArrCopyOf = Arrays.copyOf(formatParams, formatParams.length);
        String str = String.format(hVar.f5275a, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
        kotlin.jvm.internal.h.e(str, "format(this, *args)");
        String str2 = String.format("[Error type: %s]", Arrays.copyOf(new Object[]{str}, 1));
        kotlin.jvm.internal.h.e(str2, "format(this, *args)");
        this.f5255c = str2;
    }

    @Override // cc.c1
    public final List<w0> getParameters() {
        return v.f10173a;
    }

    @Override // cc.c1
    public final Collection<e0> l() {
        return v.f10173a;
    }

    @Override // cc.c1
    public final k m() {
        ja.d dVar = ja.d.f;
        return ja.d.f;
    }

    @Override // cc.c1
    public final ma.g n() {
        i.f5277a.getClass();
        return i.f5279c;
    }

    @Override // cc.c1
    public final boolean o() {
        return false;
    }

    public final String toString() {
        return this.f5255c;
    }
}
