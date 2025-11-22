package com.google.android.gms.internal.vision;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class j2 implements k2 {
    @Override // com.google.android.gms.internal.vision.k2
    public final i2 a(Object obj) {
        return (i2) obj;
    }

    @Override // com.google.android.gms.internal.vision.k2
    public final void b(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.vision.k2
    public final i2 c(Object obj) {
        return (i2) obj;
    }

    @Override // com.google.android.gms.internal.vision.k2
    public final i2 d(Object obj, Object obj2) {
        i2 i2Var = (i2) obj;
        i2 i2Var2 = (i2) obj2;
        if (!i2Var2.isEmpty()) {
            if (!i2Var.f3997a) {
                i2Var = i2Var.isEmpty() ? new i2() : new i2(i2Var);
            }
            i2Var.c();
            if (!i2Var2.isEmpty()) {
                i2Var.putAll(i2Var2);
            }
        }
        return i2Var;
    }

    @Override // com.google.android.gms.internal.vision.k2
    /* renamed from: d, reason: collision with other method in class */
    public final void mo30d(Object obj, Object obj2) {
        i2 i2Var = (i2) obj;
        if (i2Var.isEmpty()) {
            return;
        }
        Iterator it = i2Var.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            entry.getKey();
            entry.getValue();
            throw new NoSuchMethodError();
        }
    }

    @Override // com.google.android.gms.internal.vision.k2
    public final boolean e(Object obj) {
        return !((i2) obj).f3997a;
    }

    @Override // com.google.android.gms.internal.vision.k2
    public final Object f(Object obj) {
        ((i2) obj).f3997a = false;
        return obj;
    }

    @Override // com.google.android.gms.internal.vision.k2
    public final i2 k() {
        i2 i2Var = i2.f3996b;
        return i2Var.isEmpty() ? new i2() : new i2(i2Var);
    }
}
