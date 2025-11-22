package com.google.android.gms.internal.vision;

/* loaded from: classes.dex */
public final class j1 implements o2 {

    /* renamed from: a, reason: collision with root package name */
    public static final j1 f4017a = new j1();

    @Override // com.google.android.gms.internal.vision.o2
    public final l2 a(Class<?> cls) {
        if (!i1.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (l2) i1.h(cls.asSubclass(i1.class)).i(3);
        } catch (Exception e10) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e10);
        }
    }

    @Override // com.google.android.gms.internal.vision.o2
    public final boolean b(Class<?> cls) {
        return i1.class.isAssignableFrom(cls);
    }
}
