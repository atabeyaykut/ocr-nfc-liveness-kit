package w6;

import androidx.annotation.NonNull;
import java.io.OutputStream;

/* loaded from: classes2.dex */
public final class b extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    public long f18798a = 0;

    @Override // java.io.OutputStream
    public final void write(int r52) {
        this.f18798a++;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.f18798a += bArr.length;
    }

    @Override // java.io.OutputStream
    public final void write(@NonNull byte[] bArr, int r42, int r52) {
        int r43;
        if (r42 < 0 || r42 > bArr.length || r52 < 0 || (r43 = r42 + r52) > bArr.length || r43 < 0) {
            throw new IndexOutOfBoundsException();
        }
        this.f18798a += r52;
    }
}
