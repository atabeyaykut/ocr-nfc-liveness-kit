package org.bouncycastle.jcajce.provider.drbg;

import java.security.SecureRandom;
import org.bouncycastle.crypto.prng.EntropySource;
import org.bouncycastle.crypto.prng.EntropySourceProvider;

/* loaded from: classes2.dex */
class IncrementalEntropySourceProvider implements EntropySourceProvider {
    private final boolean predictionResistant;
    private final SecureRandom random;

    public IncrementalEntropySourceProvider(SecureRandom secureRandom, boolean z10) {
        this.random = secureRandom;
        this.predictionResistant = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sleep(long j10) throws InterruptedException {
        if (j10 != 0) {
            Thread.sleep(j10);
        }
    }

    @Override // org.bouncycastle.crypto.prng.EntropySourceProvider
    public EntropySource get(int r22) {
        return new IncrementalEntropySource(r22) { // from class: org.bouncycastle.jcajce.provider.drbg.IncrementalEntropySourceProvider.1
            final int numBytes;
            final /* synthetic */ int val$bitsRequired;

            {
                this.val$bitsRequired = r22;
                this.numBytes = (r22 + 7) / 8;
            }

            @Override // org.bouncycastle.crypto.prng.EntropySource
            public int entropySize() {
                return this.val$bitsRequired;
            }

            @Override // org.bouncycastle.crypto.prng.EntropySource
            public byte[] getEntropy() {
                try {
                    return getEntropy(0L);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    throw new IllegalStateException("initial entropy fetch interrupted");
                }
            }

            @Override // org.bouncycastle.jcajce.provider.drbg.IncrementalEntropySource
            public byte[] getEntropy(long j10) throws InterruptedException {
                int r42;
                int r02 = this.numBytes;
                byte[] bArr = new byte[r02];
                int r32 = 0;
                while (true) {
                    r42 = this.numBytes;
                    if (r32 >= r42 / 8) {
                        break;
                    }
                    IncrementalEntropySourceProvider.sleep(j10);
                    byte[] bArrGenerateSeed = IncrementalEntropySourceProvider.this.random.generateSeed(8);
                    System.arraycopy(bArrGenerateSeed, 0, bArr, r32 * 8, bArrGenerateSeed.length);
                    r32++;
                }
                int r43 = r42 - ((r42 / 8) * 8);
                if (r43 != 0) {
                    IncrementalEntropySourceProvider.sleep(j10);
                    byte[] bArrGenerateSeed2 = IncrementalEntropySourceProvider.this.random.generateSeed(r43);
                    System.arraycopy(bArrGenerateSeed2, 0, bArr, r02 - bArrGenerateSeed2.length, bArrGenerateSeed2.length);
                }
                return bArr;
            }

            @Override // org.bouncycastle.crypto.prng.EntropySource
            public boolean isPredictionResistant() {
                return IncrementalEntropySourceProvider.this.predictionResistant;
            }
        };
    }
}
