package u5;

import com.google.crypto.tink.shaded.protobuf.c1;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.y0;

/* loaded from: classes2.dex */
public final class b0 extends com.google.crypto.tink.shaded.protobuf.x<b0, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
    private static final b0 DEFAULT_INSTANCE;
    public static final int KEY_VALUE_FIELD_NUMBER = 3;
    public static final int PARAMS_FIELD_NUMBER = 2;
    private static volatile y0<b0> PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 1;
    private com.google.crypto.tink.shaded.protobuf.i keyValue_ = com.google.crypto.tink.shaded.protobuf.i.f4287b;
    private d0 params_;
    private int version_;

    public static final class a extends x.a<b0, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        public a() {
            super(b0.DEFAULT_INSTANCE);
        }
    }

    static {
        b0 b0Var = new b0();
        DEFAULT_INSTANCE = b0Var;
        com.google.crypto.tink.shaded.protobuf.x.r(b0.class, b0Var);
    }

    public static a A() {
        return DEFAULT_INSTANCE.k();
    }

    public static b0 B(com.google.crypto.tink.shaded.protobuf.i iVar, com.google.crypto.tink.shaded.protobuf.p pVar) throws com.google.crypto.tink.shaded.protobuf.a0 {
        return (b0) com.google.crypto.tink.shaded.protobuf.x.o(DEFAULT_INSTANCE, iVar, pVar);
    }

    public static void t(b0 b0Var) {
        b0Var.version_ = 0;
    }

    public static void u(b0 b0Var, d0 d0Var) {
        b0Var.getClass();
        d0Var.getClass();
        b0Var.params_ = d0Var;
    }

    public static void v(b0 b0Var, i.f fVar) {
        b0Var.getClass();
        b0Var.keyValue_ = fVar;
    }

    public static b0 w() {
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
                return new c1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"version_", "params_", "keyValue_"});
            case NEW_MUTABLE_INSTANCE:
                return new b0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<b0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (b0.class) {
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

    public final com.google.crypto.tink.shaded.protobuf.i x() {
        return this.keyValue_;
    }

    public final d0 y() {
        d0 d0Var = this.params_;
        return d0Var == null ? d0.t() : d0Var;
    }

    public final int z() {
        return this.version_;
    }
}
