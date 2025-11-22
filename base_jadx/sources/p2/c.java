package p2;

import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import com.github.dhaval2404.imagepicker.ImagePickerActivity;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes.dex */
public final class c extends AsyncTask<Uri, Void, File> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f12224a;

    public c(d dVar) {
        this.f12224a = dVar;
    }

    @Override // android.os.AsyncTask
    public final File doInBackground(Uri[] uriArr) throws Throwable {
        File file;
        int r12;
        int r72;
        int r92;
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        FileDescriptor fileDescriptor;
        Uri[] params = uriArr;
        h.f(params, "params");
        Uri uri = params[0];
        d context = this.f12224a;
        h.f(context, "context");
        h.f(uri, "uri");
        try {
            file = new File(context.getCacheDir(), "image_picker.png");
            parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r");
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        if (parcelFileDescriptorOpenFileDescriptor == null || (fileDescriptor = parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()) == null) {
            file = null;
        } else {
            FileChannel channel = new FileInputStream(fileDescriptor).getChannel();
            FileChannel channel2 = new FileOutputStream(file).getChannel();
            channel2.transferFrom(channel, 0L, channel.size());
            channel.close();
            channel2.close();
        }
        if (file != null) {
            File file2 = null;
            int r6 = 0;
            int r73 = 0;
            while (true) {
                if (file2 != null) {
                    file2.delete();
                }
                File fileD = context.d(file, r6);
                if (fileD != null) {
                    boolean z10 = true;
                    long j10 = context.f12227d;
                    if (j10 > 0) {
                        long length = fileD.length() - j10;
                        r12 = (length > ((long) 1048576) ? 3 : length > ((long) 512000) ? 2 : 1) + r6;
                    } else {
                        r12 = r6 + 1;
                    }
                    boolean z11 = ((j10 > 0L ? 1 : (j10 == 0L ? 0 : -1)) > 0) && fileD.length() - j10 > 0;
                    if (!z11 && (r72 = context.f12225b) > 0 && (r92 = context.f12226c) > 0) {
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        options.inJustDecodeBounds = true;
                        BitmapFactory.decodeFile(fileD.getAbsolutePath(), options);
                        Integer numValueOf = Integer.valueOf(options.outWidth);
                        Integer numValueOf2 = Integer.valueOf(options.outHeight);
                        if (numValueOf.intValue() <= r72 && numValueOf2.intValue() <= r92) {
                            z10 = false;
                        }
                        z11 = z10;
                    }
                    if (!z11) {
                        try {
                            ExifInterface exifInterface = new ExifInterface(file);
                            ExifInterface exifInterface2 = new ExifInterface(fileD);
                            for (String str : b8.f.T(ExifInterface.TAG_F_NUMBER, ExifInterface.TAG_EXPOSURE_TIME, ExifInterface.TAG_ISO_SPEED_RATINGS, ExifInterface.TAG_GPS_ALTITUDE, ExifInterface.TAG_GPS_ALTITUDE_REF, ExifInterface.TAG_FOCAL_LENGTH, ExifInterface.TAG_GPS_DATESTAMP, ExifInterface.TAG_WHITE_BALANCE, ExifInterface.TAG_GPS_PROCESSING_METHOD, ExifInterface.TAG_GPS_TIMESTAMP, ExifInterface.TAG_DATETIME, ExifInterface.TAG_FLASH, ExifInterface.TAG_GPS_LATITUDE, ExifInterface.TAG_GPS_LATITUDE_REF, ExifInterface.TAG_GPS_LONGITUDE, ExifInterface.TAG_GPS_LONGITUDE_REF, ExifInterface.TAG_MAKE, ExifInterface.TAG_MODEL, ExifInterface.TAG_ORIENTATION)) {
                                if (exifInterface.getAttribute(str) != null) {
                                    exifInterface2.setAttribute(str, exifInterface.getAttribute(str));
                                }
                            }
                            exifInterface2.saveAttributes();
                        } catch (Exception e11) {
                            Log.e("ExifDataCopier", "Error preserving Exif data on selected image: " + e11);
                        }
                        return fileD;
                    }
                    r73 = r6;
                    file2 = fileD;
                    r6 = r12;
                } else if (r6 > 0) {
                    return context.d(file, r73);
                }
            }
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(File file) {
        File file2 = file;
        super.onPostExecute(file2);
        d dVar = this.f12224a;
        if (file2 == null) {
            dVar.c(R.string.error_failed_to_compress_image);
            return;
        }
        dVar.getClass();
        Uri uriFromFile = Uri.fromFile(file2);
        h.e(uriFromFile, "Uri.fromFile(file)");
        ImagePickerActivity imagePickerActivity = dVar.f12220a;
        imagePickerActivity.getClass();
        b bVar = imagePickerActivity.f2928b;
        if (bVar != null) {
            File file3 = bVar.f12222b;
            if (file3 != null) {
                file3.delete();
            }
            bVar.f12222b = null;
        }
        e eVar = imagePickerActivity.f2929c;
        if (eVar == null) {
            h.n("mCropProvider");
            throw null;
        }
        File file4 = eVar.f12233g;
        if (file4 != null) {
            file4.delete();
        }
        eVar.f12233g = null;
        imagePickerActivity.t(uriFromFile);
    }
}
