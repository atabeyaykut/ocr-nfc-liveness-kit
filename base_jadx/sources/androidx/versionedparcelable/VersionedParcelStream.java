package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcelable;
import android.support.v4.media.a;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.versionedparcelable.VersionedParcel;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.util.Set;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
class VersionedParcelStream extends VersionedParcel {
    private static final int TYPE_BOOLEAN = 5;
    private static final int TYPE_BOOLEAN_ARRAY = 6;
    private static final int TYPE_DOUBLE = 7;
    private static final int TYPE_DOUBLE_ARRAY = 8;
    private static final int TYPE_FLOAT = 13;
    private static final int TYPE_FLOAT_ARRAY = 14;
    private static final int TYPE_INT = 9;
    private static final int TYPE_INT_ARRAY = 10;
    private static final int TYPE_LONG = 11;
    private static final int TYPE_LONG_ARRAY = 12;
    private static final int TYPE_NULL = 0;
    private static final int TYPE_STRING = 3;
    private static final int TYPE_STRING_ARRAY = 4;
    private static final int TYPE_SUB_BUNDLE = 1;
    private static final int TYPE_SUB_PERSISTABLE_BUNDLE = 2;
    private static final Charset UTF_16 = Charset.forName("UTF-16");
    int mCount;
    private DataInputStream mCurrentInput;
    private DataOutputStream mCurrentOutput;
    private FieldBuffer mFieldBuffer;
    private int mFieldId;
    int mFieldSize;
    private boolean mIgnoreParcelables;
    private final DataInputStream mMasterInput;
    private final DataOutputStream mMasterOutput;

    public static class FieldBuffer {
        final DataOutputStream mDataStream;
        private final int mFieldId;
        final ByteArrayOutputStream mOutput;
        private final DataOutputStream mTarget;

        public FieldBuffer(int r32, DataOutputStream dataOutputStream) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            this.mOutput = byteArrayOutputStream;
            this.mDataStream = new DataOutputStream(byteArrayOutputStream);
            this.mFieldId = r32;
            this.mTarget = dataOutputStream;
        }

