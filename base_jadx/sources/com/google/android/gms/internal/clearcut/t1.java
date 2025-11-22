package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class t1 implements s1 {
    @Override // com.google.android.gms.internal.clearcut.s1
    public final void b(Object obj) {
        r1 r1Var = (r1) obj;
        if (r1Var.isEmpty()) {
            return;
        }
        Iterator it = r1Var.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            entry.getKey();
            entry.getValue();
            throw new NoSuchMethodError();
        }
    }

    @Override // com.google.android.gms.internal.clearcut.s1
    public final r1 f() {
        r1 r1Var = r1.f3289b;
        return r1Var.isEmpty() ? new r1() : new r1(r1Var);
    }

    @Override // com.google.android.gms.internal.clearcut.s1
    public final void o() {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.clearcut.s1
    public final Object p(Object obj) {
        ((r1) obj).f3290a = false;
        return obj;
    }

    @Override // com.google.android.gms.internal.clearcut.s1
    public final r1 q(Object obj, Object obj2) {
        r1 r1Var = (r1) obj;
        r1 r1Var2 = (r1) obj2;
        if (!r1Var2.isEmpty()) {
            if (!r1Var.f3290a) {
                r1Var = r1Var.isEmpty() ? new r1() : new r1(r1Var);
            }
            r1Var.b();
            if (!r1Var2.isEmpty()) {
                r1Var.putAll(r1Var2);
            }
        }
        return r1Var;
    }

    @Override // com.google.android.gms.internal.clearcut.s1
    public final boolean r(Object obj) {
        return !((r1) obj).f3290a;
    }

    @Override // com.google.android.gms.internal.clearcut.s1
    public final r1 s(Object obj) {
        return (r1) obj;
    }

    @Override // com.google.android.gms.internal.clearcut.s1
    public final r1 t(Object obj) {
        return (r1) obj;
    }
}
