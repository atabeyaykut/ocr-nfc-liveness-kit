package u5;

import com.google.crypto.tink.shaded.protobuf.c1;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.y0;

/* loaded from: classes2.dex */
public final class u extends com.google.crypto.tink.shaded.protobuf.x<u, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
    private static final u DEFAULT_INSTANCE;
    public static final int KEY_SIZE_FIELD_NUMBER = 2;
    private static volatile y0<u> PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 1;
    private int keySize_;
    private int version_;

    public static final class a extends x.a<u, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        public a() {
            super(u.DEFAULT_INSTANCE);
        }
    }

    static {
        u uVar = new u();
        DEFAULT_INSTANCE = uVar;
        com.google.crypto.tink.shaded.protobuf.x.r(u.class, uVar);
    }

    public static u u(com.google.crypto.tink.shaded.protobuf.i iVar, com.google.crypto.tink.shaded.protobuf.p pVar) throws com.google.crypto.tink.shaded.protobuf.a0 {
        return (u) com.google.crypto.tink.shaded.protobuf.x.o(DEFAULT_INSTANCE, iVar, pVar);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.x
    public final Object l(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b", new Object[]{"version_", "keySize_"});
            case NEW_MUTABLE_INSTANCE:
                return new u();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<u> bVar = PARSER;
                if (bVar == null) {
                    synchronized (u.class) {
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

    public final int t() {
        return this.keySize_;
    }
}
