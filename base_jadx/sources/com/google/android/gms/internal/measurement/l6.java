package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.d6;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class l6<T extends d6> {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f3609a = Logger.getLogger(z5.class.getName());

    /* renamed from: b, reason: collision with root package name */
    public static final String f3610b = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    public static d6 b() {
        String str;
        ClassLoader classLoader = l6.class.getClassLoader();
        if (d6.class.equals(d6.class)) {
            str = f3610b;
        } else {
            if (!d6.class.getPackage().equals(l6.class.getPackage())) {
                throw new IllegalArgumentException(d6.class.getName());
            }
            str = String.format("%s.BlazeGenerated%sLoader", d6.class.getPackage().getName(), d6.class.getSimpleName());
        }
        try {
            try {
                try {
                    try {
                        return (d6) d6.class.cast(((l6) Class.forName(str, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).a());
                    } catch (IllegalAccessException e10) {
                        throw new IllegalStateException(e10);
                    }
                } catch (InvocationTargetException e11) {
                    throw new IllegalStateException(e11);
                }
            } catch (InstantiationException e12) {
                throw new IllegalStateException(e12);
            } catch (NoSuchMethodException e13) {
                throw new IllegalStateException(e13);
            }
        } catch (ClassNotFoundException unused) {
            Iterator it = ServiceLoader.load(l6.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add(d6.class.cast(((l6) it.next()).a()));
                } catch (ServiceConfigurationError e14) {
                    Logger logger = f3609a;
                    Level level = Level.SEVERE;
                    String simpleName = d6.class.getSimpleName();
                    logger.logp(level, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", simpleName.length() != 0 ? "Unable to load ".concat(simpleName) : new String("Unable to load "), (Throwable) e14);
                }
            }
            if (arrayList.size() == 1) {
                return (d6) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (d6) d6.class.getMethod("combine", Collection.class).invoke(null, arrayList);
            } catch (IllegalAccessException e15) {
                throw new IllegalStateException(e15);
            } catch (NoSuchMethodException e16) {
                throw new IllegalStateException(e16);
            } catch (InvocationTargetException e17) {
                throw new IllegalStateException(e17);
            }
        }
    }

    public abstract T a();
}
