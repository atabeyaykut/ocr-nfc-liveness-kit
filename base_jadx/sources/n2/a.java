package n2;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.github.dhaval2404.imagepicker.ImagePickerActivity;
import kotlin.jvm.internal.h;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final Fragment f10538a;

    /* renamed from: b, reason: collision with root package name */
    public o2.a f10539b;

    /* renamed from: c, reason: collision with root package name */
    public String[] f10540c;

    /* renamed from: d, reason: collision with root package name */
    public final Activity f10541d;

    public a(Fragment fragment) {
        h.f(fragment, "fragment");
        FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
        h.e(fragmentActivityRequireActivity, "fragment.requireActivity()");
        this.f10541d = fragmentActivityRequireActivity;
        this.f10539b = o2.a.BOTH;
        this.f10540c = new String[0];
        this.f10538a = fragment;
    }

    public final void a(int r72) {
        Activity activity = this.f10541d;
        Intent intent = new Intent(activity, (Class<?>) ImagePickerActivity.class);
        Bundle bundle = new Bundle();
        bundle.putSerializable("extra.image_provider", this.f10539b);
        bundle.putStringArray("extra.mime_types", this.f10540c);
        bundle.putBoolean("extra.crop", false);
        bundle.putFloat("extra.crop_x", 0.0f);
        bundle.putFloat("extra.crop_y", 0.0f);
        bundle.putInt("extra.max_width", 0);
        bundle.putInt("extra.max_height", 0);
        bundle.putLong("extra.image_max_size", 0L);
        bundle.putString("extra.save_directory", null);
        intent.putExtras(bundle);
        Fragment fragment = this.f10538a;
        if (fragment == null) {
            activity.startActivityForResult(intent, r72);
        } else if (fragment != null) {
            fragment.startActivityForResult(intent, r72);
        }
    }
}
