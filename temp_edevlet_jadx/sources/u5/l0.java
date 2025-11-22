package u5;

import com.google.crypto.tink.shaded.protobuf.c1;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.y0;

/* loaded from: classes2.dex */
public final class l0 extends com.google.crypto.tink.shaded.protobuf.x<l0, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
    private static final l0 DEFAULT_INSTANCE;
    public static final int KEY_URI_FIELD_NUMBER = 1;
    private static volatile y0<l0> PARSER;
    private String keyUri_ = "";

    public static final class a extends x.a<l0, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        public a() {
            super(l0.DEFAULT_INSTANCE);
        }
    }

    static {
        l0 l0Var = new l0();
        DEFAULT_INSTANCE = l0Var;
        com.google.crypto.tink.shaded.protobuf.x.r(l0.class, l0Var);
    }

    public static l0 t() {
        return DEFAULT_INSTANCE;
    }

    public static l0 v(com.google.crypto.tink.shaded.protobuf.i iVar, com.google.crypto.tink.shaded.protobuf.p pVar) throws com.google.crypto.tink.shaded.protobuf.a0 {
        return (l0) com.google.crypto.tink.shaded.protobuf.x.o(DEFAULT_INSTANCE, iVar, pVar);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.x
    public final Object l(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"keyUri_"});
            case NEW_MUTABLE_INSTANCE:
                return new l0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<l0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (l0.class) {
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

    public final String u() {
        return this.keyUri_;
    }
}
