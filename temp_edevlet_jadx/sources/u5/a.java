package u5;

import com.google.crypto.tink.shaded.protobuf.c1;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.y0;

/* loaded from: classes2.dex */
public final class a extends com.google.crypto.tink.shaded.protobuf.x<a, C0275a> implements com.google.crypto.tink.shaded.protobuf.r0 {
    private static final a DEFAULT_INSTANCE;
    public static final int KEY_VALUE_FIELD_NUMBER = 2;
    public static final int PARAMS_FIELD_NUMBER = 3;
    private static volatile y0<a> PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 1;
    private com.google.crypto.tink.shaded.protobuf.i keyValue_ = com.google.crypto.tink.shaded.protobuf.i.f4287b;
    private c params_;
    private int version_;

    /* renamed from: u5.a$a, reason: collision with other inner class name */
    public static final class C0275a extends x.a<a, C0275a> implements com.google.crypto.tink.shaded.protobuf.r0 {
        public C0275a() {
            super(a.DEFAULT_INSTANCE);
        }
    }

    static {
        a aVar = new a();
        DEFAULT_INSTANCE = aVar;
        com.google.crypto.tink.shaded.protobuf.x.r(a.class, aVar);
    }

    public static a A(com.google.crypto.tink.shaded.protobuf.i iVar, com.google.crypto.tink.shaded.protobuf.p pVar) throws com.google.crypto.tink.shaded.protobuf.a0 {
        return (a) com.google.crypto.tink.shaded.protobuf.x.o(DEFAULT_INSTANCE, iVar, pVar);
    }

    public static void t(a aVar) {
        aVar.version_ = 0;
    }

    public static void u(a aVar, i.f fVar) {
        aVar.getClass();
        aVar.keyValue_ = fVar;
    }

    public static void v(a aVar, c cVar) {
        aVar.getClass();
        cVar.getClass();
        aVar.params_ = cVar;
    }

    public static C0275a z() {
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
                return new c1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003\t", new Object[]{"version_", "keyValue_", "params_"});
            case NEW_MUTABLE_INSTANCE:
                return new a();
            case NEW_BUILDER:
                return new C0275a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<a> bVar = PARSER;
                if (bVar == null) {
                    synchronized (a.class) {
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

    public final c x() {
        c cVar = this.params_;
        return cVar == null ? c.t() : cVar;
    }

    public final int y() {
        return this.version_;
    }
}
