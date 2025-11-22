package u5;

import com.google.crypto.tink.shaded.protobuf.c1;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.y0;

/* loaded from: classes2.dex */
public final class i extends com.google.crypto.tink.shaded.protobuf.x<i, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
    private static final i DEFAULT_INSTANCE;
    public static final int KEY_VALUE_FIELD_NUMBER = 3;
    public static final int PARAMS_FIELD_NUMBER = 2;
    private static volatile y0<i> PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 1;
    private com.google.crypto.tink.shaded.protobuf.i keyValue_ = com.google.crypto.tink.shaded.protobuf.i.f4287b;
    private k params_;
    private int version_;

    public static final class a extends x.a<i, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        public a() {
            super(i.DEFAULT_INSTANCE);
        }
    }

    static {
        i iVar = new i();
        DEFAULT_INSTANCE = iVar;
        com.google.crypto.tink.shaded.protobuf.x.r(i.class, iVar);
    }

    public static a A() {
        return DEFAULT_INSTANCE.k();
    }

    public static i B(com.google.crypto.tink.shaded.protobuf.i iVar, com.google.crypto.tink.shaded.protobuf.p pVar) throws com.google.crypto.tink.shaded.protobuf.a0 {
        return (i) com.google.crypto.tink.shaded.protobuf.x.o(DEFAULT_INSTANCE, iVar, pVar);
    }

    public static void t(i iVar) {
        iVar.version_ = 0;
    }

    public static void u(i iVar, k kVar) {
        iVar.getClass();
        kVar.getClass();
        iVar.params_ = kVar;
    }

    public static void v(i iVar, i.f fVar) {
        iVar.getClass();
        iVar.keyValue_ = fVar;
    }

    public static i w() {
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
                return new i();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<i> bVar = PARSER;
                if (bVar == null) {
                    synchronized (i.class) {
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

    public final k y() {
        k kVar = this.params_;
        return kVar == null ? k.t() : kVar;
    }

    public final int z() {
        return this.version_;
    }
}
