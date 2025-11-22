package u5;

import com.google.crypto.tink.shaded.protobuf.b1;
import com.google.crypto.tink.shaded.protobuf.c1;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.y0;
import com.google.crypto.tink.shaded.protobuf.z;

@Deprecated
/* loaded from: classes2.dex */
public final class p0 extends com.google.crypto.tink.shaded.protobuf.x<p0, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
    public static final int CONFIG_NAME_FIELD_NUMBER = 1;
    private static final p0 DEFAULT_INSTANCE;
    public static final int ENTRY_FIELD_NUMBER = 2;
    private static volatile y0<p0> PARSER;
    private String configName_ = "";
    private z.c<h0> entry_ = b1.f4238d;

    public static final class a extends x.a<p0, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        public a() {
            super(p0.DEFAULT_INSTANCE);
        }
    }

    static {
        p0 p0Var = new p0();
        DEFAULT_INSTANCE = p0Var;
        com.google.crypto.tink.shaded.protobuf.x.r(p0.class, p0Var);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.x
    public final Object l(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"configName_", "entry_", h0.class});
            case NEW_MUTABLE_INSTANCE:
                return new p0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<p0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (p0.class) {
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
