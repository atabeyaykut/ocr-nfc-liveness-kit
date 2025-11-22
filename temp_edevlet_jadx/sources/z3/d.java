package z3;

import android.os.IBinder;
import androidx.annotation.NonNull;
import java.lang.reflect.Field;
import r3.r;
import z3.b;

/* loaded from: classes.dex */
public final class d<T> extends b.a {

    /* renamed from: a, reason: collision with root package name */
    public final Object f19797a;

    public d(Object obj) {
        this.f19797a = obj;
    }

    @NonNull
    public static <T> T y0(@NonNull b bVar) throws SecurityException {
        if (bVar instanceof d) {
            return (T) ((d) bVar).f19797a;
        }
        IBinder iBinderAsBinder = bVar.asBinder();
        Field[] declaredFields = iBinderAsBinder.getClass().getDeclaredFields();
        Field field = null;
        int r42 = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                r42++;
                field = field2;
            }
        }
        if (r42 != 1) {
            throw new IllegalArgumentException(android.support.v4.media.a.d("Unexpected number of IObjectWrapper declared fields: ", declaredFields.length));
        }
        r.i(field);
        if (field.isAccessible()) {
            throw new IllegalArgumentException("IObjectWrapper declared field not private!");
        }
        field.setAccessible(true);
        try {
            return (T) field.get(iBinderAsBinder);
        } catch (IllegalAccessException e10) {
            throw new IllegalArgumentException("Could not access the field in remoteBinder.", e10);
        } catch (NullPointerException e11) {
            throw new IllegalArgumentException("Binder object is null.", e11);
        }
    }
}
