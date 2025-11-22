package o5;

import com.google.crypto.tink.shaded.protobuf.a0;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.q0;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.logging.Logger;
import n5.f;
import n5.p;
import u5.g0;

/* loaded from: classes2.dex */
public final class j implements n5.a {

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f11243c = new byte[0];

    /* renamed from: a, reason: collision with root package name */
    public final g0 f11244a;

    /* renamed from: b, reason: collision with root package name */
    public final n5.a f11245b;

    public j(g0 g0Var, n5.a aVar) {
        this.f11244a = g0Var;
        this.f11245b = aVar;
    }

    @Override // n5.a
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        q0 q0Var;
        g0 g0Var = this.f11244a;
        Logger logger = p.f10587a;
        synchronized (p.class) {
            n5.d dVarB = p.b(g0Var.y()).b();
            if (!((Boolean) p.f10590d.get(g0Var.y())).booleanValue()) {
                throw new GeneralSecurityException("newKey-operation not permitted for key type " + g0Var.y());
            }
            com.google.crypto.tink.shaded.protobuf.i iVarZ = g0Var.z();
            dVarB.getClass();
            try {
                f.a aVarC = dVarB.f10567a.c();
                q0 q0VarB = aVarC.b(iVarZ);
                aVarC.c(q0VarB);
                q0Var = (q0) aVarC.a(q0VarB);
            } catch (a0 e10) {
                throw new GeneralSecurityException("Failures parsing proto of type ".concat(dVarB.f10567a.c().f10573a.getName()), e10);
            }
        }
        byte[] byteArray = q0Var.toByteArray();
        byte[] bArrA = this.f11245b.a(byteArray, f11243c);
        String strY = this.f11244a.y();
        i.f fVar = com.google.crypto.tink.shaded.protobuf.i.f4287b;
        byte[] bArrA2 = ((n5.a) p.c(strY, com.google.crypto.tink.shaded.protobuf.i.m(byteArray, 0, byteArray.length), n5.a.class)).a(bArr, bArr2);
        return ByteBuffer.allocate(bArrA.length + 4 + bArrA2.length).putInt(bArrA.length).put(bArrA).put(bArrA2).array();
    }

    @Override // n5.a
    public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        try {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            int r22 = byteBufferWrap.getInt();
            if (r22 <= 0 || r22 > bArr.length - 4) {
                throw new GeneralSecurityException("invalid ciphertext");
            }
            byte[] bArr3 = new byte[r22];
            byteBufferWrap.get(bArr3, 0, r22);
            byte[] bArr4 = new byte[byteBufferWrap.remaining()];
            byteBufferWrap.get(bArr4, 0, byteBufferWrap.remaining());
            byte[] bArrB = this.f11245b.b(bArr3, f11243c);
            String strY = this.f11244a.y();
            Logger logger = p.f10587a;
            i.f fVar = com.google.crypto.tink.shaded.protobuf.i.f4287b;
            return ((n5.a) p.c(strY, com.google.crypto.tink.shaded.protobuf.i.m(bArrB, 0, bArrB.length), n5.a.class)).b(bArr4, bArr2);
        } catch (IndexOutOfBoundsException e10) {
            e = e10;
            throw new GeneralSecurityException("invalid ciphertext", e);
        } catch (NegativeArraySizeException e11) {
            e = e11;
            throw new GeneralSecurityException("invalid ciphertext", e);
        } catch (BufferUnderflowException e12) {
            e = e12;
            throw new GeneralSecurityException("invalid ciphertext", e);
        }
    }
}
