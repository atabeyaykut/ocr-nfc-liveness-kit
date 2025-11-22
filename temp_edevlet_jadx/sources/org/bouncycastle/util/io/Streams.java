package org.bouncycastle.util.io;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes2.dex */
public final class Streams {
    private static int BUFFER_SIZE = 4096;

    public static void drain(InputStream inputStream) throws IOException {
        int r02 = BUFFER_SIZE;
        while (inputStream.read(new byte[r02], 0, r02) >= 0) {
        }
    }

    public static void pipeAll(InputStream inputStream, OutputStream outputStream) throws IOException {
        pipeAll(inputStream, outputStream, BUFFER_SIZE);
    }

    public static void pipeAll(InputStream inputStream, OutputStream outputStream, int r52) throws IOException {
        byte[] bArr = new byte[r52];
        while (true) {
            int r22 = inputStream.read(bArr, 0, r52);
            if (r22 < 0) {
                return;
            } else {
                outputStream.write(bArr, 0, r22);
            }
        }
    }

    public static long pipeAllLimited(InputStream inputStream, long j10, OutputStream outputStream) throws IOException {
        int r02 = BUFFER_SIZE;
        byte[] bArr = new byte[r02];
        long j11 = 0;
        while (true) {
            int r52 = inputStream.read(bArr, 0, r02);
            if (r52 < 0) {
                return j11;
            }
            long j12 = r52;
            if (j10 - j11 < j12) {
                throw new StreamOverflowException("Data Overflow");
            }
            j11 += j12;
            outputStream.write(bArr, 0, r52);
        }
    }

    public static byte[] readAll(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        pipeAll(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] readAllLimited(InputStream inputStream, int r42) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        pipeAllLimited(inputStream, r42, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static int readFully(InputStream inputStream, byte[] bArr) throws IOException {
        return readFully(inputStream, bArr, 0, bArr.length);
    }

    public static int readFully(InputStream inputStream, byte[] bArr, int r52, int r6) throws IOException {
        int r02 = 0;
        while (r02 < r6) {
            int r12 = inputStream.read(bArr, r52 + r02, r6 - r02);
            if (r12 < 0) {
                break;
            }
            r02 += r12;
        }
        return r02;
    }

    public static void validateBufferArguments(byte[] bArr, int r22, int r32) {
        bArr.getClass();
        int length = bArr.length - r22;
        if ((length | r22 | r32 | (length - r32)) < 0) {
            throw new IndexOutOfBoundsException();
        }
    }

    public static void writeBufTo(ByteArrayOutputStream byteArrayOutputStream, OutputStream outputStream) throws IOException {
        byteArrayOutputStream.writeTo(outputStream);
    }
}
