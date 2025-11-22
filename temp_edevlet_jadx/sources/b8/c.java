package b8;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.media.Image;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RequiresApi;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import r3.r;

/* loaded from: classes2.dex */
public final class c {
    @NonNull
    public static ByteBuffer a(@RecentlyNonNull a8.a aVar) throws r7.a {
        int r12 = aVar.f135g;
        if (r12 != -1) {
            if (r12 == 17) {
                ByteBuffer byteBuffer = aVar.f131b;
                r.i(byteBuffer);
                return byteBuffer;
            }
            if (r12 == 35) {
                Image.Plane[] planeArrB = aVar.b();
                r.i(planeArrB);
                return c(planeArrB, aVar.f133d, aVar.f134e);
            }
            if (r12 != 842094169) {
                throw new r7.a("Unsupported image format", 13);
            }
            ByteBuffer byteBuffer2 = aVar.f131b;
            r.i(byteBuffer2);
            return d(byteBuffer2, false);
        }
        Bitmap bitmap = aVar.f130a;
        r.i(bitmap);
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int r10 = width * height;
        int[] r11 = new int[r10];
        bitmap.getPixels(r11, 0, width, 0, 0, width, height);
        int r13 = (int) Math.ceil(height / 2.0d);
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(((r13 + r13) * ((int) Math.ceil(width / 2.0d))) + r10);
        int r32 = 0;
        int r42 = 0;
        for (int r22 = 0; r22 < height; r22++) {
            int r52 = 0;
            while (r52 < width) {
                int r6 = r11[r32];
                int r72 = (r6 >> 16) & 255;
                int r122 = (r6 >> 8) & 255;
                int r62 = r6 & 255;
                int r132 = (androidx.camera.core.impl.a.d(r62, 112, (r72 * (-38)) - (r122 * 74), 128) >> 8) + 128;
                int r14 = (((((r72 * 112) - (r122 * 94)) - (r62 * 18)) + 128) >> 8) + 128;
                int r15 = r42 + 1;
                byteBufferAllocateDirect.put(r42, (byte) Math.min(255, (androidx.camera.core.impl.a.d(r62, 25, (r122 * 129) + (r72 * 66), 128) >> 8) + 16));
                if (r22 % 2 == 0 && r32 % 2 == 0) {
                    int r43 = r10 + 1;
                    byteBufferAllocateDirect.put(r10, (byte) Math.min(255, r14));
                    r10 = r43 + 1;
                    byteBufferAllocateDirect.put(r43, (byte) Math.min(255, r132));
                }
                r32++;
                r52++;
                r42 = r15;
            }
        }
        return byteBufferAllocateDirect;
    }

    @RecentlyNonNull
    public static Bitmap b(@RecentlyNonNull ByteBuffer byteBuffer, int r42, int r52, int r6) throws IOException, r7.a {
        byte[] bArrArray;
        if (byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0) {
            bArrArray = byteBuffer.array();
        } else {
            byteBuffer.rewind();
            int r02 = byteBuffer.limit();
            byte[] bArr = new byte[r02];
            byteBuffer.get(bArr, 0, r02);
            bArrArray = bArr;
        }
        byte[] bArrF = f(bArrArray, r42, r52);
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrF, 0, bArrF.length);
        return e(bitmapDecodeByteArray, r6, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight());
    }

    @RecentlyNonNull
    @RequiresApi(19)
    public static ByteBuffer c(@RecentlyNonNull Image.Plane[] planeArr, int r13, int r14) {
        int r42 = r13 * r14;
        int r02 = r42 / 4;
        byte[] bArr = new byte[r02 + r02 + r42];
        ByteBuffer buffer = planeArr[1].getBuffer();
        ByteBuffer buffer2 = planeArr[2].getBuffer();
        int r52 = buffer2.position();
        int r6 = buffer.limit();
        buffer2.position(r52 + 1);
        buffer.limit(r6 - 1);
        int r72 = (r42 + r42) / 4;
        boolean z10 = buffer2.remaining() == r72 + (-2) && buffer2.compareTo(buffer) == 0;
        buffer2.position(r52);
        buffer.limit(r6);
        if (z10) {
            planeArr[0].getBuffer().get(bArr, 0, r42);
            ByteBuffer buffer3 = planeArr[1].getBuffer();
            planeArr[2].getBuffer().get(bArr, r42, 1);
            buffer3.get(bArr, r42 + 1, r72 - 1);
        } else {
            g(planeArr[0], r13, r14, bArr, 0, 1);
            g(planeArr[1], r13, r14, bArr, r42 + 1, 2);
            g(planeArr[2], r13, r14, bArr, r42, 2);
        }
        return ByteBuffer.wrap(bArr);
    }

    @RecentlyNonNull
    public static ByteBuffer d(@RecentlyNonNull ByteBuffer byteBuffer, boolean z10) {
        int r32;
        byteBuffer.rewind();
        int r02 = byteBuffer.limit();
        int r12 = r02 / 6;
        ByteBuffer byteBufferAllocate = z10 ? ByteBuffer.allocate(r02) : ByteBuffer.allocateDirect(r02);
        int r22 = 0;
        while (true) {
            r32 = r12 * 4;
            if (r22 >= r32) {
                break;
            }
            byteBufferAllocate.put(r22, byteBuffer.get(r22));
            r22++;
        }
        for (int r03 = 0; r03 < r12 + r12; r03++) {
            byteBufferAllocate.put(r32 + r03, byteBuffer.get((r03 / 2) + ((r03 % 2) * r12) + r32));
        }
        return byteBufferAllocate;
    }

    public static Bitmap e(Bitmap bitmap, int r82, int r92, int r10) {
        if (r82 == 0) {
            return Bitmap.createBitmap(bitmap, 0, 0, r92, r10);
        }
        Matrix matrix = new Matrix();
        matrix.postRotate(r82);
        return Bitmap.createBitmap(bitmap, 0, 0, r92, r10, matrix, true);
    }

    public static byte[] f(@NonNull byte[] bArr, int r82, int r92) throws IOException, r7.a {
        YuvImage yuvImage = new YuvImage(bArr, 17, r82, r92, null);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                yuvImage.compressToJpeg(new Rect(0, 0, r82, r92), 100, byteArrayOutputStream);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                return byteArray;
            } finally {
            }
        } catch (IOException unused) {
            Log.w("ImageConvertUtils", "Error closing ByteArrayOutputStream");
            throw new r7.a("Image conversion error from NV21 format", 13);
        }
    }

    @TargetApi(19)
    public static final void g(Image.Plane plane, int r82, int r92, byte[] bArr, int r11, int r12) {
        ByteBuffer buffer = plane.getBuffer();
        buffer.rewind();
        int rowStride = ((plane.getRowStride() + buffer.limit()) - 1) / plane.getRowStride();
        if (rowStride == 0) {
            return;
        }
        int r83 = r82 / (r92 / rowStride);
        int rowStride2 = 0;
        for (int r13 = 0; r13 < rowStride; r13++) {
            int pixelStride = rowStride2;
            for (int r42 = 0; r42 < r83; r42++) {
                bArr[r11] = buffer.get(pixelStride);
                r11 += r12;
                pixelStride += plane.getPixelStride();
            }
            rowStride2 += plane.getRowStride();
        }
    }
}
