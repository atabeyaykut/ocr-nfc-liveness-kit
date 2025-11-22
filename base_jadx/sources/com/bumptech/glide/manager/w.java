package com.bumptech.glide.manager;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.util.HashSet;

/* loaded from: classes.dex */
public class w extends Fragment {

    /* renamed from: a, reason: collision with root package name */
    public final com.bumptech.glide.manager.a f2823a;

    /* renamed from: b, reason: collision with root package name */
    public final a f2824b;

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f2825c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public w f2826d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public com.bumptech.glide.o f2827e;

    @Nullable
    public Fragment f;

    public class a implements q {
        public a() {
        }

        public final String toString() {
            return super.toString() + "{fragment=" + w.this + "}";
        }
    }

    public w() {
        com.bumptech.glide.manager.a aVar = new com.bumptech.glide.manager.a();
        this.f2824b = new a();
        this.f2825c = new HashSet();
        this.f2823a = aVar;
    }

    public final void A(@NonNull Context context, @NonNull FragmentManager fragmentManager) {
        w wVar = this.f2826d;
        if (wVar != null) {
            wVar.f2825c.remove(this);
            this.f2826d = null;
        }
        w wVarE = com.bumptech.glide.b.b(context).f2710e.e(fragmentManager);
        this.f2826d = wVarE;
        if (equals(wVarE)) {
            return;
        }
        this.f2826d.f2825c.add(this);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        super.onAttach(context);
        Fragment parentFragment = this;
        while (parentFragment.getParentFragment() != null) {
            parentFragment = parentFragment.getParentFragment();
        }
        FragmentManager fragmentManager = parentFragment.getFragmentManager();
        if (fragmentManager == null) {
            if (Log.isLoggable("SupportRMFragment", 5)) {
                Log.w("SupportRMFragment", "Unable to register fragment with root, ancestor detached");
            }
        } else {
            try {
                A(getContext(), fragmentManager);
            } catch (IllegalStateException e10) {
                if (Log.isLoggable("SupportRMFragment", 5)) {
                    Log.w("SupportRMFragment", "Unable to register fragment with root", e10);
                }
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f2823a.c();
        w wVar = this.f2826d;
        if (wVar != null) {
            wVar.f2825c.remove(this);
            this.f2826d = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        this.f = null;
        w wVar = this.f2826d;
        if (wVar != null) {
            wVar.f2825c.remove(this);
            this.f2826d = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f2823a.d();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f2823a.e();
    }

    @Override // androidx.fragment.app.Fragment
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
