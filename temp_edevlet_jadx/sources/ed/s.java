package ed;

import java.io.RandomAccessFile;

/* loaded from: classes2.dex */
public final class s extends i {

    /* renamed from: c, reason: collision with root package name */
    public final RandomAccessFile f5357c;

    public s(RandomAccessFile randomAccessFile) {
        this.f5357c = randomAccessFile;
    }

    @Override // ed.i
    public final synchronized void a() {
        this.f5357c.close();
    }

    @Override // ed.i
    public final synchronized int b(int r22, int r32, long j10, byte[] array) {
        kotlin.jvm.internal.h.f(array, "array");
        this.f5357c.seek(j10);
        int r42 = 0;
        while (true) {
            if (r42 >= r32) {
                break;
            }
            int r52 = this.f5357c.read(array, r22, r32 - r42);
            if (r52 != -1) {
                r42 += r52;
            } else if (r42 == 0) {
                return -1;
            }
        }
        return r42;
    }

    @Override // ed.i
    public final synchronized long c() {
        return this.f5357c.length();
    }
}