        public void flushField() throws IOException {
            this.mDataStream.flush();
            int size = this.mOutput.size();
            this.mTarget.writeInt((this.mFieldId << 16) | (size >= 65535 ? 65535 : size));
            if (size >= 65535) {
                this.mTarget.writeInt(size);
            }
            this.mOutput.writeTo(this.mTarget);
        }
    }

    public VersionedParcelStream(InputStream inputStream, OutputStream outputStream) {
        this(inputStream, outputStream, new ArrayMap(), new ArrayMap(), new ArrayMap());
    }

    private VersionedParcelStream(InputStream inputStream, OutputStream outputStream, ArrayMap<String, Method> arrayMap, ArrayMap<String, Method> arrayMap2, ArrayMap<String, Class> arrayMap3) {
        super(arrayMap, arrayMap2, arrayMap3);
        this.mCount = 0;
        this.mFieldId = -1;
        this.mFieldSize = -1;
        DataInputStream dataInputStream = inputStream != null ? new DataInputStream(new FilterInputStream(inputStream) { // from class: androidx.versionedparcelable.VersionedParcelStream.1
            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read() throws IOException {
                VersionedParcelStream versionedParcelStream = VersionedParcelStream.this;
                int r12 = versionedParcelStream.mFieldSize;
                if (r12 != -1 && versionedParcelStream.mCount >= r12) {
                    throw new IOException();
                }
                int r02 = super.read();
                VersionedParcelStream.this.mCount++;
                return r02;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read(byte[] bArr, int r52, int r6) throws IOException {
                VersionedParcelStream versionedParcelStream = VersionedParcelStream.this;
                int r12 = versionedParcelStream.mFieldSize;
                if (r12 != -1 && versionedParcelStream.mCount >= r12) {
                    throw new IOException();
                }
                int r42 = super.read(bArr, r52, r6);
                if (r42 > 0) {
                    VersionedParcelStream.this.mCount += r42;
                }
                return r42;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public long skip(long j10) throws IOException {
                VersionedParcelStream versionedParcelStream = VersionedParcelStream.this;
                int r12 = versionedParcelStream.mFieldSize;
                if (r12 != -1 && versionedParcelStream.mCount >= r12) {
                    throw new IOException();
                }
                long jSkip = super.skip(j10);
                if (jSkip > 0) {
                    VersionedParcelStream.this.mCount += (int) jSkip;
                }
                return jSkip;
            }
        }) : null;
        this.mMasterInput = dataInputStream;
        DataOutputStream dataOutputStream = outputStream != null ? new DataOutputStream(outputStream) : null;
        this.mMasterOutput = dataOutputStream;
        this.mCurrentInput = dataInputStream;
        this.mCurrentOutput = dataOutputStream;
    }

    private void readObject(int r32, String str, Bundle bundle) {
        switch (r32) {
            case 0:
                bundle.putParcelable(str, null);
                return;
            case 1:
            case 2:
                bundle.putBundle(str, readBundle());
                return;
            case 3:
                bundle.putString(str, readString());
                return;
            case 4:
                bundle.putStringArray(str, (String[]) readArray(new String[0]));
                return;
            case 5:
                bundle.putBoolean(str, readBoolean());
                return;
            case 6:
                bundle.putBooleanArray(str, readBooleanArray());
                return;
            case 7:
                bundle.putDouble(str, readDouble());
                return;
            case 8:
                bundle.putDoubleArray(str, readDoubleArray());
                return;
            case 9:
                bundle.putInt(str, readInt());
                return;
            case 10:
                bundle.putIntArray(str, readIntArray());
                return;
            case 11:
                bundle.putLong(str, readLong());
                return;
            case 12:
                bundle.putLongArray(str, readLongArray());
                return;
            case 13:
                bundle.putFloat(str, readFloat());
                return;
            case 14:
                bundle.putFloatArray(str, readFloatArray());
                return;
            default:
                throw new RuntimeException(a.d("Unknown type ", r32));
        }
    }

    private void writeObject(Object obj) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        int r42;
        if (obj == null) {
            r42 = 0;
        } else {
            if (obj instanceof Bundle) {
                writeInt(1);
                writeBundle((Bundle) obj);
                return;
            }
            if (obj instanceof String) {
                writeInt(3);
                writeString((String) obj);
                return;
            }
            if (obj instanceof String[]) {
                writeInt(4);
                writeArray((String[]) obj);
                return;
            }
            if (obj instanceof Boolean) {
                writeInt(5);
                writeBoolean(((Boolean) obj).booleanValue());
                return;
            }
            if (obj instanceof boolean[]) {
                writeInt(6);
                writeBooleanArray((boolean[]) obj);
                return;
            }
            if (obj instanceof Double) {
                writeInt(7);
                writeDouble(((Double) obj).doubleValue());
                return;
            }
            if (obj instanceof double[]) {
                writeInt(8);
                writeDoubleArray((double[]) obj);
                return;
            }
            if (!(obj instanceof Integer)) {
                if (obj instanceof int[]) {
                    writeInt(10);
                    writeIntArray((int[]) obj);
                    return;
                }
                if (obj instanceof Long) {
                    writeInt(11);
                    writeLong(((Long) obj).longValue());
                    return;
                }
                if (obj instanceof long[]) {
                    writeInt(12);
                    writeLongArray((long[]) obj);
                    return;
                } else if (obj instanceof Float) {
                    writeInt(13);
                    writeFloat(((Float) obj).floatValue());
                    return;
                } else if (obj instanceof float[]) {
                    writeInt(14);
                    writeFloatArray((float[]) obj);
                    return;
                } else {
                    throw new IllegalArgumentException("Unsupported type " + obj.getClass());
                }
            }
            writeInt(9);
            r42 = ((Integer) obj).intValue();
        }
        writeInt(r42);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void closeField() {
        FieldBuffer fieldBuffer = this.mFieldBuffer;
        if (fieldBuffer != null) {
            try {
                if (fieldBuffer.mOutput.size() != 0) {
                    this.mFieldBuffer.flushField();
                }
                this.mFieldBuffer = null;
            } catch (IOException e10) {
                throw new VersionedParcel.ParcelException(e10);
            }
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public VersionedParcel createSubParcel() {
        return new VersionedParcelStream(this.mCurrentInput, this.mCurrentOutput, this.mReadCache, this.mWriteCache, this.mParcelizerCache);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean isStream() {
        return true;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean readBoolean() {
        try {
            return this.mCurrentInput.readBoolean();
        } catch (IOException e10) {
            throw new VersionedParcel.ParcelException(e10);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public Bundle readBundle() throws IOException {
        int r02 = readInt();
        if (r02 < 0) {
            return null;
        }
        Bundle bundle = new Bundle();
        for (int r22 = 0; r22 < r02; r22++) {
            readObject(readInt(), readString(), bundle);
        }
        return bundle;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public byte[] readByteArray() throws IOException {
        try {
            int r02 = this.mCurrentInput.readInt();
            if (r02 <= 0) {
                return null;
            }
            byte[] bArr = new byte[r02];
            this.mCurrentInput.readFully(bArr);
            return bArr;
        } catch (IOException e10) {
            throw new VersionedParcel.ParcelException(e10);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public CharSequence readCharSequence() {
        return null;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public double readDouble() {
        try {
            return this.mCurrentInput.readDouble();
        } catch (IOException e10) {
            throw new VersionedParcel.ParcelException(e10);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean readField(int r52) throws IOException {
        while (true) {
            try {
                int r12 = this.mFieldId;
                if (r12 == r52) {
                    return true;
                }
                if (String.valueOf(r12).compareTo(String.valueOf(r52)) > 0) {
                    return false;
                }
                if (this.mCount < this.mFieldSize) {
                    this.mMasterInput.skip(r2 - r1);
                }
                this.mFieldSize = -1;
                int r13 = this.mMasterInput.readInt();
                this.mCount = 0;
                int r32 = r13 & 65535;
                if (r32 == 65535) {
                    r32 = this.mMasterInput.readInt();
                }
                this.mFieldId = (r13 >> 16) & 65535;
                this.mFieldSize = r32;
            } catch (IOException unused) {
                return false;
            }
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public float readFloat() {
        try {
            return this.mCurrentInput.readFloat();
        } catch (IOException e10) {
            throw new VersionedParcel.ParcelException(e10);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public int readInt() {
        try {
            return this.mCurrentInput.readInt();
        } catch (IOException e10) {
            throw new VersionedParcel.ParcelException(e10);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public long readLong() {
        try {
            return this.mCurrentInput.readLong();
        } catch (IOException e10) {
            throw new VersionedParcel.ParcelException(e10);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public <T extends Parcelable> T readParcelable() {
        return null;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public String readString() throws IOException {
        try {
            int r02 = this.mCurrentInput.readInt();
            if (r02 <= 0) {
                return null;
            }
            byte[] bArr = new byte[r02];
            this.mCurrentInput.readFully(bArr);
            return new String(bArr, UTF_16);
        } catch (IOException e10) {
            throw new VersionedParcel.ParcelException(e10);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public IBinder readStrongBinder() {
        return null;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void setOutputField(int r32) {
        closeField();
        FieldBuffer fieldBuffer = new FieldBuffer(r32, this.mMasterOutput);
        this.mFieldBuffer = fieldBuffer;
        this.mCurrentOutput = fieldBuffer.mDataStream;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void setSerializationFlags(boolean z10, boolean z11) {
        if (!z10) {
            throw new RuntimeException("Serialization of this object is not allowed");
        }
        this.mIgnoreParcelables = z11;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeBoolean(boolean z10) throws IOException {
        try {
            this.mCurrentOutput.writeBoolean(z10);
        } catch (IOException e10) {
            throw new VersionedParcel.ParcelException(e10);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeBundle(Bundle bundle) throws IOException {
        try {
            if (bundle == null) {
                this.mCurrentOutput.writeInt(-1);
                return;
            }
            Set<String> setKeySet = bundle.keySet();
            this.mCurrentOutput.writeInt(setKeySet.size());
            for (String str : setKeySet) {
                writeString(str);
                writeObject(bundle.get(str));
            }
        } catch (IOException e10) {
            throw new VersionedParcel.ParcelException(e10);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeByteArray(byte[] bArr) throws IOException {
        try {
            if (bArr != null) {
                this.mCurrentOutput.writeInt(bArr.length);
                this.mCurrentOutput.write(bArr);
            } else {
                this.mCurrentOutput.writeInt(-1);
            }
        } catch (IOException e10) {
            throw new VersionedParcel.ParcelException(e10);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeByteArray(byte[] bArr, int r32, int r42) throws IOException {
        try {
            if (bArr != null) {
                this.mCurrentOutput.writeInt(r42);
                this.mCurrentOutput.write(bArr, r32, r42);
            } else {
                this.mCurrentOutput.writeInt(-1);
            }
        } catch (IOException e10) {
            throw new VersionedParcel.ParcelException(e10);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeCharSequence(CharSequence charSequence) {
        if (!this.mIgnoreParcelables) {
            throw new RuntimeException("CharSequence cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeDouble(double d10) throws IOException {
        try {
            this.mCurrentOutput.writeDouble(d10);
        } catch (IOException e10) {
            throw new VersionedParcel.ParcelException(e10);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeFloat(float f) throws IOException {
        try {
            this.mCurrentOutput.writeFloat(f);
        } catch (IOException e10) {
            throw new VersionedParcel.ParcelException(e10);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeInt(int r22) throws IOException {
        try {
            this.mCurrentOutput.writeInt(r22);
        } catch (IOException e10) {
            throw new VersionedParcel.ParcelException(e10);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeLong(long j10) throws IOException {
        try {
            this.mCurrentOutput.writeLong(j10);
        } catch (IOException e10) {
            throw new VersionedParcel.ParcelException(e10);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeParcelable(Parcelable parcelable) {
        if (!this.mIgnoreParcelables) {
            throw new RuntimeException("Parcelables cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeString(String str) throws IOException {
        try {
            if (str != null) {
                byte[] bytes = str.getBytes(UTF_16);
                this.mCurrentOutput.writeInt(bytes.length);
                this.mCurrentOutput.write(bytes);
            } else {
                this.mCurrentOutput.writeInt(-1);
            }
        } catch (IOException e10) {
            throw new VersionedParcel.ParcelException(e10);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeStrongBinder(IBinder iBinder) {
        if (!this.mIgnoreParcelables) {
            throw new RuntimeException("Binders cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeStrongInterface(IInterface iInterface) {
        if (!this.mIgnoreParcelables) {
            throw new RuntimeException("Binders cannot be written to an OutputStream");
        }
    }
}
