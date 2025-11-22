package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class g extends FilterInputStream {

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f2755c = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};

    /* renamed from: d, reason: collision with root package name */
    public static final int f2756d = 31;

    /* renamed from: a, reason: collision with root package name */
    public final byte f2757a;

    /* renamed from: b, reason: collision with root package name */
    public int f2758b;

    public g(InputStream inputStream, int r32) {
        super(inputStream);
        if (r32 < -1 || r32 > 8) {
            throw new IllegalArgumentException(android.support.v4.media.a.d("Cannot add invalid orientation: ", r32));
        }
        this.f2757a = (byte) r32;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int r12) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int r22;
        int r02 = this.f2758b;
        int r03 = (r02 < 2 || r02 > (r22 = f2756d)) ? super.read() : r02 == r22 ? this.f2757a : f2755c[r02 - 2] & 255;
        if (r03 != -1) {
            this.f2758b++;
        }
        return r03;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(@NonNull byte[] bArr, int r52, int r6) throws IOException {
        int r42;
        int r02 = this.f2758b;
        int r12 = f2756d;
        if (r02 > r12) {
            r42 = super.read(bArr, r52, r6);
        } else if (r02 == r12) {
            bArr[r52] = this.f2757a;
            r42 = 1;
        } else if (r02 < 2) {
            r42 = super.read(bArr, r52, 2 - r02);
        } else {
            int r62 = Math.min(r12 - r02, r6);
            System.arraycopy(f2755c, this.f2758b - 2, bArr, r52, r62);
            r42 = r62;
        }
        if (r42 > 0) {
            this.f2758b += r42;
        }
        return r42;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j10) throws IOException {
        long jSkip = super.skip(j10);
        if (jSkip > 0) {
            this.f2758b = (int) (this.f2758b + jSkip);
        }
        return jSkip;
    }
}
