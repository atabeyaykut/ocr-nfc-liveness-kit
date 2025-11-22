package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;
import org.bson.types.ObjectId;

/* loaded from: classes2.dex */
public final class e extends x {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f7501d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e(a aVar, OsList osList, Class cls, int r42) {
        super(aVar, osList, cls);
        this.f7501d = r42;
    }

    @Override // io.realm.x
    public final void a(Object obj) {
        int r02 = this.f7501d;
        OsList osList = this.f7889b;
        switch (r02) {
            case 0:
                osList.b(((Boolean) obj).booleanValue());
                break;
            default:
                osList.i((ObjectId) obj);
                break;
        }
    }

    @Override // io.realm.x
    public final void c(Object obj) {
        switch (this.f7501d) {
            case 0:
                if (obj != null && !(obj instanceof Boolean)) {
                    throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.Boolean", obj.getClass().getName()));
                }
                return;
            default:
                if (obj != null && !(obj instanceof ObjectId)) {
                    throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "org.bson.types.ObjectId", obj.getClass().getName()));
                }
                return;
        }
    }

    @Override // io.realm.x
    public final Object d(int r52) {
        int r02 = this.f7501d;
        OsList osList = this.f7889b;
        switch (r02) {
            case 0:
                return (Boolean) osList.s(r52);
            default:
                return (ObjectId) osList.s(r52);
        }
    }

    @Override // io.realm.x
    public final void f(int r52, Object obj) {
        int r02 = this.f7501d;
        OsList osList = this.f7889b;
        switch (r02) {
            case 0:
                osList.u(r52, ((Boolean) obj).booleanValue());
                break;
            default:
                osList.B(r52, (ObjectId) obj);
                break;
        }
    }

    @Override // io.realm.x
    public final void h(int r52, Object obj) {
        int r02 = this.f7501d;
        OsList osList = this.f7889b;
        switch (r02) {
            case 0:
                osList.K(r52, ((Boolean) obj).booleanValue());
                break;
            default:
                osList.R(r52, (ObjectId) obj);
                break;
        }
    }
}
