package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class y3 {

    /* renamed from: a, reason: collision with root package name */
    public volatile int f3351a = -1;

    public static final void b(f4 f4Var, byte[] bArr, int r32) {
        try {
            s3 s3Var = new s3(bArr, r32);
            f4Var.f(s3Var);
            ByteBuffer byteBuffer = s3Var.f3309a;
            if (byteBuffer.remaining() == 0) {
            } else {
                throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(byteBuffer.remaining())));
            }
        } catch (IOException e10) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e10);
        }
    }

    public final int c() {
        int r02 = d();
        this.f3351a = r02;
        return r02;
    }

    public int d() {
        return 0;
    }

    @Override // 
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public y3 clone() throws CloneNotSupportedException {
        return (y3) super.clone();
    }

    public final String toString() {
        String strValueOf;
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        try {
            s.g(null, this, new StringBuffer(), stringBuffer);
            return stringBuffer.toString();
        } catch (IllegalAccessException e10) {
            strValueOf = String.valueOf(e10.getMessage());
            if (strValueOf.length() == 0) {
                str = new String("Error printing proto: ");
                return str;
            }
            return "Error printing proto: ".concat(strValueOf);
        } catch (InvocationTargetException e11) {
            strValueOf = String.valueOf(e11.getMessage());
            if (strValueOf.length() == 0) {
                str = new String("Error printing proto: ");
                return str;
            }
            return "Error printing proto: ".concat(strValueOf);
        }
    }
}
