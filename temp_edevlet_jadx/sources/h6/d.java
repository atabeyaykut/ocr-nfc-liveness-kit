package h6;

import android.os.Process;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicLong f6896a = new AtomicLong(0);

    /* renamed from: b, reason: collision with root package name */
    public static String f6897b;

    public d(g0 g0Var) throws NoSuchAlgorithmException {
        long time = new Date().getTime();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.putInt((int) (time / 1000));
        byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
        byteBufferAllocate.position(0);
        byte[] bArrArray = byteBufferAllocate.array();
        byte[] bArrA = a(time % 1000);
        byte[] bArrA2 = a(f6896a.incrementAndGet());
        byte[] bArrA3 = a(Integer.valueOf(Process.myPid()).shortValue());
        byte[] bArr = {bArrArray[0], bArrArray[1], bArrArray[2], bArrArray[3], bArrA[0], bArrA[1], bArrA2[0], bArrA2[1], bArrA3[0], bArrA3[1]};
        String strK = e.k(g0Var.c());
        String strH = e.h(bArr);
        Locale locale = Locale.US;
        f6897b = String.format(locale, "%s%s%s%s", strH.substring(0, 12), strH.substring(12, 16), strH.subSequence(16, 20), strK.substring(0, 12)).toUpperCase(locale);
    }

    public static byte[] a(long j10) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(2);
        byteBufferAllocate.putShort((short) j10);
        byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
        byteBufferAllocate.position(0);
        return byteBufferAllocate.array();
    }

    public final String toString() {
        return f6897b;
    }
}
