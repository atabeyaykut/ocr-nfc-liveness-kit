package o3;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class e1 extends Fragment implements g {

    /* renamed from: d, reason: collision with root package name */
    public static final WeakHashMap f11125d = new WeakHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Map f11126a = Collections.synchronizedMap(new ArrayMap());

    /* renamed from: b, reason: collision with root package name */
    public int f11127b = 0;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public Bundle f11128c;

    @Override // android.app.Fragment
    public final void dump(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        Iterator it = this.f11126a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).getClass();
        }
    }

    @Override // o3.g
    public final void g(@NonNull LifecycleCallback lifecycleCallback) {
        Map map = this.f11126a;
        if (map.containsKey("ConnectionlessLifecycleHelper")) {
            throw new IllegalArgumentException("LifecycleCallback with tag ConnectionlessLifecycleHelper already added to this fragment.");
        }
        map.put("ConnectionlessLifecycleHelper", lifecycleCallback);
        if (this.f11127b > 0) {
            new j4.e(Looper.getMainLooper()).post(new d1(this, lifecycleCallback, "ConnectionlessLifecycleHelper", 0));
        }
    }

    @Override // o3.g
    @Nullable
    public final LifecycleCallback h() {
        return (LifecycleCallback) r.class.cast(this.f11126a.get("ConnectionlessLifecycleHelper"));
    }

    @Override // o3.g
    @Nullable
    public final Activity k() {
        return getActivity();
    }

    @Override // android.app.Fragment
    public final void onActivityResult(int r32, int r42, @Nullable Intent intent) {
        super.onActivityResult(r32, r42, intent);
        Iterator it = this.f11126a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).b(r32, r42, intent);
        }
    }

    @Override // android.app.Fragment
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f11127b = 1;
        this.f11128c = bundle;
        for (Map.Entry entry : this.f11126a.entrySet()) {
            ((LifecycleCallback) entry.getValue()).c(bundle != null ? bundle.getBundle((String) entry.getKey()) : null);
        }
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f11127b = 5;
        Iterator it = this.f11126a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).getClass();
        }
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f11127b = 3;
        Iterator it = this.f11126a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).d();
        }
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry entry : this.f11126a.entrySet()) {
            Bundle bundle2 = new Bundle();
            ((LifecycleCallback) entry.getValue()).e(bundle2);
            bundle.putBundle((String) entry.getKey(), bundle2);
        }
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f11127b = 2;
        Iterator it = this.f11126a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).f();
        }
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f11127b = 4;
        Iterator it = this.f11126a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).g();
        }
    }
}
