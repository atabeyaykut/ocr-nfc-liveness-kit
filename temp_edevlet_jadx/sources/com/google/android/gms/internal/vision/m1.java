package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.i1;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import org.bouncycastle.i18n.LocalizedMessage;

/* loaded from: classes.dex */
public final class m1 {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f4035a = Charset.forName("UTF-8");

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f4036b;

    static {
        Charset.forName(LocalizedMessage.DEFAULT_ENCODING);
        byte[] bArr = new byte[0];
        f4036b = bArr;
        ByteBuffer.wrap(bArr);
        int length = bArr.length;
        try {
            if (length < 0) {
                throw q1.b();
            }
            if (0 + length > Integer.MAX_VALUE) {
                throw q1.a();
            }
        } catch (q1 e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static int a(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static int b(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    public static i1 c(Object obj, Object obj2) {
        i1.b bVarG = ((n2) obj).g();
        n2 n2Var = (n2) obj2;
        bVarG.getClass();
        if (!bVarG.f3992a.getClass().isInstance(n2Var)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        bVarG.d((i1) ((f0) n2Var));
        return bVarG.i();
    }
}
