package io.realm.internal;

import io.realm.exceptions.RealmException;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public static final j f7665a = new j();

    /* renamed from: b, reason: collision with root package name */
    public static final j f7666b;

    static {
        f7666b = null;
        try {
            f7666b = (j) Class.forName("io.realm.internal.SyncObjectServerFacade").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException unused) {
        } catch (IllegalAccessException e10) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e10);
        } catch (InstantiationException e11) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e11);
        } catch (NoSuchMethodException e12) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e12);
        } catch (InvocationTargetException e13) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e13.getTargetException());
        }
    }
}
