package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public final class c extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final OutputStream f2748a;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f2749b;

    /* renamed from: c, reason: collision with root package name */
    public final y0.b f2750c;

    /* renamed from: d, reason: collision with root package name */
    public int f2751d;

    public c(@NonNull FileOutputStream fileOutputStream, @NonNull y0.b bVar) {
        this.f2748a = fileOutputStream;
        this.f2750c = bVar;
        this.f2749b = (byte[]) bVar.c(byte[].class, 65536);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        OutputStream outputStream = this.f2748a;
        try {
            flush();
            outputStream.close();
            byte[] bArr = this.f2749b;
            if (bArr != null) {
                this.f2750c.put(bArr);
                this.f2749b = null;
            }
        } catch (Throwable th2) {
            outputStream.close();
            throw th2;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        int r02 = this.f2751d;
        OutputStream outputStream = this.f2748a;
        if (r02 > 0) {
            outputStream.write(this.f2749b, 0, r02);
            this.f2751d = 0;
        }
        outputStream.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int r42) throws IOException {
        byte[] bArr = this.f2749b;
        int r12 = this.f2751d;
        int r22 = r12 + 1;
        this.f2751d = r22;
        bArr[r12] = (byte) r42;
        if (r22 != bArr.length || r22 <= 0) {
            return;
        }
        this.f2748a.write(bArr, 0, r22);
        this.f2751d = 0;
    }

    @Override // java.io.OutputStream
    public final void write(@NonNull byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(@NonNull byte[] bArr, int r92, int r10) throws IOException {
        int r12 = 0;
        do {
            int r22 = r10 - r12;
            int r32 = r92 + r12;
            int r42 = this.f2751d;
            OutputStream outputStream = this.f2748a;
            if (r42 == 0 && r22 >= this.f2749b.length) {
                outputStream.write(bArr, r32, r22);
                return;
            }
            int r23 = Math.min(r22, this.f2749b.length - r42);
            System.arraycopy(bArr, r32, this.f2749b, this.f2751d, r23);
            int r33 = this.f2751d + r23;
            this.f2751d = r33;
            r12 += r23;
            byte[] bArr2 = this.f2749b;
            if (r33 == bArr2.length && r33 > 0) {
                outputStream.write(bArr2, 0, r33);
                this.f2751d = 0;
            }
        } while (r12 < r10);
    }
}
