package k4;

import androidx.annotation.NonNull;
import java.io.OutputStream;

/* loaded from: classes.dex */
public final class j extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    public long f8749a = 0;

    @Override // java.io.OutputStream
    public final void write(int r52) {
        this.f8749a++;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.f8749a += bArr.length;
    }

    @Override // java.io.OutputStream
    public final void write(@NonNull byte[] bArr, int r42, int r52) {
        int length;
        int r43;
        if (r42 < 0 || r42 > (length = bArr.length) || r52 < 0 || (r43 = r42 + r52) > length || r43 < 0) {
            throw new IndexOutOfBoundsException();
        }
        this.f8749a += r52;
    }
}
