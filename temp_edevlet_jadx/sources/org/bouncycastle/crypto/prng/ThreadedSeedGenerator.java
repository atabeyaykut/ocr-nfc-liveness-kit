package org.bouncycastle.crypto.prng;

/* loaded from: classes2.dex */
public class ThreadedSeedGenerator {

    public static class SeedGenerator implements Runnable {
        private volatile int counter;
        private volatile boolean stop;

        private SeedGenerator() {
            this.counter = 0;
            this.stop = false;
        }

        public byte[] generateSeed(int r72, boolean z10) throws InterruptedException {
            Thread thread = new Thread(this);
            byte[] bArr = new byte[r72];
            this.counter = 0;
            this.stop = false;
            thread.start();
            if (!z10) {
                r72 *= 8;
            }
            int r02 = 0;
            for (int r22 = 0; r22 < r72; r22++) {
                while (this.counter == r02) {
                    try {
                        Thread.sleep(1L);
                    } catch (InterruptedException unused) {
                    }
                }
                r02 = this.counter;
                if (z10) {
                    bArr[r22] = (byte) (r02 & 255);
                } else {
                    int r42 = r22 / 8;
                    bArr[r42] = (byte) ((bArr[r42] << 1) | (r02 & 1));
                }
            }
            this.stop = true;
            return bArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (!this.stop) {
                this.counter++;
            }
        }
    }

    public byte[] generateSeed(int r32, boolean z10) {
        return new SeedGenerator().generateSeed(r32, z10);
    }
}
