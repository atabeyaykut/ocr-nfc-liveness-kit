package h6;

import android.util.Log;
import java.io.File;
import java.util.NavigableSet;
import java.util.TreeSet;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class y implements Callable<Boolean> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x f6991a;

    public y(x xVar) {
        this.f6991a = xVar;
    }

    @Override // java.util.concurrent.Callable
    public final Boolean call() throws Exception {
        t tVar = this.f6991a.f;
        x0.t tVar2 = tVar.f6961c;
        m6.f fVar = (m6.f) tVar2.f19088b;
        String str = (String) tVar2.f19087a;
        fVar.getClass();
        if (!new File(fVar.f10042a, str).exists()) {
            m6.e eVar = tVar.f6968k.f6938b;
            eVar.getClass();
            NavigableSet navigableSetDescendingSet = new TreeSet(m6.f.d(eVar.f10040b.f10043b.list())).descendingSet();
            String str2 = navigableSetDescendingSet.isEmpty() ? null : (String) navigableSetDescendingSet.first();
            boolean z10 = str2 != null && tVar.f6966i.d(str2);
            return Boolean.valueOf(z10);
        }
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", "Found previous crash marker.", null);
        }
        m6.f fVar2 = (m6.f) tVar2.f19088b;
        String str3 = (String) tVar2.f19087a;
        fVar2.getClass();
        new File(fVar2.f10042a, str3).delete();
        return Boolean.valueOf(z10);
    }
}
