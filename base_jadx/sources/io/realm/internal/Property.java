package io.realm.internal;

import androidx.core.view.InputDeviceCompat;
import io.realm.RealmFieldType;
import java.util.Locale;
import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes2.dex */
public class Property implements i {

    /* renamed from: b, reason: collision with root package name */
    public static final long f7627b = nativeGetFinalizerPtr();

    /* renamed from: a, reason: collision with root package name */
    public final long f7628a;

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7629a;

        static {
            int[] r02 = new int[RealmFieldType.values().length];
            f7629a = r02;
            try {
                r02[RealmFieldType.OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7629a[RealmFieldType.LIST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7629a[RealmFieldType.LINKING_OBJECTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7629a[RealmFieldType.INTEGER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f7629a[RealmFieldType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f7629a[RealmFieldType.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f7629a[RealmFieldType.BINARY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f7629a[RealmFieldType.DATE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f7629a[RealmFieldType.FLOAT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f7629a[RealmFieldType.DECIMAL128.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f7629a[RealmFieldType.OBJECT_ID.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f7629a[RealmFieldType.UUID.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f7629a[RealmFieldType.MIXED.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f7629a[RealmFieldType.DOUBLE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f7629a[RealmFieldType.INTEGER_LIST.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f7629a[RealmFieldType.BOOLEAN_LIST.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f7629a[RealmFieldType.STRING_LIST.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f7629a[RealmFieldType.BINARY_LIST.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f7629a[RealmFieldType.DATE_LIST.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f7629a[RealmFieldType.FLOAT_LIST.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f7629a[RealmFieldType.DECIMAL128_LIST.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f7629a[RealmFieldType.OBJECT_ID_LIST.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f7629a[RealmFieldType.UUID_LIST.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f7629a[RealmFieldType.DOUBLE_LIST.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f7629a[RealmFieldType.MIXED_LIST.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f7629a[RealmFieldType.STRING_TO_MIXED_MAP.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f7629a[RealmFieldType.STRING_TO_BOOLEAN_MAP.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f7629a[RealmFieldType.STRING_TO_STRING_MAP.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f7629a[RealmFieldType.STRING_TO_INTEGER_MAP.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f7629a[RealmFieldType.STRING_TO_FLOAT_MAP.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f7629a[RealmFieldType.STRING_TO_DOUBLE_MAP.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f7629a[RealmFieldType.STRING_TO_BINARY_MAP.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f7629a[RealmFieldType.STRING_TO_DATE_MAP.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                f7629a[RealmFieldType.STRING_TO_DECIMAL128_MAP.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f7629a[RealmFieldType.STRING_TO_OBJECT_ID_MAP.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f7629a[RealmFieldType.STRING_TO_UUID_MAP.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                f7629a[RealmFieldType.STRING_TO_LINK_MAP.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                f7629a[RealmFieldType.BOOLEAN_SET.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                f7629a[RealmFieldType.STRING_SET.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                f7629a[RealmFieldType.INTEGER_SET.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                f7629a[RealmFieldType.FLOAT_SET.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                f7629a[RealmFieldType.DOUBLE_SET.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                f7629a[RealmFieldType.BINARY_SET.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                f7629a[RealmFieldType.DATE_SET.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                f7629a[RealmFieldType.DECIMAL128_SET.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                f7629a[RealmFieldType.OBJECT_ID_SET.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                f7629a[RealmFieldType.UUID_SET.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                f7629a[RealmFieldType.LINK_SET.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                f7629a[RealmFieldType.MIXED_SET.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
        }
    }

    public Property(long j10) {
        this.f7628a = j10;
        h.f7664b.a(this);
    }

    public static int a(RealmFieldType realmFieldType, boolean z10) {
        int r12 = 1;
        switch (a.f7629a[realmFieldType.ordinal()]) {
            case 1:
                return 71;
            case 2:
                return 135;
            case 3:
                return ISO781611.FORMAT_TYPE_TAG;
            case 4:
                r12 = 0;
                break;
            case 5:
                break;
            case 6:
                r12 = 2;
                break;
            case 7:
                r12 = 3;
                break;
            case 8:
                r12 = 4;
                break;
            case 9:
                r12 = 5;
                break;
            case 10:
                r12 = 11;
                break;
            case 11:
                r12 = 10;
                break;
            case 12:
                r12 = 12;
                break;
            case 13:
                r12 = 9;
                break;
            case 14:
                r12 = 6;
                break;
            case 15:
                r12 = 128;
                break;
            case 16:
                r12 = 129;
                break;
            case 17:
                r12 = ISO781611.BIOMETRIC_SUBTYPE_TAG;
                break;
            case 18:
                r12 = ISO781611.CREATION_DATE_AND_TIME_TAG;
                break;
            case 19:
                r12 = 132;
                break;
            case 20:
                r12 = 133;
                break;
            case 21:
                r12 = 139;
                break;
            case 22:
                r12 = 138;
                break;
            case 23:
                r12 = 140;
                break;
            case 24:
                r12 = ISO781611.CREATOR_OF_BIOMETRIC_REFERENCE_DATA;
                break;
            case 25:
                r12 = 137;
                break;
            case 26:
                r12 = 521;
                break;
            case 27:
                r12 = InputDeviceCompat.SOURCE_DPAD;
                break;
            case 28:
                r12 = 514;
                break;
            case 29:
                r12 = 512;
                break;
            case 30:
                r12 = 517;
                break;
            case 31:
                r12 = 518;
                break;
            case 32:
                r12 = 515;
                break;
            case 33:
                r12 = 516;
                break;
            case 34:
                r12 = 523;
                break;
            case 35:
                r12 = 522;
                break;
            case 36:
                r12 = 524;
                break;
            case 37:
                r12 = 519;
                break;
            case 38:
                r12 = 257;
                break;
            case 39:
                r12 = 258;
                break;
            case 40:
                r12 = 256;
                break;
            case 41:
                r12 = 261;
                break;
            case 42:
                r12 = 262;
                break;
            case 43:
                r12 = 259;
                break;
            case 44:
                r12 = 260;
                break;
            case 45:
                r12 = 267;
                break;
            case 46:
                r12 = 266;
                break;
            case 47:
                r12 = 268;
                break;
            case 48:
                return 263;
            case 49:
                r12 = 265;
                break;
            default:
                throw new IllegalArgumentException(String.format(Locale.US, "Unsupported filed type: '%s'.", realmFieldType.name()));
        }
        return r12 | (z10 ? 0 : 64);
    }

    public static native long nativeCreatePersistedLinkProperty(String str, String str2, int r22, String str3);

    public static native long nativeCreatePersistedProperty(String str, String str2, int r22, boolean z10, boolean z11);

    private static native long nativeGetColumnKey(long j10);

    private static native long nativeGetFinalizerPtr();

    private static native String nativeGetLinkedObjectName(long j10);

    private static native int nativeGetType(long j10);

    public final long b() {
        return nativeGetColumnKey(this.f7628a);
    }

    public final String c() {
        return nativeGetLinkedObjectName(this.f7628a);
    }

    public final RealmFieldType d() {
        int r02 = nativeGetType(this.f7628a);
        int r12 = r02 & (-65);
        switch (r12) {
            case 0:
                return RealmFieldType.INTEGER;
            case 1:
                return RealmFieldType.BOOLEAN;
            case 2:
                return RealmFieldType.STRING;
            case 3:
                return RealmFieldType.BINARY;
            case 4:
                return RealmFieldType.DATE;
            case 5:
                return RealmFieldType.FLOAT;
            case 6:
                return RealmFieldType.DOUBLE;
            case 7:
                return RealmFieldType.OBJECT;
            default:
                switch (r12) {
                    case 9:
                        return RealmFieldType.MIXED;
                    case 10:
                        return RealmFieldType.OBJECT_ID;
                    case 11:
                        return RealmFieldType.DECIMAL128;
                    case 12:
                        return RealmFieldType.UUID;
                    default:
                        switch (r12) {
                            case 128:
                                return RealmFieldType.INTEGER_LIST;
                            case 129:
                                return RealmFieldType.BOOLEAN_LIST;
                            case ISO781611.BIOMETRIC_SUBTYPE_TAG /* 130 */:
                                return RealmFieldType.STRING_LIST;
                            case ISO781611.CREATION_DATE_AND_TIME_TAG /* 131 */:
                                return RealmFieldType.BINARY_LIST;
                            case 132:
                                return RealmFieldType.DATE_LIST;
                            case 133:
                                return RealmFieldType.FLOAT_LIST;
                            case ISO781611.CREATOR_OF_BIOMETRIC_REFERENCE_DATA /* 134 */:
                                return RealmFieldType.DOUBLE_LIST;
                            case 135:
                                return RealmFieldType.LIST;
                            case ISO781611.FORMAT_TYPE_TAG /* 136 */:
                                return RealmFieldType.LINKING_OBJECTS;
                            case 137:
                                return RealmFieldType.MIXED_LIST;
                            case 138:
                                return RealmFieldType.OBJECT_ID_LIST;
                            case 139:
                                return RealmFieldType.DECIMAL128_LIST;
                            case 140:
                                return RealmFieldType.UUID_LIST;
                            default:
                                switch (r12) {
                                    case 256:
                                        return RealmFieldType.INTEGER_SET;
                                    case 257:
                                        return RealmFieldType.BOOLEAN_SET;
                                    case 258:
                                        return RealmFieldType.STRING_SET;
                                    case 259:
                                        return RealmFieldType.BINARY_SET;
                                    case 260:
                                        return RealmFieldType.DATE_SET;
                                    case 261:
                                        return RealmFieldType.FLOAT_SET;
                                    case 262:
                                        return RealmFieldType.DOUBLE_SET;
                                    case 263:
                                        return RealmFieldType.LINK_SET;
                                    default:
                                        switch (r12) {
                                            case 265:
                                                return RealmFieldType.MIXED_SET;
                                            case 266:
                                                return RealmFieldType.OBJECT_ID_SET;
                                            case 267:
                                                return RealmFieldType.DECIMAL128_SET;
                                            case 268:
                                                return RealmFieldType.UUID_SET;
                                            default:
                                                switch (r12) {
                                                    case 512:
                                                        return RealmFieldType.STRING_TO_INTEGER_MAP;
                                                    case InputDeviceCompat.SOURCE_DPAD /* 513 */:
                                                        return RealmFieldType.STRING_TO_BOOLEAN_MAP;
                                                    case 514:
                                                        return RealmFieldType.STRING_TO_STRING_MAP;
                                                    case 515:
                                                        return RealmFieldType.STRING_TO_BINARY_MAP;
                                                    case 516:
                                                        return RealmFieldType.STRING_TO_DATE_MAP;
                                                    case 517:
                                                        return RealmFieldType.STRING_TO_FLOAT_MAP;
                                                    case 518:
                                                        return RealmFieldType.STRING_TO_DOUBLE_MAP;
                                                    case 519:
                                                        return RealmFieldType.STRING_TO_LINK_MAP;
                                                    default:
                                                        switch (r12) {
                                                            case 521:
                                                                return RealmFieldType.STRING_TO_MIXED_MAP;
                                                            case 522:
                                                                return RealmFieldType.STRING_TO_OBJECT_ID_MAP;
                                                            case 523:
                                                                return RealmFieldType.STRING_TO_DECIMAL128_MAP;
                                                            case 524:
                                                                return RealmFieldType.STRING_TO_UUID_MAP;
                                                            default:
                                                                throw new IllegalArgumentException(String.format(Locale.US, "Unsupported property type: '%d'", Integer.valueOf(r02)));
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    @Override // io.realm.internal.i
    public final long getNativeFinalizerPtr() {
        return f7627b;
    }

    @Override // io.realm.internal.i
    public final long getNativePtr() {
        return this.f7628a;
    }
}
