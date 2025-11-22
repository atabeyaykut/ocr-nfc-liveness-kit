package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
public final class q1 implements w1 {

    /* renamed from: a, reason: collision with root package name */
    public final w1[] f3268a;

    public q1(w1... w1VarArr) {
        this.f3268a = w1VarArr;
    }

    @Override // com.google.android.gms.internal.clearcut.w1
    public final v1 a(Class<?> cls) {
        for (w1 w1Var : this.f3268a) {
            if (w1Var.b(cls)) {
                return w1Var.a(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }

    @Override // com.google.android.gms.internal.clearcut.w1
    public final boolean b(Class<?> cls) {
        for (w1 w1Var : this.f3268a) {
            if (w1Var.b(cls)) {
                return true;
            }
        }
        return false;
    }
}
