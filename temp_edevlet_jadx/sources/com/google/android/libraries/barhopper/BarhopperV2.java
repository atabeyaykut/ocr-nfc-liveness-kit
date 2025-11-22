package com.google.android.libraries.barhopper;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import java.io.Closeable;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class BarhopperV2 implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public long f4217a;

    public BarhopperV2() {
        System.loadLibrary("barhopper_v2");
    }

    private native void closeNative(long j10);

    private native long createNative();

    private native Barcode[] recognizeBitmapNative(long j10, Bitmap bitmap, RecognitionOptions recognitionOptions);

    private native Barcode[] recognizeBufferNative(long j10, int r32, int r42, ByteBuffer byteBuffer, RecognitionOptions recognitionOptions);

    private native Barcode[] recognizeNative(long j10, int r32, int r42, byte[] bArr, RecognitionOptions recognitionOptions);

    public final void a() {
        if (this.f4217a != 0) {
            Log.w("BarhopperV2", "Native context already exists.");
            return;
        }
        long jCreateNative = createNative();
        this.f4217a = jCreateNative;
        if (jCreateNative == 0) {
            throw new RuntimeException("Failed to create native context.");
        }
    }

    @RecentlyNonNull
    public final Barcode[] b(int r82, int r92, @RecentlyNonNull ByteBuffer byteBuffer, @RecentlyNonNull RecognitionOptions recognitionOptions) {
        long j10 = this.f4217a;
        if (j10 != 0) {
            return recognizeBufferNative(j10, r82, r92, byteBuffer, recognitionOptions);
        }
        throw new RuntimeException("Native context does not exist.");
    }

    @RecentlyNonNull
    public final Barcode[] c(int r82, int r92, @RecentlyNonNull byte[] bArr, @RecentlyNonNull RecognitionOptions recognitionOptions) {
        long j10 = this.f4217a;
        if (j10 != 0) {
            return recognizeNative(j10, r82, r92, bArr, recognitionOptions);
        }
        throw new RuntimeException("Native context does not exist.");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        long j10 = this.f4217a;
        if (j10 != 0) {
            closeNative(j10);
            this.f4217a = 0L;
        }
    }

    @RecentlyNonNull
    public final Barcode[] d(@RecentlyNonNull Bitmap bitmap, @RecentlyNonNull RecognitionOptions recognitionOptions) {
        long j10 = this.f4217a;
        if (j10 != 0) {
            return recognizeBitmapNative(j10, bitmap, recognitionOptions);
        }
        throw new RuntimeException("Native context does not exist.");
    }

    public final void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }
}
