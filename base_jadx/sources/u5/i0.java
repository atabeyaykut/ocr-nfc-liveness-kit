package u5;

import com.google.crypto.tink.shaded.protobuf.b1;
import com.google.crypto.tink.shaded.protobuf.c1;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.y0;
import com.google.crypto.tink.shaded.protobuf.z;
import java.util.List;

/* loaded from: classes2.dex */
public final class i0 extends com.google.crypto.tink.shaded.protobuf.x<i0, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
    private static final i0 DEFAULT_INSTANCE;
    public static final int KEY_FIELD_NUMBER = 2;
    private static volatile y0<i0> PARSER = null;
    public static final int PRIMARY_KEY_ID_FIELD_NUMBER = 1;
    private z.c<b> key_ = b1.f4238d;
    private int primaryKeyId_;

    public static final class a extends x.a<i0, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        public a() {
            super(i0.DEFAULT_INSTANCE);
        }
    }

    public static final class b extends com.google.crypto.tink.shaded.protobuf.x<b, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        private static final b DEFAULT_INSTANCE;
        public static final int KEY_DATA_FIELD_NUMBER = 1;
        public static final int KEY_ID_FIELD_NUMBER = 3;
        public static final int OUTPUT_PREFIX_TYPE_FIELD_NUMBER = 4;
        private static volatile y0<b> PARSER = null;
        public static final int STATUS_FIELD_NUMBER = 2;
        private e0 keyData_;
        private int keyId_;
        private int outputPrefixType_;
        private int status_;

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

        public static a C() {
            return DEFAULT_INSTANCE.k();
        }

        public static void t(b bVar, e0 e0Var) {
            bVar.getClass();
            bVar.keyData_ = e0Var;
        }

        public static void u(b bVar, o0 o0Var) {
            bVar.getClass();
            bVar.outputPrefixType_ = o0Var.f();
        }

        public static void v(b bVar) {
            f0 f0Var = f0.ENABLED;
            bVar.getClass();
            bVar.status_ = f0Var.f();
        }

        public static void w(b bVar, int r12) {
            bVar.keyId_ = r12;
        }

        public final f0 A() {
            int r02 = this.status_;
            f0 f0Var = r02 != 0 ? r02 != 1 ? r02 != 2 ? r02 != 3 ? null : f0.DESTROYED : f0.DISABLED : f0.ENABLED : f0.UNKNOWN_STATUS;
            return f0Var == null ? f0.UNRECOGNIZED : f0Var;
        }

        public final boolean B() {
            return this.keyData_ != null;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.x
        public final Object l(x.f fVar) {
            switch (fVar) {
                case GET_MEMOIZED_IS_INITIALIZED:
                    return (byte) 1;
                case SET_MEMOIZED_IS_INITIALIZED:
                    return null;
                case BUILD_MESSAGE_INFO:
                    return new c1(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"keyData_", "status_", "keyId_", "outputPrefixType_"});
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

        public final e0 x() {
            e0 e0Var = this.keyData_;
            return e0Var == null ? e0.w() : e0Var;
        }

        public final int y() {
            return this.keyId_;
        }

        public final o0 z() {
            o0 o0VarN = o0.n(this.outputPrefixType_);
            return o0VarN == null ? o0.UNRECOGNIZED : o0VarN;
        }
    }

    static {
        i0 i0Var = new i0();
        DEFAULT_INSTANCE = i0Var;
        com.google.crypto.tink.shaded.protobuf.x.r(i0.class, i0Var);
    }

    public static i0 A(byte[] bArr, com.google.crypto.tink.shaded.protobuf.p pVar) throws com.google.crypto.tink.shaded.protobuf.a0 {
        return (i0) com.google.crypto.tink.shaded.protobuf.x.p(DEFAULT_INSTANCE, bArr, pVar);
    }

    public static void t(i0 i0Var, int r12) {
        i0Var.primaryKeyId_ = r12;
    }

    public static void u(i0 i0Var, b bVar) {
        i0Var.getClass();
        if (!i0Var.key_.o0()) {
            z.c<b> cVar = i0Var.key_;
            int size = cVar.size();
            i0Var.key_ = cVar.F(size == 0 ? 10 : size * 2);
        }
        i0Var.key_.add(bVar);
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
                return new c1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"primaryKeyId_", "key_", b.class});
            case NEW_MUTABLE_INSTANCE:
                return new i0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<i0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (i0.class) {
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

    public final b v(int r22) {
        return this.key_.get(r22);
    }

    public final int w() {
        return this.key_.size();
    }

    public final List<b> x() {
        return this.key_;
    }

    public final int y() {
        return this.primaryKeyId_;
    }
}
