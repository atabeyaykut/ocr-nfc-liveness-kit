package u5;

import com.google.crypto.tink.shaded.protobuf.c1;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.y0;

/* loaded from: classes2.dex */
public final class g0 extends com.google.crypto.tink.shaded.protobuf.x<g0, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
    private static final g0 DEFAULT_INSTANCE;
    public static final int OUTPUT_PREFIX_TYPE_FIELD_NUMBER = 3;
    private static volatile y0<g0> PARSER = null;
    public static final int TYPE_URL_FIELD_NUMBER = 1;
    public static final int VALUE_FIELD_NUMBER = 2;
    private int outputPrefixType_;
    private String typeUrl_ = "";
    private com.google.crypto.tink.shaded.protobuf.i value_ = com.google.crypto.tink.shaded.protobuf.i.f4287b;

    public static final class a extends x.a<g0, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        public a() {
            super(g0.DEFAULT_INSTANCE);
        }
    }

    static {
        g0 g0Var = new g0();
        DEFAULT_INSTANCE = g0Var;
        com.google.crypto.tink.shaded.protobuf.x.r(g0.class, g0Var);
    }

    public static a A() {
        return DEFAULT_INSTANCE.k();
    }

    public static void t(g0 g0Var, String str) {
        g0Var.getClass();
        g0Var.typeUrl_ = str;
    }

    public static void u(g0 g0Var, i.f fVar) {
        g0Var.getClass();
        g0Var.value_ = fVar;
    }

    public static void v(g0 g0Var, o0 o0Var) {
        g0Var.getClass();
        g0Var.outputPrefixType_ = o0Var.f();
    }

    public static g0 w() {
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
                return new c1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"typeUrl_", "value_", "outputPrefixType_"});
            case NEW_MUTABLE_INSTANCE:
                return new g0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<g0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (g0.class) {
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

    public final o0 x() {
        o0 o0VarN = o0.n(this.outputPrefixType_);
        return o0VarN == null ? o0.UNRECOGNIZED : o0VarN;
    }

    public final String y() {
        return this.typeUrl_;
    }

    public final com.google.crypto.tink.shaded.protobuf.i z() {
        return this.value_;
    }
}
