package w5;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public final class d extends r {

    /* renamed from: a, reason: collision with root package name */
    public final int f18733a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18734b;

    /* renamed from: c, reason: collision with root package name */
    public final int f18735c;

    /* renamed from: d, reason: collision with root package name */
    public final int f18736d;

    /* renamed from: e, reason: collision with root package name */
    public final String f18737e;
    public final byte[] f;

    public class a implements w {

        /* renamed from: a, reason: collision with root package name */
        public SecretKeySpec f18738a;

        /* renamed from: b, reason: collision with root package name */
        public Cipher f18739b;

        /* renamed from: c, reason: collision with root package name */
        public byte[] f18740c;

        public a() {
        }

        @Override // w5.w
        public final synchronized void a(ByteBuffer byteBuffer, byte[] bArr) throws GeneralSecurityException {
            if (byteBuffer.remaining() != d.this.e()) {
                throw new InvalidAlgorithmParameterException("Invalid header length");
            }
            if (byteBuffer.get() != d.this.e()) {
                throw new GeneralSecurityException("Invalid ciphertext");
            }
            this.f18740c = new byte[7];
            byte[] bArr2 = new byte[d.this.f18733a];
            byteBuffer.get(bArr2);
            byteBuffer.get(this.f18740c);
            d dVar = d.this;
            this.f18738a = new SecretKeySpec(p.a(dVar.f, bArr2, dVar.f18737e, bArr, dVar.f18733a), "AES");
            this.f18739b = n.f18767e.a("AES/GCM/NoPadding");
        }

        @Override // w5.w
        public final synchronized void b(ByteBuffer byteBuffer, int r52, boolean z10, ByteBuffer byteBuffer2) throws GeneralSecurityException {
            this.f18739b.init(2, this.f18738a, d.i(this.f18740c, r52, z10));
            this.f18739b.doFinal(byteBuffer, byteBuffer2);
        }
    }

    public class b implements x {

        /* renamed from: a, reason: collision with root package name */
        public final SecretKeySpec f18742a;

        /* renamed from: b, reason: collision with root package name */
        public final Cipher f18743b = n.f18767e.a("AES/GCM/NoPadding");

        /* renamed from: c, reason: collision with root package name */
        public final byte[] f18744c;

        /* renamed from: d, reason: collision with root package name */
        public final ByteBuffer f18745d;

        /* renamed from: e, reason: collision with root package name */
        public long f18746e;

        public b(d dVar, byte[] bArr) throws GeneralSecurityException {
            this.f18746e = 0L;
            this.f18746e = 0L;
            byte[] bArrA = v.a(dVar.f18733a);
            byte[] bArrA2 = v.a(7);
            this.f18744c = bArrA2;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(dVar.e());
            this.f18745d = byteBufferAllocate;
            byteBufferAllocate.put((byte) dVar.e());
            byteBufferAllocate.put(bArrA);
            byteBufferAllocate.put(bArrA2);
            byteBufferAllocate.flip();
            int r12 = dVar.f18733a;
            this.f18742a = new SecretKeySpec(p.a(dVar.f, bArrA, dVar.f18737e, bArr, r12), "AES");
        }

        @Override // w5.x
        public final synchronized void a(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3) throws GeneralSecurityException {
            this.f18743b.init(1, this.f18742a, d.i(this.f18744c, this.f18746e, false));
            this.f18746e++;
            if (byteBuffer2.hasRemaining()) {
                this.f18743b.update(byteBuffer, byteBuffer3);
                this.f18743b.doFinal(byteBuffer2, byteBuffer3);
            } else {
                this.f18743b.doFinal(byteBuffer, byteBuffer3);
            }
        }

        @Override // w5.x
        public final ByteBuffer b() {
            return this.f18745d.asReadOnlyBuffer();
        }

        @Override // w5.x
        public final synchronized void c(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws GeneralSecurityException {
            this.f18743b.init(1, this.f18742a, d.i(this.f18744c, this.f18746e, true));
            this.f18746e++;
            this.f18743b.doFinal(byteBuffer, byteBuffer2);
        }
    }

    public d(int r42, int r52, String str, byte[] bArr) throws InvalidAlgorithmParameterException {
        if (bArr.length < 16 || bArr.length < r42) {
            throw new InvalidAlgorithmParameterException("ikm too short, must be >= " + Math.max(16, r42));
        }
        a0.a(r42);
        if (r52 <= e() + 0 + 16) {
            throw new InvalidAlgorithmParameterException("ciphertextSegmentSize too small");
        }
        this.f = Arrays.copyOf(bArr, bArr.length);
        this.f18737e = str;
        this.f18733a = r42;
        this.f18734b = r52;
        this.f18736d = 0;
        this.f18735c = r52 - 16;
    }

    public static GCMParameterSpec i(byte[] bArr, long j10, boolean z10) throws GeneralSecurityException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(12);
        byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
        byteBufferAllocate.put(bArr);
        if (0 > j10 || j10 >= 4294967296L) {
            throw new GeneralSecurityException("Index out of range");
        }
        byteBufferAllocate.putInt((int) j10);
        byteBufferAllocate.put(z10 ? (byte) 1 : (byte) 0);
        return new GCMParameterSpec(128, byteBufferAllocate.array());
    }

    @Override // w5.r
    public final int c() {
        return e() + this.f18736d;
    }

    @Override // w5.r
    public final int d() {
        return this.f18734b;
    }

    @Override // w5.r
    public final int e() {
        return this.f18733a + 1 + 7;
    }

    @Override // w5.r
    public final int f() {
        return this.f18735c;
    }

    @Override // w5.r
    public final w g() throws GeneralSecurityException {
        return new a();
    }

    @Override // w5.r
    public final x h(byte[] bArr) throws GeneralSecurityException {
        return new b(this, bArr);
    }
}
