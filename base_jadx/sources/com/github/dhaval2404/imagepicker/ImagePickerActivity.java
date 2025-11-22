package com.github.dhaval2404.imagepicker;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.appcompat.app.AppCompatActivity;
import c5.v;
import c5.w;
import com.yalantis.ucrop.UCropActivity;
import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import mc.n;
import o2.a;
import p2.b;
import p2.c;
import p2.d;
import p2.e;
import p2.f;
import tr.gov.turkiye.edevlet.kapisi.R;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "imagepicker_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class ImagePickerActivity extends AppCompatActivity {

    /* renamed from: a, reason: collision with root package name */
    public f f2927a;

    /* renamed from: b, reason: collision with root package name */
    public b f2928b;

    /* renamed from: c, reason: collision with root package name */
    public e f2929c;

    /* renamed from: d, reason: collision with root package name */
    public d f2930d;

    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, android.app.Activity
    public final void onActivityResult(int r6, int r72, Intent intent) throws IOException {
        super.onActivityResult(r6, r72, intent);
        b bVar = this.f2928b;
        if (bVar != null && r6 == 4281) {
            ImagePickerActivity imagePickerActivity = bVar.f12220a;
            if (r72 == -1) {
                Uri uriFromFile = Uri.fromFile(bVar.f12222b);
                h.e(uriFromFile, "Uri.fromFile(mCameraFile)");
                imagePickerActivity.s(uriFromFile);
            } else {
                bVar.b();
                imagePickerActivity.u();
            }
        }
        f fVar = this.f2927a;
        if (fVar != null && r6 == 4261) {
            ImagePickerActivity imagePickerActivity2 = fVar.f12220a;
            if (r72 == -1) {
                Uri data = intent != null ? intent.getData() : null;
                if (data != null) {
                    fVar.getContentResolver().takePersistableUriPermission(data, 1);
                    imagePickerActivity2.s(data);
                } else {
                    fVar.c(R.string.error_failed_pick_gallery_image);
                }
            } else {
                imagePickerActivity2.u();
            }
        }
        e eVar = this.f2929c;
        if (eVar == null) {
            h.n("mCropProvider");
            throw null;
        }
        if (r6 == 69) {
            ImagePickerActivity imagePickerActivity3 = eVar.f12220a;
            if (r72 != -1) {
                eVar.b();
                imagePickerActivity3.u();
                return;
            }
            File file = eVar.f12233g;
            if (file == null) {
                eVar.c(R.string.error_failed_to_crop_image);
                return;
            }
            Uri uriFromFile2 = Uri.fromFile(file);
            h.e(uriFromFile2, "Uri.fromFile(file)");
            imagePickerActivity3.getClass();
            b bVar2 = imagePickerActivity3.f2928b;
            if (bVar2 != null) {
                File file2 = bVar2.f12222b;
                if (file2 != null) {
                    file2.delete();
                }
                bVar2.f12222b = null;
            }
            d dVar = imagePickerActivity3.f2930d;
            if (dVar == null) {
                h.n("mCompressionProvider");
                throw null;
            }
            if (!dVar.e(uriFromFile2)) {
                imagePickerActivity3.t(uriFromFile2);
                return;
            }
            d dVar2 = imagePickerActivity3.f2930d;
            if (dVar2 != null) {
                new c(dVar2).execute(uriFromFile2);
            } else {
                h.n("mCompressionProvider");
                throw null;
            }
        }
    }

    @Override // androidx.view.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        u();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) throws IOException {
        b bVar;
        super.onCreate(bundle);
        e eVar = new e(this);
        this.f2929c = eVar;
        eVar.f12233g = (File) (bundle != null ? bundle.getSerializable("state.crop_file") : null);
        this.f2930d = new d(this);
        Intent intent = getIntent();
        a aVar = (a) (intent != null ? intent.getSerializableExtra("extra.image_provider") : null);
        if (aVar != null) {
            int r02 = aVar.ordinal();
            if (r02 == 0) {
                f fVar = new f(this);
                this.f2927a = fVar;
                if (bundle != null) {
                    return;
                }
                ImagePickerActivity context = fVar.f12220a;
                h.f(context, "context");
                String[] mimeTypes = fVar.f12235b;
                h.f(mimeTypes, "mimeTypes");
                Intent intent2 = new Intent("android.intent.action.OPEN_DOCUMENT");
                intent2.setType("image/*");
                if (!(mimeTypes.length == 0)) {
                    intent2.putExtra("android.intent.extra.MIME_TYPES", mimeTypes);
                }
                intent2.addCategory("android.intent.category.OPENABLE");
                intent2.addFlags(64);
                intent2.addFlags(1);
                intent2.addFlags(2);
                if (intent2.resolveActivity(context.getPackageManager()) == null) {
                    intent2 = new Intent("android.intent.action.PICK");
                    intent2.setType("image/*");
                    if (true ^ (mimeTypes.length == 0)) {
                        intent2.putExtra("android.intent.extra.MIME_TYPES", mimeTypes);
                    }
                }
                context.startActivityForResult(intent2, 4261);
            } else if (r02 == 1) {
                b bVar2 = new b(this);
                this.f2928b = bVar2;
                bVar2.f12222b = (File) (bundle != null ? bundle.getSerializable("state.camera_file") : null);
                if (bundle != null || (bVar = this.f2928b) == null) {
                    return;
                } else {
                    bVar.f();
                }
            }
            m mVar = m.f9594a;
            return;
        }
        Log.e("image_picker", "Image provider can not be null");
        String string = getString(R.string.error_task_cancelled);
        h.e(string, "getString(R.string.error_task_cancelled)");
        Intent intent3 = new Intent();
        intent3.putExtra("extra.error", string);
        setResult(64, intent3);
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int r22, String[] permissions, int[] grantResults) throws IOException {
        h.f(permissions, "permissions");
        h.f(grantResults, "grantResults");
        super.onRequestPermissionsResult(r22, permissions, grantResults);
        b bVar = this.f2928b;
        if (bVar == null || r22 != 4282) {
            return;
        }
        if (b.e(bVar)) {
            bVar.f();
            return;
        }
        String string = bVar.getString(R.string.permission_camera_denied);
        h.e(string, "getString(R.string.permission_camera_denied)");
        bVar.b();
        ImagePickerActivity imagePickerActivity = bVar.f12220a;
        imagePickerActivity.getClass();
        Intent intent = new Intent();
        intent.putExtra("extra.error", string);
        imagePickerActivity.setResult(64, intent);
        imagePickerActivity.finish();
    }

    @Override // androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle outState) {
        h.f(outState, "outState");
        b bVar = this.f2928b;
        if (bVar != null) {
            outState.putSerializable("state.camera_file", bVar.f12222b);
        }
        e eVar = this.f2929c;
        if (eVar == null) {
            h.n("mCropProvider");
            throw null;
        }
        eVar.getClass();
        outState.putSerializable("state.crop_file", eVar.f12233g);
        super.onSaveInstanceState(outState);
    }

    public final void s(Uri uri) throws IOException {
        int r12;
        e eVar = this.f2929c;
        if (eVar == null) {
            h.n("mCropProvider");
            throw null;
        }
        ImagePickerActivity imagePickerActivity = eVar.f12220a;
        if (!eVar.f12231d) {
            d dVar = this.f2930d;
            if (dVar == null) {
                h.n("mCompressionProvider");
                throw null;
            }
            if (!dVar.e(uri)) {
                t(uri);
                return;
            }
            d dVar2 = this.f2930d;
            if (dVar2 != null) {
                new c(dVar2).execute(uri);
                return;
            } else {
                h.n("mCompressionProvider");
                throw null;
            }
        }
        String extension = w.q(uri);
        File fileR = w.r(eVar.f12234h, extension);
        eVar.f12233g = fileR;
        if (fileR == null || !fileR.exists()) {
            Log.e("e", "Failed to create crop image file");
            eVar.c(R.string.error_failed_to_crop_image);
            return;
        }
        Bundle bundle = new Bundle();
        h.f(extension, "extension");
        bundle.putString("com.yalantis.ucrop.CompressionFormatName", (n.G(extension, "png", true) ? Bitmap.CompressFormat.PNG : n.G(extension, "webp", true) ? Build.VERSION.SDK_INT >= 30 ? Bitmap.CompressFormat.WEBP_LOSSLESS : Bitmap.CompressFormat.WEBP : Bitmap.CompressFormat.JPEG).name());
        Uri uriFromFile = Uri.fromFile(eVar.f12233g);
        Intent intent = new Intent();
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("com.yalantis.ucrop.InputUri", uri);
        bundle2.putParcelable("com.yalantis.ucrop.OutputUri", uriFromFile);
        bundle2.putAll(bundle);
        float f = 0;
        float f10 = eVar.f12232e;
        if (f10 > f) {
            float f11 = eVar.f;
            if (f11 > f) {
                bundle2.putFloat("com.yalantis.ucrop.AspectRatioX", f10);
                bundle2.putFloat("com.yalantis.ucrop.AspectRatioY", f11);
            }
        }
        int r92 = eVar.f12229b;
        if (r92 > 0 && (r12 = eVar.f12230c) > 0) {
            if (r92 < 10) {
                r92 = 10;
            }
            if (r12 < 10) {
                r12 = 10;
            }
            bundle2.putInt("com.yalantis.ucrop.MaxSizeX", r92);
            bundle2.putInt("com.yalantis.ucrop.MaxSizeY", r12);
        }
        try {
            intent.setClass(imagePickerActivity, UCropActivity.class);
            intent.putExtras(bundle2);
            imagePickerActivity.startActivityForResult(intent, 69);
        } catch (ActivityNotFoundException e10) {
            eVar.b();
            imagePickerActivity.getClass();
            Intent intent2 = new Intent();
            intent2.putExtra("extra.error", "uCrop not specified in manifest file.Add UCropActivity in Manifest<activity\n    android:name=\"com.yalantis.ucrop.UCropActivity\"\n    android:screenOrientation=\"portrait\"\n    android:theme=\"@style/Theme.AppCompat.Light.NoActionBar\"/>");
            imagePickerActivity.setResult(64, intent2);
            imagePickerActivity.finish();
            e10.printStackTrace();
        }
    }

    public final void t(Uri uri) {
        Intent intent = new Intent();
        intent.setData(uri);
        intent.putExtra("extra.file_path", v.t(this, uri));
        setResult(-1, intent);
        finish();
    }

    public final void u() {
        Intent intent = new Intent();
        String string = getString(R.string.error_task_cancelled);
        h.e(string, "context.getString(R.string.error_task_cancelled)");
        intent.putExtra("extra.error", string);
        setResult(0, intent);
        finish();
    }
}
