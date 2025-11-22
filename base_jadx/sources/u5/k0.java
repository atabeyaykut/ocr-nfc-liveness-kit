package u5;

import com.google.crypto.tink.shaded.protobuf.c1;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.y0;

/* loaded from: classes2.dex */
public final class k0 extends com.google.crypto.tink.shaded.protobuf.x<k0, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
    private static final k0 DEFAULT_INSTANCE;
    public static final int PARAMS_FIELD_NUMBER = 2;
    private static volatile y0<k0> PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 1;
    private l0 params_;
    private int version_;

    public static final class a extends x.a<k0, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        public a() {
            super(k0.DEFAULT_INSTANCE);
        }
    }

    static {
        k0 k0Var = new k0();
        DEFAULT_INSTANCE = k0Var;
        com.google.crypto.tink.shaded.protobuf.x.r(k0.class, k0Var);
    }

    public static void t(k0 k0Var) {
        k0Var.version_ = 0;
    }

    public static void u(k0 k0Var, l0 l0Var) {
        k0Var.getClass();
        l0Var.getClass();
        k0Var.params_ = l0Var;
    }

    public static a x() {
        return DEFAULT_INSTANCE.k();
    }

    public static k0 y(com.google.crypto.tink.shaded.protobuf.i iVar, com.google.crypto.tink.shaded.protobuf.p pVar) throws com.google.crypto.tink.shaded.protobuf.a0 {
        return (k0) com.google.crypto.tink.shaded.protobuf.x.o(DEFAULT_INSTANCE, iVar, pVar);
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
                return new k0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<k0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (k0.class) {
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

    public final l0 v() {
        l0 l0Var = this.params_;
        return l0Var == null ? l0.t() : l0Var;
    }

    public final int w() {
        return this.version_;
    }
}
