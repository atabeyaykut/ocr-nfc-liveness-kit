package androidx.view.result;

import androidx.view.result.contract.ActivityResultContract;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import x9.l;

@Metadata(d1 = {"\u0000(\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a[\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u000b\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u00022\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\f\u0010\r\u001aS\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u000b\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u00022\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u0005\u001a\u00028\u00002\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\f\u0010\u000e¨\u0006\u000f"}, d2 = {"I", "O", "Landroidx/activity/result/ActivityResultCaller;", "Landroidx/activity/result/contract/ActivityResultContract;", "contract", "input", "Landroidx/activity/result/ActivityResultRegistry;", "registry", "Lkotlin/Function1;", "Ll9/m;", "callback", "Landroidx/activity/result/ActivityResultLauncher;", "registerForActivityResult", "(Landroidx/activity/result/ActivityResultCaller;Landroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/activity/result/ActivityResultRegistry;Lx9/l;)Landroidx/activity/result/ActivityResultLauncher;", "(Landroidx/activity/result/ActivityResultCaller;Landroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Lx9/l;)Landroidx/activity/result/ActivityResultLauncher;", "activity-ktx_release"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class ActivityResultCallerKt {
    public static final <I, O> ActivityResultLauncher<m> registerForActivityResult(ActivityResultCaller activityResultCaller, ActivityResultContract<I, O> contract, I r32, ActivityResultRegistry registry, l<? super O, m> callback) {
        h.f(activityResultCaller, "<this>");
        h.f(contract, "contract");
        h.f(registry, "registry");
        h.f(callback, "callback");
        ActivityResultLauncher<I> activityResultLauncherRegisterForActivityResult = activityResultCaller.registerForActivityResult(contract, registry, new b(callback));
        h.e(activityResultLauncherRegisterForActivityResult, "registerForActivityResul…egistry) { callback(it) }");
        return new ActivityResultCallerLauncher(activityResultLauncherRegisterForActivityResult, contract, r32);
    }

    public static final <I, O> ActivityResultLauncher<m> registerForActivityResult(ActivityResultCaller activityResultCaller, ActivityResultContract<I, O> contract, I r32, l<? super O, m> callback) {
        h.f(activityResultCaller, "<this>");
        h.f(contract, "contract");
        h.f(callback, "callback");
        ActivityResultLauncher<I> activityResultLauncherRegisterForActivityResult = activityResultCaller.registerForActivityResult(contract, new a(callback));
        h.e(activityResultLauncherRegisterForActivityResult, "registerForActivityResul…ontract) { callback(it) }");
        return new ActivityResultCallerLauncher(activityResultLauncherRegisterForActivityResult, contract, r32);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: registerForActivityResult$lambda-0, reason: not valid java name */
    public static final void m3registerForActivityResult$lambda0(l callback, Object obj) {
        h.f(callback, "$callback");
        callback.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: registerForActivityResult$lambda-1, reason: not valid java name */
    public static final void m4registerForActivityResult$lambda1(l callback, Object obj) {
        h.f(callback, "$callback");
        callback.invoke(obj);
    }
}
