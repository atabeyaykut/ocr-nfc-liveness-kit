package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.n6;
import com.google.android.gms.internal.measurement.q6;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public abstract class q6<MessageType extends q6<MessageType, BuilderType>, BuilderType extends n6<MessageType, BuilderType>> extends l5<MessageType, BuilderType> {
    private static final Map<Object, q6<?, ?>> zza = new ConcurrentHashMap();
    protected p8 zzc = p8.f;
    protected int zzd = -1;

    public static <E> w6<E> j(w6<E> w6Var) {
        int size = w6Var.size();
        return w6Var.v(size == 0 ? 10 : size + size);
    }

    public static Object k(Object obj, Method method, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static <T extends q6> void l(Class<T> cls, T t10) {
        zza.put(cls, t10);
    }

    public static <T extends q6> T o(Class<T> cls) throws ClassNotFoundException {
        Map<Object, q6<?, ?>> map = zza;
        q6<?, ?> q6Var = map.get(cls);
        if (q6Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                q6Var = map.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (q6Var == null) {
            q6Var = (q6) ((q6) y8.i(cls)).q(6);
            if (q6Var == null) {
                throw new IllegalStateException();
            }
            map.put(cls, q6Var);
        }
        return q6Var;
    }

    public static h7 p(v6 v6Var) {
        int size = v6Var.size();
        int r02 = size == 0 ? 10 : size + size;
        h7 h7Var = (h7) v6Var;
        if (r02 >= h7Var.f3537c) {
            return new h7(Arrays.copyOf(h7Var.f3536b, r02), h7Var.f3537c);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.l5
    public final int a() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.s7
    public final /* synthetic */ n6 b() {
        n6 n6Var = (n6) q(5);
        n6Var.k(this);
        return n6Var;
    }

    @Override // com.google.android.gms.internal.measurement.t7
    public final /* synthetic */ q6 d() {
        return (q6) q(6);
    }

    @Override // com.google.android.gms.internal.measurement.s7
    public final /* synthetic */ n6 e() {
        return (n6) q(5);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return a8.f3373c.a(getClass()).h(this, (q6) obj);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.s7
    public final int g() {
        int r02 = this.zzd;
        if (r02 != -1) {
            return r02;
        }
        int r03 = a8.f3373c.a(getClass()).c(this);
        this.zzd = r03;
        return r03;
    }

    @Override // com.google.android.gms.internal.measurement.l5
    public final void h(int r12) {
        this.zzd = r12;
    }

    public final int hashCode() {
        int r02 = this.zzb;
        if (r02 != 0) {
            return r02;
        }
        int r03 = a8.f3373c.a(getClass()).b(this);
        this.zzb = r03;
        return r03;
    }

    public final <MessageType extends q6<MessageType, BuilderType>, BuilderType extends n6<MessageType, BuilderType>> BuilderType m() {
        return (BuilderType) q(5);
    }

    public final BuilderType n() {
        BuilderType buildertype = (BuilderType) q(5);
        buildertype.k(this);
        return buildertype;
    }

    public abstract Object q(int r12);

    public final String toString() throws SecurityException {
        String string = super.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(string);
        u7.c(this, sb2, 0);
        return sb2.toString();
    }
}
