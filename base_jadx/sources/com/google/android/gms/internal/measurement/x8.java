package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public abstract class x8 {

    /* renamed from: a, reason: collision with root package name */
    public final Unsafe f3837a;

    public x8(Unsafe unsafe) {
        this.f3837a = unsafe;
    }

    public abstract double a(long j10, Object obj);

    public abstract float b(long j10, Object obj);

    public abstract void c(Object obj, long j10, boolean z10);

    public abstract void d(Object obj, long j10, byte b10);

    public abstract void e(Object obj, long j10, double d10);

    public abstract void f(Object obj, long j10, float f);

    public abstract boolean g(long j10, Object obj);

    public final int h(Class<?> cls) {
        return this.f3837a.arrayBaseOffset(cls);
    }

    public final int i(Class<?> cls) {
        return this.f3837a.arrayIndexScale(cls);
    }

    public final int j(long j10, Object obj) {
        return this.f3837a.getInt(obj, j10);
    }

    public final long k(long j10, Object obj) {
        return this.f3837a.getLong(obj, j10);
    }

    public final void l(Field field) {
        this.f3837a.objectFieldOffset(field);
    }

    public final Object m(long j10, Object obj) {
        return this.f3837a.getObject(obj, j10);
    }

    public final void n(int r22, long j10, Object obj) {
        this.f3837a.putInt(obj, j10, r22);
    }

    public final void o(Object obj, long j10, long j11) {
        this.f3837a.putLong(obj, j10, j11);
    }

    public final void p(long j10, Object obj, Object obj2) {
        this.f3837a.putObject(obj, j10, obj2);
    }
}
