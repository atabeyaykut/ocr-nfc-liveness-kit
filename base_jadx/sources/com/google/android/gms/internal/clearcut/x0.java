package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.v0;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import org.bouncycastle.i18n.LocalizedMessage;

/* loaded from: classes.dex */
public final class x0 {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f3344a = Charset.forName("UTF-8");

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f3345b;

    static {
        Charset.forName(LocalizedMessage.DEFAULT_ENCODING);
        byte[] bArr = new byte[0];
        f3345b = bArr;
        ByteBuffer.wrap(bArr);
        int length = bArr.length;
        try {
            if (length < 0) {
                throw new b1("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            if ((0 - 0) + length > Integer.MAX_VALUE) {
                throw b1.a();
            }
        } catch (b1 e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static v0 a(Object obj, Object obj2) {
        v0.a aVarP = ((x1) obj).p();
        x1 x1Var = (x1) obj2;
        aVarP.getClass();
        if (!aVarP.f3323a.getClass().isInstance(x1Var)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        aVarP.d((v0) ((n) x1Var));
        return aVarP.f();
    }

    public static int b(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    public static int c(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }
}
