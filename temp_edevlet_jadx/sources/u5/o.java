package u5;

import com.google.crypto.tink.shaded.protobuf.c1;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.y0;

/* loaded from: classes2.dex */
public final class o extends com.google.crypto.tink.shaded.protobuf.x<o, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
    private static final o DEFAULT_INSTANCE;
    public static final int KEY_VALUE_FIELD_NUMBER = 3;
    public static final int PARAMS_FIELD_NUMBER = 2;
    private static volatile y0<o> PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 1;
    private com.google.crypto.tink.shaded.protobuf.i keyValue_ = com.google.crypto.tink.shaded.protobuf.i.f4287b;
    private q params_;
    private int version_;

    public static final class a extends x.a<o, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        public a() {
            super(o.DEFAULT_INSTANCE);
        }
    }

    static {
        o oVar = new o();
        DEFAULT_INSTANCE = oVar;
        com.google.crypto.tink.shaded.protobuf.x.r(o.class, oVar);
    }

    public static o A(com.google.crypto.tink.shaded.protobuf.i iVar, com.google.crypto.tink.shaded.protobuf.p pVar) throws com.google.crypto.tink.shaded.protobuf.a0 {
        return (o) com.google.crypto.tink.shaded.protobuf.x.o(DEFAULT_INSTANCE, iVar, pVar);
    }

    public static void t(o oVar) {
        oVar.version_ = 0;
    }

    public static void u(o oVar, q qVar) {
        oVar.getClass();
        qVar.getClass();
        oVar.params_ = qVar;
    }

    public static void v(o oVar, i.f fVar) {
        oVar.getClass();
        oVar.keyValue_ = fVar;
    }

    public static a z() {
        return DEFAULT_INSTANCE.k();
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
                return new o();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<o> bVar = PARSER;
                if (bVar == null) {
                    synchronized (o.class) {
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

    public final com.google.crypto.tink.shaded.protobuf.i w() {
        return this.keyValue_;
    }

    public final q x() {
        q qVar = this.params_;
        return qVar == null ? q.x() : qVar;
    }

    public final int y() {
        return this.version_;
    }
}
