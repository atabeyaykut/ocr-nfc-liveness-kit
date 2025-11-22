package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.j;
import com.google.crypto.tink.shaded.protobuf.x;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.RandomAccess;
import org.bouncycastle.i18n.LocalizedMessage;

/* loaded from: classes2.dex */
public final class z {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f4405a = Charset.forName("UTF-8");

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f4406b;

    public interface a {
        int f();
    }

    public interface b {
        boolean a();
    }

    public interface c<E> extends List<E>, RandomAccess {
        void B();

        c<E> F(int r12);

        boolean o0();
    }

    static {
        Charset.forName(LocalizedMessage.DEFAULT_ENCODING);
        byte[] bArr = new byte[0];
        f4406b = bArr;
        ByteBuffer.wrap(bArr);
        try {
            new j.a(bArr, 0, 0, false).g(0);
        } catch (a0 e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static int a(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    public static int b(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static x c(Object obj, Object obj2) {
        x.a aVarG = ((q0) obj).g();
        q0 q0Var = (q0) obj2;
        aVarG.getClass();
        if (!aVarG.f4392a.getClass().isInstance(q0Var)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        aVarG.k();
        x.a.l(aVarG.f4393b, (x) ((com.google.crypto.tink.shaded.protobuf.a) q0Var));
        return aVarG.j();
    }
}
