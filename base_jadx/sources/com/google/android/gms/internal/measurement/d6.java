package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class d6 {

    /* renamed from: b, reason: collision with root package name */
    public static volatile d6 f3441b;

    /* renamed from: c, reason: collision with root package name */
    public static volatile d6 f3442c;

    /* renamed from: d, reason: collision with root package name */
    public static final d6 f3443d = new d6(0);

    /* renamed from: a, reason: collision with root package name */
    public final Map<c6, p6<?, ?>> f3444a;

    public d6() {
        this.f3444a = new HashMap();
    }

    public d6(int r12) {
        this.f3444a = Collections.emptyMap();
    }

    public static d6 a() {
        d6 d6Var = f3441b;
        if (d6Var == null) {
            synchronized (d6.class) {
                d6Var = f3441b;
                if (d6Var == null) {
                    d6Var = f3443d;
                    f3441b = d6Var;
                }
            }
        }
        return d6Var;
    }

    public final <ContainingType extends s7> p6<ContainingType, ?> b(ContainingType containingtype, int r32) {
        return (p6) this.f3444a.get(new c6(r32, containingtype));
    }
}
