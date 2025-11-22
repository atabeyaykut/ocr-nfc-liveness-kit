package androidx.navigation;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.MainThread;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import x9.a;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001f\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u0004H\u0087\b¨\u0006\u0005"}, d2 = {"navArgs", "Landroidx/navigation/NavArgsLazy;", "Args", "Landroidx/navigation/NavArgs;", "Landroid/app/Activity;", "navigation-runtime-ktx_release"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes.dex */
public final class ActivityNavArgsLazyKt {

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroid/os/Bundle;", "Args", "Landroidx/navigation/NavArgs;", "invoke"}, k = 3, mv = {1, 1, 16})
    /* renamed from: androidx.navigation.ActivityNavArgsLazyKt$navArgs$1, reason: invalid class name */
    public static final class AnonymousClass1 extends j implements a<Bundle> {
        final /* synthetic */ Activity $this_navArgs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Activity activity) {
            super(0);
            this.$this_navArgs = activity;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // x9.a
        public final Bundle invoke() {
            Intent intent = this.$this_navArgs.getIntent();
            if (intent == null) {
                throw new IllegalStateException("Activity " + this.$this_navArgs + " has a null Intent");
            }
            Bundle extras = intent.getExtras();
            if (extras != null) {
                return extras;
            }
            throw new IllegalStateException("Activity " + this.$this_navArgs + " has null extras in " + intent);
        }
    }

    @MainThread
    public static final <Args extends NavArgs> NavArgsLazy<Args> navArgs(Activity navArgs) {
        h.g(navArgs, "$this$navArgs");
        h.m();
        throw null;
    }
}
