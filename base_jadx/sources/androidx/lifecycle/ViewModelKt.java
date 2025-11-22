package androidx.lifecycle;

import com.google.android.gms.internal.clearcut.d0;
import java.io.IOException;
import kotlin.Metadata;
import kotlinx.coroutines.internal.m;
import nc.a0;
import nc.j0;
import nc.u1;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\"\u0014\u0010\u0001\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0001\u0010\u0002\"\u0015\u0010\u0007\u001a\u00020\u0004*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"", "JOB_KEY", "Ljava/lang/String;", "Landroidx/lifecycle/ViewModel;", "Lnc/a0;", "getViewModelScope", "(Landroidx/lifecycle/ViewModel;)Lnc/a0;", "viewModelScope", "lifecycle-viewmodel-ktx_release"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class ViewModelKt {
    private static final String JOB_KEY = "androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY";

    public static final a0 getViewModelScope(ViewModel viewModel) throws IOException {
        kotlin.jvm.internal.h.f(viewModel, "<this>");
        a0 a0Var = (a0) viewModel.getTag(JOB_KEY);
        if (a0Var != null) {
            return a0Var;
        }
        u1 u1VarA = d0.a();
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        Object tagIfAbsent = viewModel.setTagIfAbsent(JOB_KEY, new CloseableCoroutineScope(u1VarA.plus(m.f9167a.d())));
        kotlin.jvm.internal.h.e(tagIfAbsent, "setTagIfAbsent(\n        …Main.immediate)\n        )");
        return (a0) tagIfAbsent;
    }
}
