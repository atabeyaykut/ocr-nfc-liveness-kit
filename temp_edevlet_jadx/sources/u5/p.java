package u5;

import com.google.crypto.tink.shaded.protobuf.c1;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.y0;

/* loaded from: classes2.dex */
public final class p extends com.google.crypto.tink.shaded.protobuf.x<p, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
    private static final p DEFAULT_INSTANCE;
    public static final int KEY_SIZE_FIELD_NUMBER = 2;
    public static final int PARAMS_FIELD_NUMBER = 1;
    private static volatile y0<p> PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 3;
    private int keySize_;
    private q params_;
    private int version_;

    public static final class a extends x.a<p, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        public a() {
            super(p.DEFAULT_INSTANCE);
        }
    }

    static {
        p pVar = new p();
        DEFAULT_INSTANCE = pVar;
        com.google.crypto.tink.shaded.protobuf.x.r(p.class, pVar);
    }

    public static void t(p pVar, q qVar) {
        pVar.getClass();
        pVar.params_ = qVar;
    }

    public static void u(p pVar) {
        pVar.keySize_ = 32;
    }

    public static a x() {
        return DEFAULT_INSTANCE.k();
    }

    public static p y(com.google.crypto.tink.shaded.protobuf.i iVar, com.google.crypto.tink.shaded.protobuf.p pVar) throws com.google.crypto.tink.shaded.protobuf.a0 {
        return (p) com.google.crypto.tink.shaded.protobuf.x.o(DEFAULT_INSTANCE, iVar, pVar);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.x
    public final Object l(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b\u0003\u000b", new Object[]{"params_", "keySize_", "version_"});
            case NEW_MUTABLE_INSTANCE:
                return new p();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<p> bVar = PARSER;
                if (bVar == null) {
                    synchronized (p.class) {
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

    public final int v() {
        return this.keySize_;
    }

    public final q w() {
        q qVar = this.params_;
        return qVar == null ? q.x() : qVar;
    }
}
