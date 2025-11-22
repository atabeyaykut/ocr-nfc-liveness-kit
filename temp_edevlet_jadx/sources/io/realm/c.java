package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;
import java.util.UUID;

/* loaded from: classes2.dex */
public final class c extends x {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f7477d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c(a aVar, OsList osList, Class cls, int r42) {
        super(aVar, osList, cls);
        this.f7477d = r42;
    }

    @Override // io.realm.x
    public final void a(Object obj) {
        int r02 = this.f7477d;
        OsList osList = this.f7889b;
        switch (r02) {
            case 0:
                osList.a((byte[]) obj);
                break;
            case 1:
                osList.g(((Number) obj).longValue());
                break;
            default:
                osList.m((UUID) obj);
                break;
        }
    }

    @Override // io.realm.x
    public final void c(Object obj) {
        switch (this.f7477d) {
            case 0:
                if (obj != null && !(obj instanceof byte[])) {
                    throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "byte[]", obj.getClass().getName()));
                }
                return;
            case 1:
                if (obj != null && !(obj instanceof Number)) {
                    throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.Long, java.lang.Integer, java.lang.Short, java.lang.Byte", obj.getClass().getName()));
                }
                return;
            default:
                if (obj != null && !(obj instanceof UUID)) {
                    throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.util.UUID", obj.getClass().getName()));
                }
                return;
        }
    }

    @Override // io.realm.x
    public final Object d(int r52) {
        Object objValueOf;
        int r02 = this.f7477d;
        OsList osList = this.f7889b;
        switch (r02) {
            case 0:
                return (byte[]) osList.s(r52);
            case 1:
                Long l5 = (Long) osList.s(r52);
                if (l5 == null) {
                    return null;
                }
                Class<T> cls = this.f7890c;
                if (cls == Long.class) {
                    return l5;
                }
                if (cls == Integer.class) {
                    objValueOf = Integer.valueOf(l5.intValue());
                } else if (cls == Short.class) {
                    objValueOf = Short.valueOf(l5.shortValue());
                } else {
                    if (cls != Byte.class) {
                        throw new IllegalStateException("Unexpected element type: ".concat(cls.getName()));
                    }
                    objValueOf = Byte.valueOf(l5.byteValue());
                }
                return cls.cast(objValueOf);
            default:
                return (UUID) osList.s(r52);
        }
    }

    @Override // io.realm.x
    public final void f(int r52, Object obj) {
        int r02 = this.f7477d;
        OsList osList = this.f7889b;
        switch (r02) {
            case 0:
                osList.t(r52, (byte[]) obj);
                break;
            case 1:
                osList.z(r52, ((Number) obj).longValue());
                break;
            default:
                osList.F(r52, (UUID) obj);
                break;
        }
    }

    @Override // io.realm.x
    public final void h(int r52, Object obj) {
        int r02 = this.f7477d;
        OsList osList = this.f7889b;
        switch (r02) {
            case 0:
                osList.J(r52, (byte[]) obj);
                break;
            case 1:
                osList.P(r52, ((Number) obj).longValue());
                break;
            default:
                osList.V(r52, (UUID) obj);
                break;
        }
    }
}
