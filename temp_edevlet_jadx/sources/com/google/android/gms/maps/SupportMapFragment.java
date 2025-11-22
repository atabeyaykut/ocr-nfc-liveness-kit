package com.google.android.gms.maps;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import m3.e;
import r3.a0;
import x4.i;
import z3.c;
import z3.f;
import z3.g;
import z3.h;
import z3.j;

/* loaded from: classes.dex */
public class SupportMapFragment extends Fragment {

    /* renamed from: a, reason: collision with root package name */
    public final i f4183a = new i(this);

    @Override // androidx.fragment.app.Fragment
    public final void onActivityCreated(@Nullable Bundle bundle) {
        ClassLoader classLoader = SupportMapFragment.class.getClassLoader();
        if (bundle != null && classLoader != null) {
            bundle.setClassLoader(classLoader);
        }
        super.onActivityCreated(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(@NonNull Activity activity) {
        super.onAttach(activity);
        i iVar = this.f4183a;
        iVar.f19145g = activity;
        iVar.c();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(@Nullable Bundle bundle) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            super.onCreate(bundle);
            i iVar = this.f4183a;
            iVar.getClass();
            iVar.b(bundle, new f(iVar, bundle));
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public final View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        i iVar = this.f4183a;
        iVar.getClass();
        FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        iVar.b(bundle, new g(iVar, frameLayout, layoutInflater, viewGroup, bundle));
        if (iVar.f19793a == null) {
            e eVar = e.f9944d;
            Context context = frameLayout.getContext();
            int r02 = eVar.c(m3.f.f9945a, context);
            String strC = a0.c(r02, context);
            String strB = a0.b(r02, context);
            LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
            linearLayout.setOrientation(1);
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            frameLayout.addView(linearLayout);
            TextView textView = new TextView(frameLayout.getContext());
            textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            textView.setText(strC);
            linearLayout.addView(textView);
            Intent intentB = eVar.b(context, r02, null);
            if (intentB != null) {
                Button button = new Button(context);
                button.setId(R.id.button1);
                button.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
                button.setText(strB);
                linearLayout.addView(button);
                button.setOnClickListener(new h(context, intentB));
            }
        }
        frameLayout.setClickable(true);
        return frameLayout;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        i iVar = this.f4183a;
        c cVar = iVar.f19793a;
        if (cVar != null) {
            try {
                ((x4.h) cVar).f19143b.g();
            } catch (RemoteException e10) {
                throw new z4.g(e10);
            }
        } else {
            iVar.a(1);
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        i iVar = this.f4183a;
        c cVar = iVar.f19793a;
        if (cVar != null) {
            try {
                ((x4.h) cVar).f19143b.o0();
            } catch (RemoteException e10) {
                throw new z4.g(e10);
            }
        } else {
            iVar.a(2);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onInflate(@NonNull Activity activity, @NonNull AttributeSet attributeSet, @Nullable Bundle bundle) {
        i iVar = this.f4183a;
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            super.onInflate(activity, attributeSet, bundle);
            iVar.f19145g = activity;
            iVar.c();
            GoogleMapOptions googleMapOptionsE = GoogleMapOptions.E(activity, attributeSet);
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("MapOptions", googleMapOptionsE);
            iVar.b(bundle, new z3.e(iVar, activity, bundle2, bundle));
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public final void onLowMemory() {
        c cVar = this.f4183a.f19793a;
        if (cVar != null) {
            try {
                ((x4.h) cVar).f19143b.onLowMemory();
            } catch (RemoteException e10) {
                throw new z4.g(e10);
            }
        }
        super.onLowMemory();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        i iVar = this.f4183a;
        c cVar = iVar.f19793a;
        if (cVar != null) {
            try {
                ((x4.h) cVar).f19143b.F();
            } catch (RemoteException e10) {
                throw new z4.g(e10);
            }
        } else {
            iVar.a(5);
        }
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        i iVar = this.f4183a;
        iVar.getClass();
        iVar.b(null, new j(iVar));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        ClassLoader classLoader = SupportMapFragment.class.getClassLoader();
        if (bundle != null && classLoader != null) {
            bundle.setClassLoader(classLoader);
        }
        super.onSaveInstanceState(bundle);
        i iVar = this.f4183a;
        c cVar = iVar.f19793a;
        if (cVar == null) {
            Bundle bundle2 = iVar.f19794b;
            if (bundle2 != null) {
                bundle.putAll(bundle2);
                return;
            }
            return;
        }
        x4.h hVar = (x4.h) cVar;
        try {
            Bundle bundle3 = new Bundle();
            y4.i.b(bundle, bundle3);
            hVar.f19143b.L(bundle3);
            y4.i.b(bundle3, bundle);
        } catch (RemoteException e10) {
            throw new z4.g(e10);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        i iVar = this.f4183a;
        iVar.getClass();
        iVar.b(null, new z3.i(iVar));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        i iVar = this.f4183a;
        c cVar = iVar.f19793a;
        if (cVar != null) {
            try {
                ((x4.h) cVar).f19143b.i();
            } catch (RemoteException e10) {
                throw new z4.g(e10);
            }
        } else {
            iVar.a(4);
        }
        super.onStop();
    }

    @Override // androidx.fragment.app.Fragment
    public final void setArguments(@Nullable Bundle bundle) {
        super.setArguments(bundle);
    }
}
