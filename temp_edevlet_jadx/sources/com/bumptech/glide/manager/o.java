package com.bumptech.glide.manager;

import android.app.Activity;
import android.app.Fragment;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashSet;

@Deprecated
/* loaded from: classes.dex */
public final class o extends Fragment {

    /* renamed from: a, reason: collision with root package name */
    public final com.bumptech.glide.manager.a f2781a;

    /* renamed from: b, reason: collision with root package name */
    public final a f2782b;

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f2783c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public com.bumptech.glide.o f2784d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public o f2785e;

    @Nullable
    public Fragment f;

    public class a implements q {
        public a() {
        }

        public final String toString() {
            return super.toString() + "{fragment=" + o.this + "}";
        }
    }

    public o() {
        com.bumptech.glide.manager.a aVar = new com.bumptech.glide.manager.a();
        this.f2782b = new a();
        this.f2783c = new HashSet();
        this.f2781a = aVar;
    }

    public final void a(@NonNull Activity activity) {
        o oVar = this.f2785e;
        if (oVar != null) {
            oVar.f2783c.remove(this);
            this.f2785e = null;
        }
        p pVar = com.bumptech.glide.b.b(activity).f2710e;
        pVar.getClass();
        o oVarD = pVar.d(activity.getFragmentManager());
        this.f2785e = oVarD;
        if (equals(oVarD)) {
            return;
        }
        this.f2785e.f2783c.add(this);
    }

    @Override // android.app.Fragment
    public final void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            a(activity);
        } catch (IllegalStateException e10) {
            if (Log.isLoggable("RMFragment", 5)) {
                Log.w("RMFragment", "Unable to register fragment with root", e10);
            }
        }
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f2781a.c();
        o oVar = this.f2785e;
        if (oVar != null) {
            oVar.f2783c.remove(this);
            this.f2785e = null;
        }
    }

    @Override // android.app.Fragment
    public final void onDetach() {
        super.onDetach();
        o oVar = this.f2785e;
        if (oVar != null) {
            oVar.f2783c.remove(this);
            this.f2785e = null;
        }
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f2781a.d();
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f2781a.e();
    }

    @Override // android.app.Fragment
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append("{parent=");
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null) {
            parentFragment = this.f;
        }
        sb2.append(parentFragment);
        sb2.append("}");
        return sb2.toString();
    }
}
