package u5;

import com.google.crypto.tink.shaded.protobuf.b1;
import com.google.crypto.tink.shaded.protobuf.c1;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.y0;
import com.google.crypto.tink.shaded.protobuf.z;

/* loaded from: classes2.dex */
public final class j0 extends com.google.crypto.tink.shaded.protobuf.x<j0, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
    private static final j0 DEFAULT_INSTANCE;
    public static final int KEY_INFO_FIELD_NUMBER = 2;
    private static volatile y0<j0> PARSER = null;
    public static final int PRIMARY_KEY_ID_FIELD_NUMBER = 1;
    private z.c<b> keyInfo_ = b1.f4238d;
    private int primaryKeyId_;

    public static final class a extends x.a<j0, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        public a() {
            super(j0.DEFAULT_INSTANCE);
        }
    }

    public static final class b extends com.google.crypto.tink.shaded.protobuf.x<b, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        private static final b DEFAULT_INSTANCE;
        public static final int KEY_ID_FIELD_NUMBER = 3;
        public static final int OUTPUT_PREFIX_TYPE_FIELD_NUMBER = 4;
        private static volatile y0<b> PARSER = null;
        public static final int STATUS_FIELD_NUMBER = 2;
        public static final int TYPE_URL_FIELD_NUMBER = 1;
        private int keyId_;
        private int outputPrefixType_;
        private int status_;
        private String typeUrl_ = "";

        public static final class a extends x.a<b, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
            public a() {
                super(b.DEFAULT_INSTANCE);
            }
        }

        static {
            b bVar = new b();
            DEFAULT_INSTANCE = bVar;
            com.google.crypto.tink.shaded.protobuf.x.r(b.class, bVar);
        }

        public static void t(b bVar, String str) {
            bVar.getClass();
            str.getClass();
            bVar.typeUrl_ = str;
        }

        public static void u(b bVar, o0 o0Var) {
            bVar.getClass();
            bVar.outputPrefixType_ = o0Var.f();
        }

        public static void v(b bVar, f0 f0Var) {
            bVar.getClass();
            bVar.status_ = f0Var.f();
        }

        public static void w(b bVar, int r12) {
            bVar.keyId_ = r12;
        }

        public static a y() {
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
                    return new c1(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"typeUrl_", "status_", "keyId_", "outputPrefixType_"});
                case NEW_MUTABLE_INSTANCE:
                    return new b();
                case NEW_BUILDER:
                    return new a();
                case GET_DEFAULT_INSTANCE:
                    return DEFAULT_INSTANCE;
                case GET_PARSER:
                    y0<b> bVar = PARSER;
                    if (bVar == null) {
                        synchronized (b.class) {
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

        public final int x() {
            return this.keyId_;
        }
    }

    static {
        j0 j0Var = new j0();
        DEFAULT_INSTANCE = j0Var;
        com.google.crypto.tink.shaded.protobuf.x.r(j0.class, j0Var);
    }

    public static void t(j0 j0Var, int r12) {
        j0Var.primaryKeyId_ = r12;
    }

    public static void u(j0 j0Var, b bVar) {
        j0Var.getClass();
        if (!j0Var.keyInfo_.o0()) {
            z.c<b> cVar = j0Var.keyInfo_;
            int size = cVar.size();
            j0Var.keyInfo_ = cVar.F(size == 0 ? 10 : size * 2);
        }
        j0Var.keyInfo_.add(bVar);
    }

    public static a w() {
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
                return new c1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"primaryKeyId_", "keyInfo_", b.class});
            case NEW_MUTABLE_INSTANCE:
                return new j0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<j0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (j0.class) {
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

    public final b v() {
        return this.keyInfo_.get(0);
    }
}
