package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
public final class u0 implements w1 {

    /* renamed from: a, reason: collision with root package name */
    public static final u0 f3319a = new u0();

    @Override // com.google.android.gms.internal.clearcut.w1
    public final v1 a(Class<?> cls) {
        if (!v0.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (v1) v0.h(cls.asSubclass(v0.class)).e(3);
        } catch (Exception e10) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e10);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.w1
    public final boolean b(Class<?> cls) {
        return v0.class.isAssignableFrom(cls);
    }
}
