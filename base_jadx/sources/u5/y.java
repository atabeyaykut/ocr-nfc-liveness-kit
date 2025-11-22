package u5;

import com.google.crypto.tink.shaded.protobuf.c1;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.y0;

/* loaded from: classes2.dex */
public final class y extends com.google.crypto.tink.shaded.protobuf.x<y, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
    private static final y DEFAULT_INSTANCE;
    private static volatile y0<y> PARSER;

    public static final class a extends x.a<y, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        public a() {
            super(y.DEFAULT_INSTANCE);
        }
    }

    static {
        y yVar = new y();
        DEFAULT_INSTANCE = yVar;
        com.google.crypto.tink.shaded.protobuf.x.r(y.class, yVar);
    }

    public static y t(com.google.crypto.tink.shaded.protobuf.i iVar, com.google.crypto.tink.shaded.protobuf.p pVar) throws com.google.crypto.tink.shaded.protobuf.a0 {
        return (y) com.google.crypto.tink.shaded.protobuf.x.o(DEFAULT_INSTANCE, iVar, pVar);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.x
    public final Object l(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0000", null);
            case NEW_MUTABLE_INSTANCE:
                return new y();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<y> bVar = PARSER;
                if (bVar == null) {
                    synchronized (y.class) {
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
}
