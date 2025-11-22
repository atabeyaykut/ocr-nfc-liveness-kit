package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.w0;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class g1<T extends w0> {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f3964a = Logger.getLogger(t0.class.getName());

    /* renamed from: b, reason: collision with root package name */
    public static final String f3965b = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    public static w0 a() {
        String str;
        ClassLoader classLoader = g1.class.getClassLoader();
        if (w0.class.equals(w0.class)) {
            str = f3965b;
        } else {
            if (!w0.class.getPackage().equals(g1.class.getPackage())) {
                throw new IllegalArgumentException(w0.class.getName());
            }
            str = String.format("%s.BlazeGenerated%sLoader", w0.class.getPackage().getName(), w0.class.getSimpleName());
        }
        try {
            try {
                try {
                    try {
                        return (w0) w0.class.cast(((g1) Class.forName(str, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).b());
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
            Iterator it = ServiceLoader.load(g1.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add(w0.class.cast(((g1) it.next()).b()));
                } catch (ServiceConfigurationError e14) {
                    Logger logger = f3964a;
                    Level level = Level.SEVERE;
                    String simpleName = w0.class.getSimpleName();
                    logger.logp(level, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", simpleName.length() != 0 ? "Unable to load ".concat(simpleName) : new String("Unable to load "), (Throwable) e14);
                }
            }
            if (arrayList.size() == 1) {
                return (w0) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (w0) w0.class.getMethod("combine", Collection.class).invoke(null, arrayList);
            } catch (IllegalAccessException e15) {
                throw new IllegalStateException(e15);
            } catch (NoSuchMethodException e16) {
                throw new IllegalStateException(e16);
            } catch (InvocationTargetException e17) {
                throw new IllegalStateException(e17);
            }
        }
    }

    public abstract T b();
}
