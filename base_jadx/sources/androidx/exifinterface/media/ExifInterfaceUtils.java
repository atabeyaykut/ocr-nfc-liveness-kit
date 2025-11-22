package androidx.exifinterface.media;

import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.system.ErrnoException;
import android.system.Os;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
class ExifInterfaceUtils {
    private static final String TAG = "ExifInterfaceUtils";

    @RequiresApi(21)
    public static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        public static void close(FileDescriptor fileDescriptor) throws ErrnoException {
            Os.close(fileDescriptor);
        }

        @DoNotInline
        public static FileDescriptor dup(FileDescriptor fileDescriptor) throws ErrnoException {
            return Os.dup(fileDescriptor);
        }

        @DoNotInline
        public static long lseek(FileDescriptor fileDescriptor, long j10, int r32) throws ErrnoException {
            return Os.lseek(fileDescriptor, j10, r32);
        }
    }

    @RequiresApi(23)
    public static class Api23Impl {
        private Api23Impl() {
        }

        @DoNotInline
        public static void setDataSource(MediaMetadataRetriever mediaMetadataRetriever, MediaDataSource mediaDataSource) throws IllegalArgumentException {
            mediaMetadataRetriever.setDataSource(mediaDataSource);
        }
    }

    private ExifInterfaceUtils() {
    }

    public static String byteArrayToHexString(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (byte b10 : bArr) {
            sb2.append(String.format("%02x", Byte.valueOf(b10)));
        }
        return sb2.toString();
    }

    public static void closeFileDescriptor(FileDescriptor fileDescriptor) {
        try {
            Api21Impl.close(fileDescriptor);
        } catch (Exception unused) {
            Log.e(TAG, "Error closing fd.");
        }
    }

    public static void closeQuietly(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    public static long[] convertToLongArray(Object obj) {
        if (!(obj instanceof int[])) {
            if (obj instanceof long[]) {
                return (long[]) obj;
            }
            return null;
        }
        int[] r42 = (int[]) obj;
        long[] jArr = new long[r42.length];
        for (int r12 = 0; r12 < r42.length; r12++) {
            jArr[r12] = r42[r12];
        }
        return jArr;
    }

    public static int copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        int r22 = 0;
        while (true) {
            int r32 = inputStream.read(bArr);
            if (r32 == -1) {
                return r22;
            }
            r22 += r32;
            outputStream.write(bArr, 0, r32);
        }
    }

    public static void copy(InputStream inputStream, OutputStream outputStream, int r72) throws IOException {
        byte[] bArr = new byte[8192];
        while (r72 > 0) {
            int r22 = Math.min(r72, 8192);
            int r42 = inputStream.read(bArr, 0, r22);
            if (r42 != r22) {
                throw new IOException("Failed to copy the given amount of bytes from the inputstream to the output stream.");
            }
            r72 -= r42;
            outputStream.write(bArr, 0, r42);
        }
    }

    public static long parseSubSeconds(String str) throws NumberFormatException {
        try {
            int r02 = Math.min(str.length(), 3);
            long j10 = Long.parseLong(str.substring(0, r02));
            while (r02 < 3) {
                j10 *= 10;
                r02++;
            }
            return j10;
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    public static boolean startsWith(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null || bArr.length < bArr2.length) {
            return false;
        }
        for (int r12 = 0; r12 < bArr2.length; r12++) {
            if (bArr[r12] != bArr2[r12]) {
                return false;
            }
        }
        return true;
    }
}
