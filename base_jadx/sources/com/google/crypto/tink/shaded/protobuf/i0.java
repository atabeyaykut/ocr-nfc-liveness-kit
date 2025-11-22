package com.google.crypto.tink.shaded.protobuf;

import java.nio.charset.Charset;

/* loaded from: classes2.dex */
public final class i0 {

    /* renamed from: b, reason: collision with root package name */
    public static final a f4292b = new a();

    /* renamed from: a, reason: collision with root package name */
    public final p0 f4293a;

    public class a implements p0 {
        @Override // com.google.crypto.tink.shaded.protobuf.p0
        public final o0 a(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }

        @Override // com.google.crypto.tink.shaded.protobuf.p0
        public final boolean b(Class<?> cls) {
            return false;
        }
    }

    public static class b implements p0 {

        /* renamed from: a, reason: collision with root package name */
        public final p0[] f4294a;

        public b(p0... p0VarArr) {
            this.f4294a = p0VarArr;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.p0
        public final o0 a(Class<?> cls) {
            for (p0 p0Var : this.f4294a) {
                if (p0Var.b(cls)) {
                    return p0Var.a(cls);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.p0
        public final boolean b(Class<?> cls) {
            for (p0 p0Var : this.f4294a) {
                if (p0Var.b(cls)) {
                    return true;
                }
            }
            return false;
        }
    }

    public i0() {
        p0 p0Var;
        p0[] p0VarArr = new p0[2];
        p0VarArr[0] = w.f4391a;
        try {
            p0Var = (p0) Class.forName("com.google.crypto.tink.shaded.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            p0Var = f4292b;
        }
        p0VarArr[1] = p0Var;
        b bVar = new b(p0VarArr);
        Charset charset = z.f4405a;
        this.f4293a = bVar;
    }
}
