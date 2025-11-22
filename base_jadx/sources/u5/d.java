package u5;

import com.google.crypto.tink.shaded.protobuf.c1;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.y0;

/* loaded from: classes2.dex */
public final class d extends com.google.crypto.tink.shaded.protobuf.x<d, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
    public static final int AES_CTR_KEY_FIELD_NUMBER = 2;
    private static final d DEFAULT_INSTANCE;
    public static final int HMAC_KEY_FIELD_NUMBER = 3;
    private static volatile y0<d> PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 1;
    private i aesCtrKey_;
    private b0 hmacKey_;
    private int version_;

    public static final class a extends x.a<d, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        public a() {
            super(d.DEFAULT_INSTANCE);
        }
    }

    static {
        d dVar = new d();
        DEFAULT_INSTANCE = dVar;
        com.google.crypto.tink.shaded.protobuf.x.r(d.class, dVar);
    }

    public static d A(com.google.crypto.tink.shaded.protobuf.i iVar, com.google.crypto.tink.shaded.protobuf.p pVar) throws com.google.crypto.tink.shaded.protobuf.a0 {
        return (d) com.google.crypto.tink.shaded.protobuf.x.o(DEFAULT_INSTANCE, iVar, pVar);
    }

    public static void t(d dVar) {
        dVar.version_ = 0;
    }

    public static void u(d dVar, i iVar) {
        dVar.getClass();
        iVar.getClass();
        dVar.aesCtrKey_ = iVar;
    }

    public static void v(d dVar, b0 b0Var) {
        dVar.getClass();
        b0Var.getClass();
        dVar.hmacKey_ = b0Var;
    }

    public static a z() {
        return DEFAULT_INSTANCE.k();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.x
    public final Object l(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t", new Object[]{"version_", "aesCtrKey_", "hmacKey_"});
            case NEW_MUTABLE_INSTANCE:
                return new d();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<d> bVar = PARSER;
                if (bVar == null) {
                    synchronized (d.class) {
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

    public final i w() {
        i iVar = this.aesCtrKey_;
        return iVar == null ? i.w() : iVar;
    }

    public final b0 x() {
        b0 b0Var = this.hmacKey_;
        return b0Var == null ? b0.w() : b0Var;
    }

    public final int y() {
        return this.version_;
    }
}
