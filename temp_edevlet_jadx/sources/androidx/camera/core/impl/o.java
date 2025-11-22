package androidx.camera.core.impl;

import android.view.View;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.impl.Observable;
import androidx.camera.view.CameraController;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.constraintlayout.motion.widget.ViewTransition;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.fragment.app.strictmode.Violation;

/* loaded from: classes.dex */
public final /* synthetic */ class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f714a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f715b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f716c;

    public /* synthetic */ o(int r12, Object obj, Object obj2) {
        this.f714a = r12;
        this.f715b = obj;
        this.f716c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f714a;
        Object obj = this.f716c;
        Object obj2 = this.f715b;
        switch (r02) {
            case 0:
                ((ConstantObservable) obj2).lambda$addObserver$0((Observable.Observer) obj);
                break;
            case 1:
                ((LiveDataObservable) obj2).lambda$fetchData$0((CallbackToFutureAdapter.Completer) obj);
                break;
            case 2:
                ((CameraController) obj2).lambda$setCameraSelector$3((CameraSelector) obj);
                break;
            case 3:
                ((ViewTransition) obj2).lambda$applyTransition$0((View[]) obj);
                break;
            default:
                FragmentStrictMode.m21handlePolicyViolation$lambda1((String) obj2, (Violation) obj);
                break;
        }
    }
}
