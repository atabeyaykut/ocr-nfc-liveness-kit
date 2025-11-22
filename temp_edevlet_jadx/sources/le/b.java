package le;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.ListenableWorker;
import androidx.work.WorkerFactory;
import androidx.work.WorkerParameters;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.h;
import ud.d0;

/* loaded from: classes3.dex */
public final class b extends WorkerFactory {

    /* renamed from: a, reason: collision with root package name */
    public final Map<Class<? extends CoroutineWorker>, k9.a<a>> f9801a;

    /* renamed from: b, reason: collision with root package name */
    public d0 f9802b;

    /* renamed from: c, reason: collision with root package name */
    public d0 f9803c;

    /* renamed from: d, reason: collision with root package name */
    public d0 f9804d;

    /* renamed from: e, reason: collision with root package name */
    public d0 f9805e;
    public String f;

    /* renamed from: g, reason: collision with root package name */
    public String f9806g;

    /* renamed from: h, reason: collision with root package name */
    public String f9807h;

    public b(Map<Class<? extends CoroutineWorker>, k9.a<a>> workerFactories) {
        h.f(workerFactories, "workerFactories");
        this.f9801a = workerFactories;
    }

    @Override // androidx.work.WorkerFactory
    public final ListenableWorker createWorker(Context appContext, String workerClassName, WorkerParameters workerParameters) {
        Object next;
        h.f(appContext, "appContext");
        h.f(workerClassName, "workerClassName");
        h.f(workerParameters, "workerParameters");
        Iterator<T> it = this.f9801a.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Class.forName(workerClassName).isAssignableFrom((Class) ((Map.Entry) next).getKey())) {
                break;
            }
        }
        Map.Entry entry = (Map.Entry) next;
        if (entry == null) {
            return null;
        }
        a aVar = (a) ((k9.a) entry.getValue()).get();
        d0 d0Var = this.f9802b;
        if (d0Var == null) {
            h.n("mApiClient");
            throw null;
        }
        d0 d0Var2 = this.f9803c;
        if (d0Var2 == null) {
            h.n("mApiClientLogin");
            throw null;
        }
        d0 d0Var3 = this.f9804d;
        if (d0Var3 == null) {
            h.n("mRegisterApiClient");
            throw null;
        }
        d0 d0Var4 = this.f9805e;
        if (d0Var4 == null) {
            h.n("mOTPRestClient");
            throw null;
        }
        String str = this.f;
        if (str == null) {
            h.n("mAppVersion");
            throw null;
        }
        String str2 = this.f9807h;
        if (str2 == null) {
            h.n("mLanguage");
            throw null;
        }
        String str3 = this.f9806g;
        if (str3 != null) {
            return aVar.a(appContext, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3);
        }
        h.n("mAppMode");
        throw null;
    }
}
