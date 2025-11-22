package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class m6 implements r7 {

    /* renamed from: a, reason: collision with root package name */
    public static final m6 f3628a = new m6();

    @Override // com.google.android.gms.internal.measurement.r7
    public final p7 a(Class<?> cls) {
        if (!q6.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (p7) q6.o(cls.asSubclass(q6.class)).q(3);
        } catch (Exception e10) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.r7
    public final boolean b(Class<?> cls) {
        return q6.class.isAssignableFrom(cls);
    }
}
