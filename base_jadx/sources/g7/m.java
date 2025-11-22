package g7;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class m {

    /* renamed from: b, reason: collision with root package name */
    public static final Object f5881b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static a1 f5882c;

    /* renamed from: a, reason: collision with root package name */
    public final Context f5883a;

    public m(@NonNull Context context) {
        this.f5883a = context;
    }

    public static h5.k<Integer> a(Context context, Intent intent) {
        a1 a1Var;
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Binding to service");
        }
        synchronized (f5881b) {
            if (f5882c == null) {
                f5882c = new a1(context);
            }
            a1Var = f5882c;
        }
        return a1Var.b(intent).e(l.f5875a, new h5.b() { // from class: g7.i
            @Override // h5.b
            @NonNull
            public final Object c(@NonNull h5.k kVar) {
                Object obj = m.f5881b;
                return -1;
            }
        });
    }

    @NonNull
    public final h5.k<Integer> b(@NonNull final Intent intent) {
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        boolean z10 = false;
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        boolean zA = w3.d.a();
        final Context context = this.f5883a;
        if (zA && context.getApplicationInfo().targetSdkVersion >= 26) {
            z10 = true;
        }
        int flags = intent.getFlags() & 268435456;
        if (z10 && flags == 0) {
            return a(context, intent);
        }
        l lVar = l.f5875a;
        return h5.n.c(lVar, new Callable() { // from class: g7.k
            @Override // java.util.concurrent.Callable
            @NonNull
            public final Object call() {
                String strConcat;
                String str;
                String string;
                ServiceInfo serviceInfo;
                String str2;
                int r02;
                ComponentName componentNameStartService;
                Context context2 = context;
                Intent intent2 = intent;
                l0 l0VarA = l0.a();
                l0VarA.getClass();
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "Starting service");
                }
                l0VarA.f5880d.offer(intent2);
                Intent intent3 = new Intent("com.google.firebase.MESSAGING_EVENT");
                intent3.setPackage(context2.getPackageName());
                synchronized (l0VarA) {
                    strConcat = l0VarA.f5877a;
                    if (strConcat == null) {
                        ResolveInfo resolveInfoResolveService = context2.getPackageManager().resolveService(intent3, 0);
                        if (resolveInfoResolveService == null || (serviceInfo = resolveInfoResolveService.serviceInfo) == null) {
                            str = "FirebaseMessaging";
                            string = "Failed to resolve target intent service, skipping classname enforcement";
                        } else {
                            if (context2.getPackageName().equals(serviceInfo.packageName) && (str2 = serviceInfo.name) != null) {
                                if (str2.startsWith(".")) {
                                    String strValueOf = String.valueOf(context2.getPackageName());
                                    String strValueOf2 = String.valueOf(serviceInfo.name);
                                    strConcat = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
                                } else {
                                    strConcat = serviceInfo.name;
                                }
                                l0VarA.f5877a = strConcat;
                            }
                            String str3 = serviceInfo.packageName;
                            String str4 = serviceInfo.name;
                            StringBuilder sb2 = new StringBuilder(String.valueOf(str3).length() + 94 + String.valueOf(str4).length());
                            sb2.append("Error resolving target intent service, skipping classname enforcement. Resolved service was: ");
                            sb2.append(str3);
                            sb2.append("/");
                            sb2.append(str4);
                            str = "FirebaseMessaging";
                            string = sb2.toString();
                        }
                        Log.e(str, string);
                        strConcat = null;
                    }
                }
                if (strConcat != null) {
                    if (Log.isLoggable("FirebaseMessaging", 3)) {
                        Log.d("FirebaseMessaging", strConcat.length() != 0 ? "Restricting intent to a specific service: ".concat(strConcat) : new String("Restricting intent to a specific service: "));
                    }
                    intent3.setClassName(context2.getPackageName(), strConcat);
                }
                try {
                    if (l0VarA.c(context2)) {
                        componentNameStartService = u0.c(context2, intent3);
                    } else {
                        componentNameStartService = context2.startService(intent3);
                        Log.d("FirebaseMessaging", "Missing wake lock permission, service start may be delayed");
                    }
                    if (componentNameStartService == null) {
                        Log.e("FirebaseMessaging", "Error while delivering the message: ServiceIntent not found.");
                        r02 = 404;
                    } else {
                        r02 = -1;
                    }
                } catch (IllegalStateException e10) {
                    Log.e("FirebaseMessaging", "Failed to start service while in background: ".concat(e10.toString()));
                    r02 = TypedValues.CycleType.TYPE_VISIBILITY;
                } catch (SecurityException e11) {
                    Log.e("FirebaseMessaging", "Error while delivering the message to the serviceIntent", e11);
                    r02 = TypedValues.CycleType.TYPE_CURVE_FIT;
                }
                return Integer.valueOf(r02);
            }
        }).g(lVar, new h5.b() { // from class: g7.h
            @Override // h5.b
            @NonNull
            public final Object c(@NonNull h5.k kVar) {
                return (w3.d.a() && ((Integer) kVar.i()).intValue() == 402) ? m.a(context, intent).e(l.f5875a, new h5.b() { // from class: g7.j
                    @Override // h5.b
                    @NonNull
                    public final Object c(@NonNull h5.k kVar2) {
                        Object obj = m.f5881b;
                        return Integer.valueOf(TypedValues.CycleType.TYPE_ALPHA);
                    }
                }) : kVar;
            }
        });
    }
}
