package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.v0;
import com.google.android.gms.internal.clearcut.v0.a;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public abstract class v0<MessageType extends v0<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends n<MessageType, BuilderType> {
    private static Map<Object, v0<?, ?>> zzjr = new ConcurrentHashMap();
    protected b3 zzjp = b3.f;
    private int zzjq = -1;

    public static abstract class a<MessageType extends v0<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends o<MessageType, BuilderType> {

        /* renamed from: a, reason: collision with root package name */
        public final MessageType f3323a;

        /* renamed from: b, reason: collision with root package name */
        public MessageType f3324b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f3325c = false;

        public a(MessageType messagetype) {
            this.f3323a = messagetype;
            this.f3324b = (MessageType) messagetype.e(4);
        }

        @Override // com.google.android.gms.internal.clearcut.z1
        public final /* synthetic */ v0 c() {
            return this.f3323a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final /* synthetic */ Object clone() throws CloneNotSupportedException {
            a aVar = (a) this.f3323a.e(5);
            aVar.d(f());
            return aVar;
        }

        public final BuilderType d(MessageType messagetype) {
            e();
            MessageType messagetype2 = this.f3324b;
            j2 j2Var = j2.f3165c;
            j2Var.getClass();
            j2Var.a(messagetype2.getClass()).e(messagetype2, messagetype);
            return this;
        }

        public final void e() {
            if (this.f3325c) {
                MessageType messagetype = (MessageType) this.f3324b.e(4);
                MessageType messagetype2 = this.f3324b;
                j2 j2Var = j2.f3165c;
                j2Var.getClass();
                j2Var.a(messagetype.getClass()).e(messagetype, messagetype2);
                this.f3324b = messagetype;
                this.f3325c = false;
            }
        }

        public final v0 f() {
            if (!this.f3325c) {
                MessageType messagetype = this.f3324b;
                j2 j2Var = j2.f3165c;
                j2Var.getClass();
                j2Var.a(messagetype.getClass()).a(messagetype);
                this.f3325c = true;
            }
            return this.f3324b;
        }
    }

    public static class b<T extends v0<T, ?>> extends p<T> {
    }

    public static abstract class c<MessageType extends c<MessageType, BuilderType>, BuilderType> extends v0<MessageType, BuilderType> implements z1 {
        protected n0<d> zzjv = n0.f3234d;
    }

    public static final class d implements q0<d> {
        @Override // com.google.android.gms.internal.clearcut.q0
        public final d2 a() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.clearcut.q0
        public final void c() {
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            ((d) obj).getClass();
            return 0;
        }

        @Override // com.google.android.gms.internal.clearcut.q0
        public final r3 i() {
            throw null;
        }

        @Override // com.google.android.gms.internal.clearcut.q0
        public final void j() {
        }

        @Override // com.google.android.gms.internal.clearcut.q0
        public final void k() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.clearcut.q0
        public final a p(y1 y1Var, x1 x1Var) {
            a aVar = (a) y1Var;
            aVar.d((v0) x1Var);
            return aVar;
        }

        @Override // com.google.android.gms.internal.clearcut.q0
        public final void s() {
        }
    }

    public enum e {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f3326a = {1, 2, 3, 4, 5, 6, 7};
    }

    static Object f(Object obj, Method method, Object... objArr) {
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

    public static <T extends v0<?, ?>> void g(Class<T> cls, T t10) {
        zzjr.put(cls, t10);
    }

    public static <T extends v0<?, ?>> T h(Class<T> cls) throws ClassNotFoundException {
        T t10 = (T) zzjr.get(cls);
        if (t10 == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                t10 = (T) zzjr.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (t10 != null) {
            return t10;
        }
        String name = cls.getName();
        throw new IllegalStateException(name.length() != 0 ? "Unable to get default instance for: ".concat(name) : new String("Unable to get default instance for: "));
    }

    @Override // com.google.android.gms.internal.clearcut.n
    public final void a(int r12) {
        this.zzjq = r12;
    }

    @Override // com.google.android.gms.internal.clearcut.z1
    public final boolean b() {
        byte bByteValue = ((Byte) e(1)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        j2 j2Var = j2.f3165c;
        j2Var.getClass();
        boolean zI = j2Var.a(getClass()).i(this);
        e(2);
        return zI;
    }

    @Override // com.google.android.gms.internal.clearcut.z1
    public final /* synthetic */ v0 c() {
        return (v0) e(6);
    }

    @Override // com.google.android.gms.internal.clearcut.n
    public final int d() {
        return this.zzjq;
    }

    public abstract Object e(int r12);

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!((v0) e(6)).getClass().isInstance(obj)) {
            return false;
        }
        j2 j2Var = j2.f3165c;
        j2Var.getClass();
        return j2Var.a(getClass()).b(this, (v0) obj);
    }

    public final int hashCode() {
        int r02 = this.zzex;
        if (r02 != 0) {
            return r02;
        }
        j2 j2Var = j2.f3165c;
        j2Var.getClass();
        int r03 = j2Var.a(getClass()).d(this);
        this.zzex = r03;
        return r03;
    }

    @Override // com.google.android.gms.internal.clearcut.x1
    public final /* synthetic */ a p() {
        a aVar = (a) e(5);
        aVar.d(this);
        return aVar;
    }

    @Override // com.google.android.gms.internal.clearcut.x1
    public final void q(e0 e0Var) throws IOException {
        o2 o2VarA = j2.f3165c.a(getClass());
        f0 f0Var = e0Var.f3097a;
        if (f0Var == null) {
            f0Var = new f0(e0Var);
        }
        o2VarA.h(this, f0Var);
    }

    @Override // com.google.android.gms.internal.clearcut.x1
    public final /* synthetic */ a r() {
        return (a) e(5);
    }

    @Override // com.google.android.gms.internal.clearcut.x1
    public final int s() {
        if (this.zzjq == -1) {
            j2 j2Var = j2.f3165c;
            j2Var.getClass();
            this.zzjq = j2Var.a(getClass()).f(this);
        }
        return this.zzjq;
    }

    public final String toString() {
        String string = super.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(string);
        a2.a(this, sb2, 0);
        return sb2.toString();
    }
}
