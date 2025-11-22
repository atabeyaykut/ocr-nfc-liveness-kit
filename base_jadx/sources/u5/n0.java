package u5;

import com.google.crypto.tink.shaded.protobuf.c1;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.y0;

/* loaded from: classes2.dex */
public final class n0 extends com.google.crypto.tink.shaded.protobuf.x<n0, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
    private static final n0 DEFAULT_INSTANCE;
    public static final int DEK_TEMPLATE_FIELD_NUMBER = 2;
    public static final int KEK_URI_FIELD_NUMBER = 1;
    private static volatile y0<n0> PARSER;
    private g0 dekTemplate_;
    private String kekUri_ = "";

    public static final class a extends x.a<n0, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        public a() {
            super(n0.DEFAULT_INSTANCE);
        }
    }

    static {
        n0 n0Var = new n0();
        DEFAULT_INSTANCE = n0Var;
        com.google.crypto.tink.shaded.protobuf.x.r(n0.class, n0Var);
    }

    public static n0 t() {
        return DEFAULT_INSTANCE;
    }

    public static n0 w(com.google.crypto.tink.shaded.protobuf.i iVar, com.google.crypto.tink.shaded.protobuf.p pVar) throws com.google.crypto.tink.shaded.protobuf.a0 {
        return (n0) com.google.crypto.tink.shaded.protobuf.x.o(DEFAULT_INSTANCE, iVar, pVar);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.x
    public final Object l(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\t", new Object[]{"kekUri_", "dekTemplate_"});
            case NEW_MUTABLE_INSTANCE:
                return new n0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<n0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (n0.class) {
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

    public final g0 u() {
        g0 g0Var = this.dekTemplate_;
        return g0Var == null ? g0.w() : g0Var;
    }

    public final String v() {
        return this.kekUri_;
    }
}
