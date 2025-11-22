package e1;

import android.media.MediaDataSource;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class c0 extends MediaDataSource {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ByteBuffer f5032a;

    public c0(ByteBuffer byteBuffer) {
        this.f5032a = byteBuffer;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // android.media.MediaDataSource
    public final long getSize() {
        return this.f5032a.limit();
    }

    @Override // android.media.MediaDataSource
    public final int readAt(long j10, byte[] bArr, int r72, int r82) {
        if (j10 >= this.f5032a.limit()) {
            return -1;
        }
        this.f5032a.position((int) j10);
        int r42 = Math.min(r82, this.f5032a.remaining());
        this.f5032a.get(bArr, r72, r42);
        return r42;
    }
}
