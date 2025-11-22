package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.i1;
import com.google.android.gms.internal.vision.i1.b;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public abstract class i1<MessageType extends i1<MessageType, BuilderType>, BuilderType extends b<MessageType, BuilderType>> extends f0<MessageType, BuilderType> {
    private static Map<Object, i1<?, ?>> zzd = new ConcurrentHashMap();
    protected q3 zzb = q3.f;
    private int zzc = -1;

    public static class a<T extends i1<T, ?>> extends g0<T> {
    }

    public static abstract class b<MessageType extends i1<MessageType, BuilderType>, BuilderType extends b<MessageType, BuilderType>> extends e0<MessageType, BuilderType> {

        /* renamed from: a, reason: collision with root package name */
        public final MessageType f3992a;

        /* renamed from: b, reason: collision with root package name */
        public MessageType f3993b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f3994c = false;

        public b(MessageType messagetype) {
            this.f3992a = messagetype;
            this.f3993b = (MessageType) messagetype.i(4);
        }

        public static void e(MessageType messagetype, MessageType messagetype2) {
            a3 a3Var = a3.f3885c;
            a3Var.getClass();
            a3Var.a(messagetype.getClass()).q(messagetype, messagetype2);
        }

        public final b c(byte[] bArr, int r10, w0 w0Var) throws q1 {
            if (this.f3994c) {
                h();
                this.f3994c = false;
            }
            try {
                a3 a3Var = a3.f3885c;
                MessageType messagetype = this.f3993b;
                a3Var.getClass();
                a3Var.a(messagetype.getClass()).g(this.f3993b, bArr, 0, r10, new l0(w0Var));
                return this;
            } catch (q1 e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e11);
            } catch (IndexOutOfBoundsException unused) {
                throw q1.a();
            }
        }

        public final /* synthetic */ Object clone() throws CloneNotSupportedException {
            b bVar = (b) this.f3992a.i(5);
            bVar.d(i());
            return bVar;
        }

        public final void d(i1 i1Var) {
            if (this.f3994c) {
                h();
                this.f3994c = false;
            }
            e(this.f3993b, i1Var);
        }

        public final void h() {
            MessageType messagetype = (MessageType) this.f3993b.i(4);
            e(messagetype, this.f3993b);
            this.f3993b = messagetype;
        }

        public final i1 i() {
            if (!this.f3994c) {
                MessageType messagetype = this.f3993b;
                a3 a3Var = a3.f3885c;
                a3Var.getClass();
                a3Var.a(messagetype.getClass()).a(messagetype);
                this.f3994c = true;
            }
            return this.f3993b;
        }

        public final i1 k() {
            i1 i1VarI = i();
            if (i1VarI.f()) {
                return i1VarI;
            }
            throw new o3();
        }

        @Override // com.google.android.gms.internal.vision.p2
        public final /* synthetic */ i1 n() {
            return this.f3992a;
        }
    }

    public static abstract class c<MessageType extends c<MessageType, BuilderType>, BuilderType> extends i1<MessageType, BuilderType> implements p2 {
        protected c1<e> zzc = c1.f3913d;

        public final c1<e> o() {
            c1<e> c1Var = this.zzc;
            if (c1Var.f3915b) {
                this.zzc = (c1) c1Var.clone();
            }
            return this.zzc;
        }
    }

    public static class d<ContainingType extends n2, Type> extends b8.f {
    }

    public static final class e implements e1<e> {
        @Override // com.google.android.gms.internal.vision.e1
        public final b U(q2 q2Var, n2 n2Var) {
            b bVar = (b) q2Var;
            bVar.d((i1) n2Var);
            return bVar;
        }

        @Override // com.google.android.gms.internal.vision.e1
        public final v2 a() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.vision.e1
        /* renamed from: a */
        public final void mo29a() {
        }

        @Override // com.google.android.gms.internal.vision.e1
        public final void b() {
        }

        @Override // com.google.android.gms.internal.vision.e1
        public final f4 c() {
            throw null;
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            ((e) obj).getClass();
            return 0;
        }

        @Override // com.google.android.gms.internal.vision.e1
        public final void d() {
        }

        @Override // com.google.android.gms.internal.vision.e1
        public final void e() {
        }
    }

    public enum f {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f3995a = {1, 2, 3, 4, 5, 6, 7};
    }

    public static <T extends i1<?, ?>> T h(Class<T> cls) throws ClassNotFoundException {
        i1<?, ?> i1Var = zzd.get(cls);
        if (i1Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                i1Var = zzd.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (i1Var == null) {
            i1Var = (T) ((i1) t3.c(cls)).i(6);
            if (i1Var == null) {
                throw new IllegalStateException();
            }
            zzd.put(cls, i1Var);
        }
        return (T) i1Var;
    }

    static Object k(Object obj, Method method, Object... objArr) {
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

    public static <T extends i1<?, ?>> void m(Class<T> cls, T t10) {
        zzd.put(cls, t10);
    }

    @Override // com.google.android.gms.internal.vision.n2
    public final void b(t0 t0Var) throws IOException {
        a3 a3Var = a3.f3885c;
        a3Var.getClass();
        d3 d3VarA = a3Var.a(getClass());
        u0 u0Var = t0Var.f4087a;
        if (u0Var == null) {
            u0Var = new u0(t0Var);
        }
        d3VarA.f(this, u0Var);
    }

    @Override // com.google.android.gms.internal.vision.f0
    public final void d(int r12) {
        this.zzc = r12;
    }

    @Override // com.google.android.gms.internal.vision.f0
    public final int e() {
        return this.zzc;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a3 a3Var = a3.f3885c;
        a3Var.getClass();
        return a3Var.a(getClass()).d(this, (i1) obj);
    }

    @Override // com.google.android.gms.internal.vision.p2
    public final boolean f() {
        byte bByteValue = ((Byte) i(1)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        a3 a3Var = a3.f3885c;
        a3Var.getClass();
        boolean zE = a3Var.a(getClass()).e(this);
        i(2);
        return zE;
    }

    @Override // com.google.android.gms.internal.vision.n2
    public final /* synthetic */ b g() {
        b bVar = (b) i(5);
        bVar.d(this);
        return bVar;
    }

    public final int hashCode() {
        int r02 = this.zza;
        if (r02 != 0) {
            return r02;
        }
        a3 a3Var = a3.f3885c;
        a3Var.getClass();
        int r03 = a3Var.a(getClass()).c(this);
        this.zza = r03;
        return r03;
    }

    public abstract Object i(int r12);

    @Override // com.google.android.gms.internal.vision.n2
    public final /* synthetic */ b j() {
        return (b) i(5);
    }

    @Override // com.google.android.gms.internal.vision.p2
    public final /* synthetic */ i1 n() {
        return (i1) i(6);
    }

    @Override // com.google.android.gms.internal.vision.n2
    public final int r() {
        if (this.zzc == -1) {
            a3 a3Var = a3.f3885c;
            a3Var.getClass();
            this.zzc = a3Var.a(getClass()).b(this);
        }
        return this.zzc;
    }

    public final String toString() {
        String string = super.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(string);
        s2.b(this, sb2, 0);
        return sb2.toString();
    }
}
