package u5;

import com.google.crypto.tink.shaded.protobuf.c1;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.y0;

/* loaded from: classes2.dex */
public final class z extends com.google.crypto.tink.shaded.protobuf.x<z, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
    private static final z DEFAULT_INSTANCE;
    public static final int ENCRYPTED_KEYSET_FIELD_NUMBER = 2;
    public static final int KEYSET_INFO_FIELD_NUMBER = 3;
    private static volatile y0<z> PARSER;
    private com.google.crypto.tink.shaded.protobuf.i encryptedKeyset_ = com.google.crypto.tink.shaded.protobuf.i.f4287b;
    private j0 keysetInfo_;

    public static final class a extends x.a<z, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        public a() {
            super(z.DEFAULT_INSTANCE);
        }
    }

    static {
        z zVar = new z();
        DEFAULT_INSTANCE = zVar;
        com.google.crypto.tink.shaded.protobuf.x.r(z.class, zVar);
    }

    public static void t(z zVar, i.f fVar) {
        zVar.getClass();
        zVar.encryptedKeyset_ = fVar;
    }

    public static void u(z zVar, j0 j0Var) {
        zVar.getClass();
        zVar.keysetInfo_ = j0Var;
    }

    public static a w() {
        return DEFAULT_INSTANCE.k();
    }

    public static z x(byte[] bArr, com.google.crypto.tink.shaded.protobuf.p pVar) throws com.google.crypto.tink.shaded.protobuf.a0 {
        return (z) com.google.crypto.tink.shaded.protobuf.x.p(DEFAULT_INSTANCE, bArr, pVar);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.x
    public final Object l(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\n\u0003\t", new Object[]{"encryptedKeyset_", "keysetInfo_"});
            case NEW_MUTABLE_INSTANCE:
                return new z();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<z> bVar = PARSER;
                if (bVar == null) {
                    synchronized (z.class) {
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

    public final com.google.crypto.tink.shaded.protobuf.i v() {
        return this.encryptedKeyset_;
    }
}
