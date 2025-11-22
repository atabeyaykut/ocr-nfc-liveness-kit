package u5;

import com.google.crypto.tink.shaded.protobuf.c1;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.y0;
import com.google.crypto.tink.shaded.protobuf.z;

/* loaded from: classes2.dex */
public final class e0 extends com.google.crypto.tink.shaded.protobuf.x<e0, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
    private static final e0 DEFAULT_INSTANCE;
    public static final int KEY_MATERIAL_TYPE_FIELD_NUMBER = 3;
    private static volatile y0<e0> PARSER = null;
    public static final int TYPE_URL_FIELD_NUMBER = 1;
    public static final int VALUE_FIELD_NUMBER = 2;
    private int keyMaterialType_;
    private String typeUrl_ = "";
    private com.google.crypto.tink.shaded.protobuf.i value_ = com.google.crypto.tink.shaded.protobuf.i.f4287b;

    public static final class a extends x.a<e0, a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        public a() {
            super(e0.DEFAULT_INSTANCE);
        }
    }

    public enum b implements z.a {
        UNKNOWN_KEYMATERIAL(0),
        SYMMETRIC(1),
        ASYMMETRIC_PRIVATE(2),
        ASYMMETRIC_PUBLIC(3),
        REMOTE(4),
        UNRECOGNIZED(-1);


        /* renamed from: a, reason: collision with root package name */
        public final int f17888a;

        b(int r32) {
            this.f17888a = r32;
        }

        public static b n(int r12) {
            if (r12 == 0) {
                return UNKNOWN_KEYMATERIAL;
            }
            if (r12 == 1) {
                return SYMMETRIC;
            }
            if (r12 == 2) {
                return ASYMMETRIC_PRIVATE;
            }
            if (r12 == 3) {
                return ASYMMETRIC_PUBLIC;
            }
            if (r12 != 4) {
                return null;
            }
            return REMOTE;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.z.a
        public final int f() {
            if (this != UNRECOGNIZED) {
                return this.f17888a;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    static {
        e0 e0Var = new e0();
        DEFAULT_INSTANCE = e0Var;
        com.google.crypto.tink.shaded.protobuf.x.r(e0.class, e0Var);
    }

    public static a A() {
        return DEFAULT_INSTANCE.k();
    }

    public static void t(e0 e0Var, String str) {
        e0Var.getClass();
        str.getClass();
        e0Var.typeUrl_ = str;
    }

    public static void u(e0 e0Var, com.google.crypto.tink.shaded.protobuf.i iVar) {
        e0Var.getClass();
        iVar.getClass();
        e0Var.value_ = iVar;
    }

    public static void v(e0 e0Var, b bVar) {
        e0Var.getClass();
        e0Var.keyMaterialType_ = bVar.f();
    }

    public static e0 w() {
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
                return new c1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"typeUrl_", "value_", "keyMaterialType_"});
            case NEW_MUTABLE_INSTANCE:
                return new e0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<e0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (e0.class) {
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

    public final b x() {
        b bVarN = b.n(this.keyMaterialType_);
        return bVarN == null ? b.UNRECOGNIZED : bVarN;
    }

    public final String y() {
        return this.typeUrl_;
    }

    public final com.google.crypto.tink.shaded.protobuf.i z() {
        return this.value_;
    }
}
