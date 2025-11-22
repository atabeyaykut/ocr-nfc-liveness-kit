package u5;

import com.google.crypto.tink.shaded.protobuf.c1;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.y0;

/* loaded from: classes2.dex */
public final class x extends com.google.crypto.tink.shaded.protobuf.x<x, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
    private static final x DEFAULT_INSTANCE;
    public static final int KEY_VALUE_FIELD_NUMBER = 2;
    private static volatile y0<x> PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 1;
    private com.google.crypto.tink.shaded.protobuf.i keyValue_ = com.google.crypto.tink.shaded.protobuf.i.f4287b;
    private int version_;

    public static final class a extends x.a<x, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        public a() {
            super(x.DEFAULT_INSTANCE);
        }
    }

    static {
        x xVar = new x();
        DEFAULT_INSTANCE = xVar;
        com.google.crypto.tink.shaded.protobuf.x.r(x.class, xVar);
    }

    public static void t(x xVar) {
        xVar.version_ = 0;
    }

    public static void u(x xVar, i.f fVar) {
        xVar.getClass();
        xVar.keyValue_ = fVar;
    }

    public static a x() {
        return DEFAULT_INSTANCE.k();
    }

    public static x y(com.google.crypto.tink.shaded.protobuf.i iVar, com.google.crypto.tink.shaded.protobuf.p pVar) throws com.google.crypto.tink.shaded.protobuf.a0 {
        return (x) com.google.crypto.tink.shaded.protobuf.x.o(DEFAULT_INSTANCE, iVar, pVar);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.x
    public final Object l(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n", new Object[]{"version_", "keyValue_"});
            case NEW_MUTABLE_INSTANCE:
                return new x();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<x> bVar = PARSER;
                if (bVar == null) {
                    synchronized (x.class) {
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
        return this.keyValue_;
    }

    public final int w() {
        return this.version_;
    }
}
