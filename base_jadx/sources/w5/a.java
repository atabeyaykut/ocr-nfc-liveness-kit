package w5;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public final class a extends r {

    /* renamed from: a, reason: collision with root package name */
    public final int f18705a;

    /* renamed from: b, reason: collision with root package name */
    public final String f18706b;

    /* renamed from: c, reason: collision with root package name */
    public final int f18707c;

    /* renamed from: d, reason: collision with root package name */
    public final int f18708d;

    /* renamed from: e, reason: collision with root package name */
    public final int f18709e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final String f18710g;

    /* renamed from: h, reason: collision with root package name */
    public final byte[] f18711h;

    /* renamed from: w5.a$a, reason: collision with other inner class name */
    public class C0294a implements w {

        /* renamed from: a, reason: collision with root package name */
        public SecretKeySpec f18712a;

        /* renamed from: b, reason: collision with root package name */
        public SecretKeySpec f18713b;

        /* renamed from: c, reason: collision with root package name */
        public Cipher f18714c;

        /* renamed from: d, reason: collision with root package name */
        public Mac f18715d;

        /* renamed from: e, reason: collision with root package name */
        public byte[] f18716e;

        public C0294a() {
        }

        @Override // w5.w
        public final synchronized void a(ByteBuffer byteBuffer, byte[] bArr) throws GeneralSecurityException {
            if (byteBuffer.remaining() != a.this.e()) {
                throw new InvalidAlgorithmParameterException("Invalid header length");
            }
            if (byteBuffer.get() != a.this.e()) {
                throw new GeneralSecurityException("Invalid ciphertext");
            }
            this.f18716e = new byte[7];
            byte[] bArr2 = new byte[a.this.f18705a];
            byteBuffer.get(bArr2);
            byteBuffer.get(this.f18716e);
            a aVar = a.this;
            int r12 = aVar.f18705a + 32;
            byte[] bArrA = p.a(aVar.f18711h, bArr2, aVar.f18710g, bArr, r12);
            a aVar2 = a.this;
            aVar2.getClass();
            this.f18712a = new SecretKeySpec(bArrA, 0, aVar2.f18705a, "AES");
            a aVar3 = a.this;
            aVar3.getClass();
            this.f18713b = new SecretKeySpec(bArrA, aVar3.f18705a, 32, aVar3.f18706b);
            this.f18714c = n.f18767e.a("AES/CTR/NoPadding");
            a aVar4 = a.this;
            aVar4.getClass();
            this.f18715d = n.f.a(aVar4.f18706b);
        }

        @Override // w5.w
        public final synchronized void b(ByteBuffer byteBuffer, int r72, boolean z10, ByteBuffer byteBuffer2) throws GeneralSecurityException {
            int r02 = byteBuffer.position();
            byte[] bArrI = a.i(a.this, this.f18716e, r72, z10);
            int r82 = byteBuffer.remaining();
            int r12 = a.this.f18707c;
            if (r82 < r12) {
                throw new GeneralSecurityException("Ciphertext too short");
            }
            int r83 = (r82 - r12) + r02;
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            byteBufferDuplicate.limit(r83);
            ByteBuffer byteBufferDuplicate2 = byteBuffer.duplicate();
            byteBufferDuplicate2.position(r83);
            this.f18715d.init(this.f18713b);
            this.f18715d.update(bArrI);
            this.f18715d.update(byteBufferDuplicate);
            byte[] bArrCopyOf = Arrays.copyOf(this.f18715d.doFinal(), a.this.f18707c);
            byte[] bArr = new byte[a.this.f18707c];
            byteBufferDuplicate2.get(bArr);
            if (!h.b(bArr, bArrCopyOf)) {
                throw new GeneralSecurityException("Tag mismatch");
            }
            byteBuffer.limit(r83);
            this.f18714c.init(1, this.f18712a, new IvParameterSpec(bArrI));
            this.f18714c.doFinal(byteBuffer, byteBuffer2);
        }
    }

    public class b implements x {

        /* renamed from: a, reason: collision with root package name */
        public final SecretKeySpec f18717a;

        /* renamed from: b, reason: collision with root package name */
        public final SecretKeySpec f18718b;

        /* renamed from: c, reason: collision with root package name */
        public final Cipher f18719c = n.f18767e.a("AES/CTR/NoPadding");

        /* renamed from: d, reason: collision with root package name */
        public final Mac f18720d;

        /* renamed from: e, reason: collision with root package name */
        public final byte[] f18721e;
        public final ByteBuffer f;

        /* renamed from: g, reason: collision with root package name */
        public long f18722g;

        public b(byte[] bArr) throws IllegalStateException, GeneralSecurityException {
            this.f18722g = 0L;
            a.this.getClass();
            this.f18720d = n.f.a(a.this.f18706b);
            this.f18722g = 0L;
            int r02 = a.this.f18705a;
            byte[] bArrA = v.a(r02);
            byte[] bArrA2 = v.a(7);
            this.f18721e = bArrA2;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(a.this.e());
            this.f = byteBufferAllocate;
            byteBufferAllocate.put((byte) a.this.e());
            byteBufferAllocate.put(bArrA);
            byteBufferAllocate.put(bArrA2);
            byteBufferAllocate.flip();
            String str = a.this.f18710g;
            byte[] bArrA3 = p.a(a.this.f18711h, bArrA, str, bArr, r02 + 32);
            this.f18717a = new SecretKeySpec(bArrA3, 0, r02, "AES");
            this.f18718b = new SecretKeySpec(bArrA3, r02, 32, a.this.f18706b);
        }

        @Override // w5.x
        public final synchronized void a(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3) throws GeneralSecurityException {
            int r02 = byteBuffer3.position();
            byte[] bArrI = a.i(a.this, this.f18721e, this.f18722g, false);
            this.f18719c.init(1, this.f18717a, new IvParameterSpec(bArrI));
            this.f18722g++;
            this.f18719c.update(byteBuffer, byteBuffer3);
            this.f18719c.doFinal(byteBuffer2, byteBuffer3);
            ByteBuffer byteBufferDuplicate = byteBuffer3.duplicate();
            byteBufferDuplicate.flip();
            byteBufferDuplicate.position(r02);
            this.f18720d.init(this.f18718b);
            this.f18720d.update(bArrI);
            this.f18720d.update(byteBufferDuplicate);
            byteBuffer3.put(this.f18720d.doFinal(), 0, a.this.f18707c);
        }

        @Override // w5.x
        public final ByteBuffer b() {
            return this.f.asReadOnlyBuffer();
        }

        @Override // w5.x
        public final synchronized void c(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws GeneralSecurityException {
            int r02 = byteBuffer2.position();
            byte[] bArrI = a.i(a.this, this.f18721e, this.f18722g, true);
            this.f18719c.init(1, this.f18717a, new IvParameterSpec(bArrI));
            this.f18722g++;
            this.f18719c.doFinal(byteBuffer, byteBuffer2);
            ByteBuffer byteBufferDuplicate = byteBuffer2.duplicate();
            byteBufferDuplicate.flip();
            byteBufferDuplicate.position(r02);
            this.f18720d.init(this.f18718b);
            this.f18720d.update(bArrI);
            this.f18720d.update(byteBufferDuplicate);
            byteBuffer2.put(this.f18720d.doFinal(), 0, a.this.f18707c);
        }
    }

    public a(byte[] bArr, String str, int r52, String str2, int r72, int r82) throws InvalidAlgorithmParameterException {
        int length = bArr.length;
        if (length < 16 || length < r52) {
            throw new InvalidAlgorithmParameterException("ikm too short, must be >= " + Math.max(16, r52));
        }
        a0.a(r52);
        if (r72 < 10) {
            throw new InvalidAlgorithmParameterException(android.support.v4.media.a.d("tag size too small ", r72));
        }
        if ((str2.equals("HmacSha1") && r72 > 20) || ((str2.equals("HmacSha256") && r72 > 32) || (str2.equals("HmacSha512") && r72 > 64))) {
            throw new InvalidAlgorithmParameterException("tag size too big");
        }
        if (((((r82 + 0) - r72) - r52) - 7) - 1 <= 0) {
            throw new InvalidAlgorithmParameterException("ciphertextSegmentSize too small");
        }
        this.f18711h = Arrays.copyOf(bArr, bArr.length);
        this.f18710g = str;
        this.f18705a = r52;
        this.f18706b = str2;
        this.f18707c = r72;
        this.f18708d = r82;
        this.f = 0;
        this.f18709e = r82 - r72;
    }

    public static byte[] i(a aVar, byte[] bArr, long j10, boolean z10) throws GeneralSecurityException {
        aVar.getClass();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
        byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
        byteBufferAllocate.put(bArr);
        if (0 > j10 || j10 >= 4294967296L) {
            throw new GeneralSecurityException("Index out of range");
        }
        byteBufferAllocate.putInt((int) j10);
        byteBufferAllocate.put(z10 ? (byte) 1 : (byte) 0);
        byteBufferAllocate.putInt(0);
        return byteBufferAllocate.array();
    }

    @Override // w5.r
    public final int c() {
        return e() + this.f;
    }

    @Override // w5.r
    public final int d() {
        return this.f18708d;
    }

    @Override // w5.r
    public final int e() {
        return this.f18705a + 1 + 7;
    }

    @Override // w5.r
    public final int f() {
        return this.f18709e;
    }

    @Override // w5.r
    public final w g() throws GeneralSecurityException {
        return new C0294a();
    }

    @Override // w5.r
    public final x h(byte[] bArr) throws GeneralSecurityException {
        return new b(bArr);
    }
}
