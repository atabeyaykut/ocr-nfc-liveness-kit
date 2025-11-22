package y4;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamite.DynamiteModule;
import r3.r;
import x4.d;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    @SuppressLint({"StaticFieldLeak"})
    public static Context f19317a;

    /* renamed from: b, reason: collision with root package name */
    public static l f19318b;

    public static l a(Activity activity) throws PackageManager.NameNotFoundException, ClassNotFoundException, m3.g {
        r.i(activity);
        Log.d("j", "preferredRenderer: ".concat("null"));
        l lVar = f19318b;
        if (lVar != null) {
            return lVar;
        }
        int r02 = m3.i.f9953e;
        int r03 = m3.j.b(13400000, activity);
        if (r03 != 0) {
            throw new m3.g(r03);
        }
        l lVarC = c(activity, null);
        f19318b = lVarC;
        try {
            if (lVarC.d() == 2) {
                try {
                    f19318b.P(new z3.d(b(activity, null)));
                } catch (RemoteException e10) {
                    throw new z4.g(e10);
                } catch (UnsatisfiedLinkError unused) {
                    Log.w("j", "Caught UnsatisfiedLinkError attempting to load the LATEST renderer's native library. Attempting to use the LEGACY renderer instead.");
                    f19317a = null;
                    f19318b = c(activity, d.a.LEGACY);
                }
            }
            try {
                l lVar2 = f19318b;
                Context contextB = b(activity, null);
                contextB.getClass();
                lVar2.D(new z3.d(contextB.getResources()));
                return f19318b;
            } catch (RemoteException e11) {
                throw new z4.g(e11);
            }
        } catch (RemoteException e12) {
            throw new z4.g(e12);
        }
    }

    @Nullable
    public static Context b(Activity activity, @Nullable d.a aVar) throws PackageManager.NameNotFoundException {
        Context contextCreatePackageContext;
        Context context = f19317a;
        if (context != null) {
            return context;
        }
        String str = aVar == d.a.LEGACY ? "com.google.android.gms.maps_legacy_dynamite" : "com.google.android.gms.maps_core_dynamite";
        try {
            contextCreatePackageContext = DynamiteModule.c(activity, DynamiteModule.f3001b, str).f3014a;
        } catch (Exception e10) {
            if (str.equals("com.google.android.gms.maps_dynamite")) {
                Log.e("j", "Failed to load maps module, use pre-Chimera", e10);
                int r82 = m3.i.f9953e;
            } else {
                try {
                    Log.d("j", "Attempting to load maps_dynamite again.");
                    contextCreatePackageContext = DynamiteModule.c(activity, DynamiteModule.f3001b, "com.google.android.gms.maps_dynamite").f3014a;
                } catch (Exception e11) {
                    Log.e("j", "Failed to load maps module, use pre-Chimera", e11);
                    int r83 = m3.i.f9953e;
                    contextCreatePackageContext = activity.createPackageContext("com.google.android.gms", 3);
                    f19317a = contextCreatePackageContext;
                    return contextCreatePackageContext;
                }
            }
            try {
                contextCreatePackageContext = activity.createPackageContext("com.google.android.gms", 3);
            } catch (PackageManager.NameNotFoundException unused) {
                contextCreatePackageContext = null;
            }
        }
        f19317a = contextCreatePackageContext;
        return contextCreatePackageContext;
    }

    public static l c(Activity activity, @Nullable d.a aVar) throws ClassNotFoundException {
        Log.i("j", "Making Creator dynamically");
        ClassLoader classLoader = b(activity, aVar).getClassLoader();
        try {
            r.i(classLoader);
            Class<?> clsLoadClass = classLoader.loadClass("com.google.android.gms.maps.internal.CreatorImpl");
            try {
                try {
                    IBinder iBinder = (IBinder) clsLoadClass.newInstance();
                    if (iBinder == null) {
                        return null;
                    }
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICreator");
                    return iInterfaceQueryLocalInterface instanceof l ? (l) iInterfaceQueryLocalInterface : new k(iBinder);
                } catch (InstantiationException e10) {
                    throw new IllegalStateException("Unable to instantiate the dynamic class ".concat(clsLoadClass.getName()), e10);
                }
            } catch (IllegalAccessException e11) {
                throw new IllegalStateException("Unable to call the default constructor of ".concat(clsLoadClass.getName()), e11);
            }
        } catch (ClassNotFoundException e12) {
            throw new IllegalStateException("Unable to find dynamic class com.google.android.gms.maps.internal.CreatorImpl", e12);
        }
    }
}
