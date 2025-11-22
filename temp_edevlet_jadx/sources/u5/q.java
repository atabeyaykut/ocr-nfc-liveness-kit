package u5;

import com.google.crypto.tink.shaded.protobuf.c1;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.y0;

/* loaded from: classes2.dex */
public final class q extends com.google.crypto.tink.shaded.protobuf.x<q, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
    public static final int CIPHERTEXT_SEGMENT_SIZE_FIELD_NUMBER = 1;
    private static final q DEFAULT_INSTANCE;
    public static final int DERIVED_KEY_SIZE_FIELD_NUMBER = 2;
    public static final int HKDF_HASH_TYPE_FIELD_NUMBER = 3;
    private static volatile y0<q> PARSER;
    private int ciphertextSegmentSize_;
    private int derivedKeySize_;
    private int hkdfHashType_;

    public static final class a extends x.a<q, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        public a() {
            super(q.DEFAULT_INSTANCE);
        }
    }

    static {
        q qVar = new q();
        DEFAULT_INSTANCE = qVar;
        com.google.crypto.tink.shaded.protobuf.x.r(q.class, qVar);
    }

    public static a A() {
        return DEFAULT_INSTANCE.k();
    }

    public static void t(q qVar) {
        qVar.ciphertextSegmentSize_ = 4096;
    }

    public static void u(q qVar) {
        qVar.derivedKeySize_ = 32;
    }

    public static void v(q qVar) {
        a0 a0Var = a0.SHA256;
        qVar.getClass();
        qVar.hkdfHashType_ = a0Var.f();
    }

    public static q x() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.x
    public final Object l(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\f", new Object[]{"ciphertextSegmentSize_", "derivedKeySize_", "hkdfHashType_"});
            case NEW_MUTABLE_INSTANCE:
                return new q();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<q> bVar = PARSER;
                if (bVar == null) {
                    synchronized (q.class) {
                        try {
                            bVar = PARSER;
                            if (bVar == null) {
                                bVar = new x.b<>(DEFAULT_INSTANCE);
                                PARSER = bVar;
                            }
                        } finally {
                        }
                    }
                }
                return bVar;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final int w() {
        return this.ciphertextSegmentSize_;
    }

    public final int y() {
        return this.derivedKeySize_;
    }

    public final a0 z() {
        a0 a0VarN = a0.n(this.hkdfHashType_);
        return a0VarN == null ? a0.UNRECOGNIZED : a0VarN;
    }
}
