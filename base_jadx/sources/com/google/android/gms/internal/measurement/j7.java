package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class j7 implements r7 {

    /* renamed from: a, reason: collision with root package name */
    public final r7[] f3582a;

    public j7(r7... r7VarArr) {
        this.f3582a = r7VarArr;
    }

    @Override // com.google.android.gms.internal.measurement.r7
    public final p7 a(Class<?> cls) {
        for (int r02 = 0; r02 < 2; r02++) {
            r7 r7Var = this.f3582a[r02];
            if (r7Var.b(cls)) {
                return r7Var.a(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }

    @Override // com.google.android.gms.internal.measurement.r7
    public final boolean b(Class<?> cls) {
        for (int r12 = 0; r12 < 2; r12++) {
            if (this.f3582a[r12].b(cls)) {
                return true;
            }
        }
        return false;
    }
}
