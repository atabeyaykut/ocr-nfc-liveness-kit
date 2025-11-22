package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.a;
import com.google.crypto.tink.shaded.protobuf.e;
import com.google.crypto.tink.shaded.protobuf.j;
import com.google.crypto.tink.shaded.protobuf.q0;
import com.google.crypto.tink.shaded.protobuf.t;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.x.a;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public abstract class x<MessageType extends x<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends com.google.crypto.tink.shaded.protobuf.a<MessageType, BuilderType> {
    private static Map<Object, x<?, ?>> defaultInstanceMap = new ConcurrentHashMap();
    protected k1 unknownFields = k1.f;
    protected int memoizedSerializedSize = -1;

    public static abstract class a<MessageType extends x<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends a.AbstractC0063a<MessageType, BuilderType> {

        /* renamed from: a, reason: collision with root package name */
        public final MessageType f4392a;

        /* renamed from: b, reason: collision with root package name */
        public MessageType f4393b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f4394c = false;

        public a(MessageType messagetype) {
            this.f4392a = messagetype;
            this.f4393b = (MessageType) messagetype.l(f.NEW_MUTABLE_INSTANCE);
        }

        public static void l(x xVar, x xVar2) {
            a1 a1Var = a1.f4224c;
            a1Var.getClass();
            a1Var.a(xVar.getClass()).a(xVar, xVar2);
        }

        public final Object clone() throws CloneNotSupportedException {
            a aVar = (a) this.f4392a.l(f.NEW_BUILDER);
            x xVarJ = j();
            aVar.k();
            l(aVar.f4393b, xVarJ);
            return aVar;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.r0
        public final x e() {
            return this.f4392a;
        }

        public final MessageType i() {
            MessageType messagetype = (MessageType) j();
            if (messagetype.b()) {
                return messagetype;
            }
            throw new o.e();
        }

        public final MessageType j() {
            if (this.f4394c) {
                return this.f4393b;
            }
            MessageType messagetype = this.f4393b;
            messagetype.getClass();
            a1 a1Var = a1.f4224c;
            a1Var.getClass();
            a1Var.a(messagetype.getClass()).e(messagetype);
            this.f4394c = true;
            return this.f4393b;
        }

        public final void k() {
            if (this.f4394c) {
                MessageType messagetype = (MessageType) this.f4393b.l(f.NEW_MUTABLE_INSTANCE);
                l(messagetype, this.f4393b);
                this.f4393b = messagetype;
                this.f4394c = false;
            }
        }
    }

    public static class b<T extends x<T, ?>> extends com.google.crypto.tink.shaded.protobuf.b<T> {
        public b(T t10) {
        }
    }

    public static abstract class c<MessageType extends c<MessageType, BuilderType>, BuilderType> extends x<MessageType, BuilderType> implements r0 {
        protected t<d> extensions = t.f4358d;
    }

    public static final class d implements t.a<d> {
        @Override // com.google.crypto.tink.shaded.protobuf.t.a
        public final a D(q0.a aVar, q0 q0Var) {
            a aVar2 = (a) aVar;
            aVar2.k();
            a.l(aVar2.f4393b, (x) q0Var);
            return aVar2;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            ((d) obj).getClass();
            return 0;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.t.a
        public final void f() {
        }

        @Override // com.google.crypto.tink.shaded.protobuf.t.a
        public final void g() {
        }

        @Override // com.google.crypto.tink.shaded.protobuf.t.a
        public final void h() {
        }

        @Override // com.google.crypto.tink.shaded.protobuf.t.a
        public final q1 l() {
            throw null;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.t.a
        public final void m() {
        }
    }

    public static class e<ContainingType extends q0, Type> extends g {
    }

    public enum f {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        /* JADX INFO: Fake field, exist only in values array */
        GET_PARSER
    }

    public static <T extends x<?, ?>> T m(Class<T> cls) throws ClassNotFoundException {
        x<?, ?> xVar = defaultInstanceMap.get(cls);
        if (xVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                xVar = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (xVar == null) {
            xVar = (T) ((x) n1.a(cls)).l(f.GET_DEFAULT_INSTANCE);
            if (xVar == null) {
                throw new IllegalStateException();
            }
            defaultInstanceMap.put(cls, xVar);
        }
        return (T) xVar;
    }

    static Object n(Object obj, Method method, Object... objArr) {
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

    public static <T extends x<T, ?>> T o(T t10, i iVar, p pVar) throws a0 {
        try {
            j.a aVarX = iVar.x();
            T t11 = (T) q(t10, aVarX, pVar);
            try {
                aVarX.a(0);
                if (t11.b()) {
                    return t11;
                }
                throw new a0(new o.e().getMessage());
            } catch (a0 e10) {
                throw e10;
            }
        } catch (a0 e11) {
            throw e11;
        }
    }

    public static <T extends x<T, ?>> T p(T t10, byte[] bArr, p pVar) throws a0 {
        int length = bArr.length;
        T t11 = (T) t10.l(f.NEW_MUTABLE_INSTANCE);
        try {
            a1 a1Var = a1.f4224c;
            a1Var.getClass();
            e1 e1VarA = a1Var.a(t11.getClass());
            e1VarA.h(t11, bArr, 0, length + 0, new e.a(pVar));
            e1VarA.e(t11);
            if (t11.memoizedHashCode != 0) {
                throw new RuntimeException();
            }
            if (t11.b()) {
                return t11;
            }
            throw new a0(new o.e().getMessage());
        } catch (IOException e10) {
            if (e10.getCause() instanceof a0) {
                throw ((a0) e10.getCause());
            }
            throw new a0(e10.getMessage());
        } catch (IndexOutOfBoundsException unused) {
            throw a0.f();
        }
    }

    public static <T extends x<T, ?>> T q(T t10, j jVar, p pVar) throws a0 {
        T t11 = (T) t10.l(f.NEW_MUTABLE_INSTANCE);
        try {
            a1 a1Var = a1.f4224c;
            a1Var.getClass();
            e1 e1VarA = a1Var.a(t11.getClass());
            k kVar = jVar.f4297c;
            if (kVar == null) {
                kVar = new k(jVar);
            }
            e1VarA.i(t11, kVar, pVar);
            e1VarA.e(t11);
            return t11;
        } catch (IOException e10) {
            if (e10.getCause() instanceof a0) {
                throw ((a0) e10.getCause());
            }
            throw new a0(e10.getMessage());
        } catch (RuntimeException e11) {
            if (e11.getCause() instanceof a0) {
                throw ((a0) e11.getCause());
            }
            throw e11;
        }
    }

    public static <T extends x<?, ?>> void r(Class<T> cls, T t10) {
        defaultInstanceMap.put(cls, t10);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.a
    public final int a() {
        return this.memoizedSerializedSize;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.r0
    public final boolean b() {
        byte bByteValue = ((Byte) l(f.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        a1 a1Var = a1.f4224c;
        a1Var.getClass();
        boolean zF = a1Var.a(getClass()).f(this);
        l(f.SET_MEMOIZED_IS_INITIALIZED);
        return zF;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q0
    public final int c() {
        if (this.memoizedSerializedSize == -1) {
            a1 a1Var = a1.f4224c;
            a1Var.getClass();
            this.memoizedSerializedSize = a1Var.a(getClass()).j(this);
        }
        return this.memoizedSerializedSize;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q0
    public final void d(l lVar) throws IOException {
        a1 a1Var = a1.f4224c;
        a1Var.getClass();
        e1 e1VarA = a1Var.a(getClass());
        m mVar = lVar.f4317a;
        if (mVar == null) {
            mVar = new m(lVar);
        }
        e1VarA.g(this, mVar);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.r0
    public final x e() {
        return (x) l(f.GET_DEFAULT_INSTANCE);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!((x) l(f.GET_DEFAULT_INSTANCE)).getClass().isInstance(obj)) {
            return false;
        }
        a1 a1Var = a1.f4224c;
        a1Var.getClass();
        return a1Var.a(getClass()).b(this, (x) obj);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q0
    public final a g() {
        a aVar = (a) l(f.NEW_BUILDER);
        aVar.k();
        a.l(aVar.f4393b, this);
        return aVar;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q0
    public final a h() {
        return (a) l(f.NEW_BUILDER);
    }

    public final int hashCode() {
        int r02 = this.memoizedHashCode;
        if (r02 != 0) {
            return r02;
        }
        a1 a1Var = a1.f4224c;
        a1Var.getClass();
        int r03 = a1Var.a(getClass()).d(this);
        this.memoizedHashCode = r03;
        return r03;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.a
    public final void j(int r12) {
        this.memoizedSerializedSize = r12;
    }

    public final <MessageType extends x<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> BuilderType k() {
        return (BuilderType) l(f.NEW_BUILDER);
    }

    public abstract Object l(f fVar);

    public final String toString() {
        String string = super.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(string);
        s0.c(this, sb2, 0);
        return sb2.toString();
    }
}
