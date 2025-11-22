package e1;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import v0.g;

/* loaded from: classes.dex */
public final class b0<T> implements v0.j<T, Bitmap> {

    /* renamed from: d, reason: collision with root package name */
    public static final v0.g<Long> f5021d = new v0.g<>("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new a());

    /* renamed from: e, reason: collision with root package name */
    public static final v0.g<Integer> f5022e = new v0.g<>("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new b());
    public static final e f = new e();

    /* renamed from: g, reason: collision with root package name */
    public static final List<String> f5023g = Collections.unmodifiableList(Arrays.asList("TP1A", "TD1A.220804.031"));

    /* renamed from: a, reason: collision with root package name */
    public final f<T> f5024a;

    /* renamed from: b, reason: collision with root package name */
    public final y0.c f5025b;

    /* renamed from: c, reason: collision with root package name */
    public final e f5026c = f;

    public class a implements g.b<Long> {

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f5027a = ByteBuffer.allocate(8);

        @Override // v0.g.b
        public final void a(@NonNull byte[] bArr, @NonNull Long l5, @NonNull MessageDigest messageDigest) {
            Long l10 = l5;
            messageDigest.update(bArr);
            synchronized (this.f5027a) {
                this.f5027a.position(0);
                messageDigest.update(this.f5027a.putLong(l10.longValue()).array());
            }
        }
    }

    public class b implements g.b<Integer> {

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f5028a = ByteBuffer.allocate(4);

        @Override // v0.g.b
        public final void a(@NonNull byte[] bArr, @NonNull Integer num, @NonNull MessageDigest messageDigest) {
            Integer num2 = num;
            if (num2 == null) {
                return;
            }
            messageDigest.update(bArr);
            synchronized (this.f5028a) {
                this.f5028a.position(0);
                messageDigest.update(this.f5028a.putInt(num2.intValue()).array());
            }
        }
    }

    public static final class c implements f<AssetFileDescriptor> {
        @Override // e1.b0.f
        public final void a(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) throws IllegalArgumentException {
            AssetFileDescriptor assetFileDescriptor2 = assetFileDescriptor;
            mediaMetadataRetriever.setDataSource(assetFileDescriptor2.getFileDescriptor(), assetFileDescriptor2.getStartOffset(), assetFileDescriptor2.getLength());
        }
    }

    @RequiresApi(23)
    public static final class d implements f<ByteBuffer> {
        @Override // e1.b0.f
        public final void a(MediaMetadataRetriever mediaMetadataRetriever, ByteBuffer byteBuffer) throws IllegalArgumentException {
            mediaMetadataRetriever.setDataSource(new c0(byteBuffer));
        }
    }

    @VisibleForTesting
    public static class e {
    }

    @VisibleForTesting
    public interface f<T> {
        void a(MediaMetadataRetriever mediaMetadataRetriever, T t10);
    }

    public static final class g implements f<ParcelFileDescriptor> {
        @Override // e1.b0.f
        public final void a(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) throws IllegalArgumentException {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    public static final class h extends RuntimeException {
        public h() {
            super("MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details");
        }
    }

    public b0(y0.c cVar, f<T> fVar) {
        this.f5025b = cVar;
        this.f5024a = fVar;
    }

    @Nullable
    public static Bitmap c(MediaMetadataRetriever mediaMetadataRetriever, long j10, int r15, int r16, int r17, l lVar) throws NumberFormatException {
        Bitmap bitmapCreateBitmap;
        boolean z10;
        if (Build.VERSION.SDK_INT < 27 || r16 == Integer.MIN_VALUE || r17 == Integer.MIN_VALUE || lVar == l.f5048d) {
            bitmapCreateBitmap = null;
        } else {
            try {
                int r32 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
                int r42 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
                int r52 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
                if (r52 == 90 || r52 == 270) {
                    r42 = r32;
                    r32 = r42;
                }
                float fB = lVar.b(r32, r42, r16, r17);
                bitmapCreateBitmap = mediaMetadataRetriever.getScaledFrameAtTime(j10, r15, Math.round(r32 * fB), Math.round(fB * r42));
            } catch (Throwable th2) {
                if (Log.isLoggable("VideoDecoder", 3)) {
                    Log.d("VideoDecoder", "Exception trying to decode a scaled frame on oreo+, falling back to a fullsize frame", th2);
                }
            }
        }
        if (bitmapCreateBitmap == null) {
            bitmapCreateBitmap = mediaMetadataRetriever.getFrameAtTime(j10, r15);
        }
        boolean z11 = false;
        if (!Build.MODEL.startsWith("Pixel") || Build.VERSION.SDK_INT != 33) {
            int r12 = Build.VERSION.SDK_INT;
            if (r12 >= 30 && r12 < 33) {
                z10 = true;
                break;
            }
            z10 = false;
        } else {
            Iterator<String> it = f5023g.iterator();
            while (it.hasNext()) {
                if (Build.ID.startsWith(it.next())) {
                    z10 = true;
                    break;
                }
            }
            z10 = false;
        }
        if (z10) {
            try {
                String strExtractMetadata = mediaMetadataRetriever.extractMetadata(36);
                String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(35);
                int r13 = Integer.parseInt(strExtractMetadata);
                if ((r13 == 7 || r13 == 6) && Integer.parseInt(strExtractMetadata2) == 6) {
                    z11 = Math.abs(Integer.parseInt(mediaMetadataRetriever.extractMetadata(24))) == 180;
                }
            } catch (NumberFormatException unused) {
                if (Log.isLoggable("VideoDecoder", 3)) {
                    Log.d("VideoDecoder", "Exception trying to extract HDR transfer function or rotation");
                }
            }
            if (z11) {
                if (Log.isLoggable("VideoDecoder", 3)) {
                    Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                }
                Matrix matrix = new Matrix();
                matrix.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix, true);
            }
        }
        if (bitmapCreateBitmap != null) {
            return bitmapCreateBitmap;
        }
        throw new h();
    }

    @Override // v0.j
    public final boolean a(@NonNull T t10, @NonNull v0.h hVar) {
        return true;
    }

    @Override // v0.j
    public final x0.w<Bitmap> b(@NonNull T t10, int r11, int r12, @NonNull v0.h hVar) throws IOException {
        long jLongValue = ((Long) hVar.c(f5021d)).longValue();
        if (jLongValue < 0 && jLongValue != -1) {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: " + jLongValue);
        }
        Integer num = (Integer) hVar.c(f5022e);
        if (num == null) {
            num = 2;
        }
        l lVar = (l) hVar.c(l.f);
        if (lVar == null) {
            lVar = l.f5049e;
        }
        l lVar2 = lVar;
        this.f5026c.getClass();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            this.f5024a.a(mediaMetadataRetriever, t10);
            return e1.e.b(c(mediaMetadataRetriever, jLongValue, num.intValue(), r11, r12, lVar2), this.f5025b);
        } finally {
            if (Build.VERSION.SDK_INT >= 29) {
                mediaMetadataRetriever.close();
            } else {
                mediaMetadataRetriever.release();
            }
        }
    }
}
