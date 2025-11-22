package com.google.android.gms.internal.vision;

/* loaded from: classes.dex */
public final class h2 implements o2 {

    /* renamed from: a, reason: collision with root package name */
    public final o2[] f3979a;

    public h2(o2... o2VarArr) {
        this.f3979a = o2VarArr;
    }

    @Override // com.google.android.gms.internal.vision.o2
    public final l2 a(Class<?> cls) {
        for (o2 o2Var : this.f3979a) {
            if (o2Var.b(cls)) {
                return o2Var.a(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }

    @Override // com.google.android.gms.internal.vision.o2
    public final boolean b(Class<?> cls) {
        for (o2 o2Var : this.f3979a) {
            if (o2Var.b(cls)) {
                return true;
            }
        }
        return false;
    }
}
