package u5;

import com.google.crypto.tink.shaded.protobuf.c1;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.y0;

/* loaded from: classes2.dex */
public final class m0 extends com.google.crypto.tink.shaded.protobuf.x<m0, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
    private static final m0 DEFAULT_INSTANCE;
    public static final int PARAMS_FIELD_NUMBER = 2;
    private static volatile y0<m0> PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 1;
    private n0 params_;
    private int version_;

    public static final class a extends x.a<m0, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        public a() {
            super(m0.DEFAULT_INSTANCE);
        }
    }

    static {
        m0 m0Var = new m0();
        DEFAULT_INSTANCE = m0Var;
        com.google.crypto.tink.shaded.protobuf.x.r(m0.class, m0Var);
    }

    public static void t(m0 m0Var) {
        m0Var.version_ = 0;
    }

    public static void u(m0 m0Var, n0 n0Var) {
        m0Var.getClass();
        n0Var.getClass();
        m0Var.params_ = n0Var;
    }

    public static a x() {
        return DEFAULT_INSTANCE.k();
    }

    public static m0 y(com.google.crypto.tink.shaded.protobuf.i iVar, com.google.crypto.tink.shaded.protobuf.p pVar) throws com.google.crypto.tink.shaded.protobuf.a0 {
        return (m0) com.google.crypto.tink.shaded.protobuf.x.o(DEFAULT_INSTANCE, iVar, pVar);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.x
    public final Object l(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"version_", "params_"});
            case NEW_MUTABLE_INSTANCE:
                return new m0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<m0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (m0.class) {
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

    public final n0 v() {
        n0 n0Var = this.params_;
        return n0Var == null ? n0.t() : n0Var;
    }

    public final int w() {
        return this.version_;
    }
}
