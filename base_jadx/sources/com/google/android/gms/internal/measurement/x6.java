package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import org.bouncycastle.i18n.LocalizedMessage;

/* loaded from: classes.dex */
public final class x6 {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f3835a;

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f3836b;

    static {
        Charset.forName("US-ASCII");
        f3835a = Charset.forName("UTF-8");
        Charset.forName(LocalizedMessage.DEFAULT_ENCODING);
        byte[] bArr = new byte[0];
        f3836b = bArr;
        ByteBuffer.wrap(bArr);
    }

    public static int a(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    public static int b(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static q6 c(Object obj, Object obj2) {
        n6 n6VarB = ((s7) obj).b();
        s7 s7Var = (s7) obj2;
        n6VarB.getClass();
        if (!n6VarB.f3641a.getClass().isInstance(s7Var)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        n6VarB.k((q6) ((l5) s7Var));
        return n6VarB.h();
    }
}
