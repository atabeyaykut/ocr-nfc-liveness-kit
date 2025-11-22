package t1;

import android.database.ContentObserver;
import android.os.Handler;
import com.esafirm.imagepicker.features.ContentObserverTrigger;

/* loaded from: classes.dex */
public final class a extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ContentObserverTrigger f15493a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(ContentObserverTrigger contentObserverTrigger, Handler handler) {
        super(handler);
        this.f15493a = contentObserverTrigger;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z10) {
        this.f15493a.f2863b.invoke();
    }
}
