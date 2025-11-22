package androidx.versionedparcelable;

import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.NetworkOnMainThreadException;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseBooleanArray;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.browser.browseractions.a;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public abstract class VersionedParcel {
    private static final int EX_BAD_PARCELABLE = -2;
    private static final int EX_ILLEGAL_ARGUMENT = -3;
    private static final int EX_ILLEGAL_STATE = -5;
    private static final int EX_NETWORK_MAIN_THREAD = -6;
    private static final int EX_NULL_POINTER = -4;
    private static final int EX_PARCELABLE = -9;
    private static final int EX_SECURITY = -1;
    private static final int EX_UNSUPPORTED_OPERATION = -7;
    private static final String TAG = "VersionedParcel";
    private static final int TYPE_BINDER = 5;
    private static final int TYPE_FLOAT = 8;
    private static final int TYPE_INTEGER = 7;
    private static final int TYPE_PARCELABLE = 2;
    private static final int TYPE_SERIALIZABLE = 3;
    private static final int TYPE_STRING = 4;
    private static final int TYPE_VERSIONED_PARCELABLE = 1;
    protected final ArrayMap<String, Class> mParcelizerCache;
    protected final ArrayMap<String, Method> mReadCache;
    protected final ArrayMap<String, Method> mWriteCache;

    public static class ParcelException extends RuntimeException {
        public ParcelException(Throwable th2) {
            super(th2);
        }
    }

    public VersionedParcel(ArrayMap<String, Method> arrayMap, ArrayMap<String, Method> arrayMap2, ArrayMap<String, Class> arrayMap3) {
        this.mReadCache = arrayMap;
        this.mWriteCache = arrayMap2;
        this.mParcelizerCache = arrayMap3;
    }

    private Exception createException(int r42, String str) {
        switch (r42) {
            case EX_PARCELABLE /* -9 */:
                return (Exception) readParcelable();
            case -8:
            default:
                return new RuntimeException("Unknown exception code: " + r42 + " msg " + str);
            case EX_UNSUPPORTED_OPERATION /* -7 */:
                return new UnsupportedOperationException(str);
            case EX_NETWORK_MAIN_THREAD /* -6 */:
                return new NetworkOnMainThreadException();
            case EX_ILLEGAL_STATE /* -5 */:
                return new IllegalStateException(str);
            case -4:
                return new NullPointerException(str);
            case -3:
                return new IllegalArgumentException(str);
            case -2:
                return new BadParcelableException(str);
            case -1:
                return new SecurityException(str);
        }
    }

    private Class findParcelClass(Class<? extends VersionedParcelable> cls) throws ClassNotFoundException {
        Class cls2 = this.mParcelizerCache.get(cls.getName());
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
        this.mParcelizerCache.put(cls.getName(), cls3);
        return cls3;
    }

    private Method getReadMethod(String str) throws IllegalAccessException, NoSuchMethodException, SecurityException, ClassNotFoundException {
        Method method = this.mReadCache.get(str);
        if (method != null) {
            return method;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
        this.mReadCache.put(str, declaredMethod);
        return declaredMethod;
    }

    @NonNull
    public static Throwable getRootCause(@NonNull Throwable th2) {
        while (th2.getCause() != null) {
            th2 = th2.getCause();
        }
        return th2;
    }

    private <T> int getType(T t10) {
        if (t10 instanceof String) {
            return 4;
        }
        if (t10 instanceof Parcelable) {
            return 2;
        }
        if (t10 instanceof VersionedParcelable) {
            return 1;
        }
        if (t10 instanceof Serializable) {
            return 3;
        }
        if (t10 instanceof IBinder) {
            return 5;
        }
        if (t10 instanceof Integer) {
            return 7;
        }
        if (t10 instanceof Float) {
            return 8;
        }
        throw new IllegalArgumentException(t10.getClass().getName().concat(" cannot be VersionedParcelled"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Method getWriteMethod(Class cls) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException {
        Method method = this.mWriteCache.get(cls.getName());
        if (method != null) {
            return method;
        }
        Class clsFindParcelClass = findParcelClass(cls);
        System.currentTimeMillis();
        Method declaredMethod = clsFindParcelClass.getDeclaredMethod("write", cls, VersionedParcel.class);
        this.mWriteCache.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    private <T, S extends Collection<T>> S readCollection(S s7) {
        int r02 = readInt();
        if (r02 < 0) {
            return null;
        }
        if (r02 != 0) {
            int r22 = readInt();
            if (r02 < 0) {
                return null;
            }
            if (r22 == 1) {
                while (r02 > 0) {
                    s7.add(readVersionedParcelable());
                    r02--;
                }
            } else if (r22 == 2) {
                while (r02 > 0) {
                    s7.add(readParcelable());
                    r02--;
                }
            } else if (r22 == 3) {
                while (r02 > 0) {
                    s7.add(readSerializable());
                    r02--;
                }
            } else if (r22 == 4) {
                while (r02 > 0) {
                    s7.add(readString());
                    r02--;
                }
            } else if (r22 == 5) {
                while (r02 > 0) {
                    s7.add(readStrongBinder());
                    r02--;
                }
            }
        }
        return s7;
    }

    private Exception readException(int r12, String str) {
        return createException(r12, str);
    }

    private int readExceptionCode() {
        return readInt();
    }

    private <T> void writeCollection(Collection<T> collection) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        if (collection == null) {
            writeInt(-1);
        }
        int size = collection.size();
        writeInt(size);
        if (size > 0) {
            int type = getType(collection.iterator().next());
            writeInt(type);
            switch (type) {
                case 1:
                    Iterator<T> it = collection.iterator();
                    while (it.hasNext()) {
                        writeVersionedParcelable((VersionedParcelable) it.next());
                    }
                    break;
                case 2:
                    Iterator<T> it2 = collection.iterator();
                    while (it2.hasNext()) {
                        writeParcelable((Parcelable) it2.next());
                    }
                    break;
                case 3:
                    Iterator<T> it3 = collection.iterator();
                    while (it3.hasNext()) {
                        writeSerializable((Serializable) it3.next());
                    }
                    break;
                case 4:
                    Iterator<T> it4 = collection.iterator();
                    while (it4.hasNext()) {
                        writeString((String) it4.next());
                    }
                    break;
                case 5:
                    Iterator<T> it5 = collection.iterator();
                    while (it5.hasNext()) {
                        writeStrongBinder((IBinder) it5.next());
                    }
                    break;
                case 7:
                    Iterator<T> it6 = collection.iterator();
                    while (it6.hasNext()) {
                        writeInt(((Integer) it6.next()).intValue());
                    }
                    break;
                case 8:
                    Iterator<T> it7 = collection.iterator();
                    while (it7.hasNext()) {
                        writeFloat(((Float) it7.next()).floatValue());
                    }
                    break;
            }
        }
    }

    private <T> void writeCollection(Collection<T> collection, int r22) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        setOutputField(r22);
        writeCollection(collection);
    }

    private void writeSerializable(Serializable serializable) throws IOException {
        if (serializable == null) {
            writeString(null);
            return;
        }
        String name = serializable.getClass().getName();
        writeString(name);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(serializable);
            objectOutputStream.close();
            writeByteArray(byteArrayOutputStream.toByteArray());
        } catch (IOException e10) {
            throw new RuntimeException(a.a("VersionedParcelable encountered IOException writing serializable object (name = ", name, ")"), e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void writeVersionedParcelableCreator(VersionedParcelable versionedParcelable) {
        try {
            writeString(findParcelClass(versionedParcelable.getClass()).getName());
        } catch (ClassNotFoundException e10) {
            throw new RuntimeException(versionedParcelable.getClass().getSimpleName().concat(" does not have a Parcelizer"), e10);
        }
    }

    public abstract void closeField();

    public abstract VersionedParcel createSubParcel();

    public boolean isStream() {
        return false;
    }

    public <T> T[] readArray(T[] tArr) {
        int r02 = readInt();
        if (r02 < 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(r02);
        if (r02 != 0) {
            int r32 = readInt();
            if (r02 < 0) {
                return null;
            }
            if (r32 == 1) {
                while (r02 > 0) {
                    arrayList.add(readVersionedParcelable());
                    r02--;
                }
            } else if (r32 == 2) {
                while (r02 > 0) {
                    arrayList.add(readParcelable());
                    r02--;
                }
            } else if (r32 == 3) {
                while (r02 > 0) {
                    arrayList.add(readSerializable());
                    r02--;
                }
            } else if (r32 == 4) {
                while (r02 > 0) {
                    arrayList.add(readString());
                    r02--;
                }
            } else if (r32 == 5) {
                while (r02 > 0) {
                    arrayList.add(readStrongBinder());
                    r02--;
                }
            }
        }
        return (T[]) arrayList.toArray(tArr);
    }

    public <T> T[] readArray(T[] tArr, int r22) {
        return !readField(r22) ? tArr : (T[]) readArray(tArr);
    }

    public abstract boolean readBoolean();

    public boolean readBoolean(boolean z10, int r22) {
        return !readField(r22) ? z10 : readBoolean();
    }

    public boolean[] readBooleanArray() {
        int r02 = readInt();
        if (r02 < 0) {
            return null;
        }
        boolean[] zArr = new boolean[r02];
        for (int r32 = 0; r32 < r02; r32++) {
            zArr[r32] = readInt() != 0;
        }
        return zArr;
    }

    public boolean[] readBooleanArray(boolean[] zArr, int r22) {
        return !readField(r22) ? zArr : readBooleanArray();
    }

    public abstract Bundle readBundle();

    public Bundle readBundle(Bundle bundle, int r22) {
        return !readField(r22) ? bundle : readBundle();
    }

    public byte readByte(byte b10, int r22) {
        return !readField(r22) ? b10 : (byte) (readInt() & 255);
    }

    public abstract byte[] readByteArray();

    public byte[] readByteArray(byte[] bArr, int r22) {
        return !readField(r22) ? bArr : readByteArray();
    }

    public char[] readCharArray(char[] cArr, int r42) {
        if (!readField(r42)) {
            return cArr;
        }
        int r32 = readInt();
        if (r32 < 0) {
            return null;
        }
        char[] cArr2 = new char[r32];
        for (int r02 = 0; r02 < r32; r02++) {
            cArr2[r02] = (char) readInt();
        }
        return cArr2;
    }

    public abstract CharSequence readCharSequence();

    public CharSequence readCharSequence(CharSequence charSequence, int r22) {
        return !readField(r22) ? charSequence : readCharSequence();
    }

    public abstract double readDouble();

    public double readDouble(double d10, int r32) {
        return !readField(r32) ? d10 : readDouble();
    }

    public double[] readDoubleArray() {
        int r02 = readInt();
        if (r02 < 0) {
            return null;
        }
        double[] dArr = new double[r02];
        for (int r22 = 0; r22 < r02; r22++) {
            dArr[r22] = readDouble();
        }
        return dArr;
    }

    public double[] readDoubleArray(double[] dArr, int r22) {
        return !readField(r22) ? dArr : readDoubleArray();
    }

    public Exception readException(Exception exc, int r22) {
        int exceptionCode;
        return (readField(r22) && (exceptionCode = readExceptionCode()) != 0) ? readException(exceptionCode, readString()) : exc;
    }

    public abstract boolean readField(int r12);

    public abstract float readFloat();

    public float readFloat(float f, int r22) {
        return !readField(r22) ? f : readFloat();
    }

    public float[] readFloatArray() {
        int r02 = readInt();
        if (r02 < 0) {
            return null;
        }
        float[] fArr = new float[r02];
        for (int r22 = 0; r22 < r02; r22++) {
            fArr[r22] = readFloat();
        }
        return fArr;
    }

    public float[] readFloatArray(float[] fArr, int r22) {
        return !readField(r22) ? fArr : readFloatArray();
    }

    public <T extends VersionedParcelable> T readFromParcel(String str, VersionedParcel versionedParcel) {
        try {
            return (T) getReadMethod(str).invoke(null, versionedParcel);
        } catch (ClassNotFoundException e10) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e10);
        } catch (IllegalAccessException e11) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e11);
        } catch (NoSuchMethodException e12) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e12);
        } catch (InvocationTargetException e13) {
            if (e13.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e13.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e13);
        }
    }

    public abstract int readInt();

    public int readInt(int r12, int r22) {
        return !readField(r22) ? r12 : readInt();
    }

    public int[] readIntArray() {
        int r02 = readInt();
        if (r02 < 0) {
            return null;
        }
        int[] r12 = new int[r02];
        for (int r22 = 0; r22 < r02; r22++) {
            r12[r22] = readInt();
        }
        return r12;
    }

    public int[] readIntArray(int[] r12, int r22) {
        return !readField(r22) ? r12 : readIntArray();
    }

    public <T> List<T> readList(List<T> list, int r22) {
        return !readField(r22) ? list : (List) readCollection(new ArrayList());
    }

    public abstract long readLong();

    public long readLong(long j10, int r32) {
        return !readField(r32) ? j10 : readLong();
    }

    public long[] readLongArray() {
        int r02 = readInt();
        if (r02 < 0) {
            return null;
        }
        long[] jArr = new long[r02];
        for (int r22 = 0; r22 < r02; r22++) {
            jArr[r22] = readLong();
        }
        return jArr;
    }

    public long[] readLongArray(long[] jArr, int r22) {
        return !readField(r22) ? jArr : readLongArray();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <K, V> Map<K, V> readMap(Map<K, V> map, int r72) {
        if (!readField(r72)) {
            return map;
        }
        int r6 = readInt();
        if (r6 < 0) {
            return null;
        }
        ArrayMap arrayMap = new ArrayMap();
        if (r6 == 0) {
            return arrayMap;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        readCollection(arrayList);
        readCollection(arrayList2);
        for (int r22 = 0; r22 < r6; r22++) {
            arrayMap.put(arrayList.get(r22), arrayList2.get(r22));
        }
        return arrayMap;
    }

    public abstract <T extends Parcelable> T readParcelable();

    public <T extends Parcelable> T readParcelable(T t10, int r22) {
        return !readField(r22) ? t10 : (T) readParcelable();
    }

    public Serializable readSerializable() {
        String string = readString();
        if (string == null) {
            return null;
        }
        try {
            return (Serializable) new ObjectInputStream(new ByteArrayInputStream(readByteArray())) { // from class: androidx.versionedparcelable.VersionedParcel.1
                @Override // java.io.ObjectInputStream
                public Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws ClassNotFoundException, IOException {
                    Class<?> cls = Class.forName(objectStreamClass.getName(), false, getClass().getClassLoader());
                    return cls != null ? cls : super.resolveClass(objectStreamClass);
                }
            }.readObject();
        } catch (IOException e10) {
            throw new RuntimeException(a.a("VersionedParcelable encountered IOException reading a Serializable object (name = ", string, ")"), e10);
        } catch (ClassNotFoundException e11) {
            throw new RuntimeException(a.a("VersionedParcelable encountered ClassNotFoundException reading a Serializable object (name = ", string, ")"), e11);
        }
    }

    public <T> Set<T> readSet(Set<T> set, int r22) {
        return !readField(r22) ? set : (Set) readCollection(new ArraySet());
    }

    @RequiresApi(api = 21)
    public Size readSize(Size size, int r32) {
        if (!readField(r32)) {
            return size;
        }
        if (readBoolean()) {
            return new Size(readInt(), readInt());
        }
        return null;
    }

    @RequiresApi(api = 21)
    public SizeF readSizeF(SizeF sizeF, int r32) {
        if (!readField(r32)) {
            return sizeF;
        }
        if (readBoolean()) {
            return new SizeF(readFloat(), readFloat());
        }
        return null;
    }

    public SparseBooleanArray readSparseBooleanArray(SparseBooleanArray sparseBooleanArray, int r52) {
        if (!readField(r52)) {
            return sparseBooleanArray;
        }
        int r42 = readInt();
        if (r42 < 0) {
            return null;
        }
        SparseBooleanArray sparseBooleanArray2 = new SparseBooleanArray(r42);
        for (int r02 = 0; r02 < r42; r02++) {
            sparseBooleanArray2.put(readInt(), readBoolean());
        }
        return sparseBooleanArray2;
    }

    public abstract String readString();

    public String readString(String str, int r22) {
        return !readField(r22) ? str : readString();
    }

    public abstract IBinder readStrongBinder();

    public IBinder readStrongBinder(IBinder iBinder, int r22) {
        return !readField(r22) ? iBinder : readStrongBinder();
    }

    public <T extends VersionedParcelable> T readVersionedParcelable() {
        String string = readString();
        if (string == null) {
            return null;
        }
        return (T) readFromParcel(string, createSubParcel());
    }

    public <T extends VersionedParcelable> T readVersionedParcelable(T t10, int r22) {
        return !readField(r22) ? t10 : (T) readVersionedParcelable();
    }

    public abstract void setOutputField(int r12);

    public void setSerializationFlags(boolean z10, boolean z11) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> void writeArray(T[] tArr) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        if (tArr == 0) {
            writeInt(-1);
            return;
        }
        int length = tArr.length;
        writeInt(length);
        if (length > 0) {
            int r12 = 0;
            int type = getType(tArr[0]);
            writeInt(type);
            if (type == 1) {
                while (r12 < length) {
                    writeVersionedParcelable((VersionedParcelable) tArr[r12]);
                    r12++;
                }
                return;
            }
            if (type == 2) {
                while (r12 < length) {
                    writeParcelable((Parcelable) tArr[r12]);
                    r12++;
                }
                return;
            }
            if (type == 3) {
                while (r12 < length) {
                    writeSerializable((Serializable) tArr[r12]);
                    r12++;
                }
            } else if (type == 4) {
                while (r12 < length) {
                    writeString((String) tArr[r12]);
                    r12++;
                }
            } else {
                if (type != 5) {
                    return;
                }
                while (r12 < length) {
                    writeStrongBinder((IBinder) tArr[r12]);
                    r12++;
                }
            }
        }
    }

    public <T> void writeArray(T[] tArr, int r22) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        setOutputField(r22);
        writeArray(tArr);
    }

    public abstract void writeBoolean(boolean z10);

    public void writeBoolean(boolean z10, int r22) {
        setOutputField(r22);
        writeBoolean(z10);
    }

    public void writeBooleanArray(boolean[] zArr) {
        if (zArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(zArr.length);
        for (boolean z10 : zArr) {
            writeInt(z10 ? 1 : 0);
        }
    }

    public void writeBooleanArray(boolean[] zArr, int r22) {
        setOutputField(r22);
        writeBooleanArray(zArr);
    }

    public abstract void writeBundle(Bundle bundle);

    public void writeBundle(Bundle bundle, int r22) {
        setOutputField(r22);
        writeBundle(bundle);
    }

    public void writeByte(byte b10, int r22) {
        setOutputField(r22);
        writeInt(b10);
    }

    public abstract void writeByteArray(byte[] bArr);

    public void writeByteArray(byte[] bArr, int r22) {
        setOutputField(r22);
        writeByteArray(bArr);
    }

    public abstract void writeByteArray(byte[] bArr, int r22, int r32);

    public void writeByteArray(byte[] bArr, int r22, int r32, int r42) {
        setOutputField(r42);
        writeByteArray(bArr, r22, r32);
    }

    public void writeCharArray(char[] cArr, int r42) {
        setOutputField(r42);
        if (cArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(cArr.length);
        for (char c10 : cArr) {
            writeInt(c10);
        }
    }

    public abstract void writeCharSequence(CharSequence charSequence);

    public void writeCharSequence(CharSequence charSequence, int r22) {
        setOutputField(r22);
        writeCharSequence(charSequence);
    }

    public abstract void writeDouble(double d10);

    public void writeDouble(double d10, int r32) {
        setOutputField(r32);
        writeDouble(d10);
    }

    public void writeDoubleArray(double[] dArr) {
        if (dArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(dArr.length);
        for (double d10 : dArr) {
            writeDouble(d10);
        }
    }

    public void writeDoubleArray(double[] dArr, int r22) {
        setOutputField(r22);
        writeDoubleArray(dArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void writeException(Exception exc, int r42) {
        setOutputField(r42);
        if (exc == 0) {
            writeNoException();
            return;
        }
        int r43 = ((exc instanceof Parcelable) && exc.getClass().getClassLoader() == Parcelable.class.getClassLoader()) ? EX_PARCELABLE : exc instanceof SecurityException ? -1 : exc instanceof BadParcelableException ? -2 : exc instanceof IllegalArgumentException ? -3 : exc instanceof NullPointerException ? -4 : exc instanceof IllegalStateException ? EX_ILLEGAL_STATE : exc instanceof NetworkOnMainThreadException ? EX_NETWORK_MAIN_THREAD : exc instanceof UnsupportedOperationException ? EX_UNSUPPORTED_OPERATION : 0;
        writeInt(r43);
        if (r43 == 0) {
            if (!(exc instanceof RuntimeException)) {
                throw new RuntimeException(exc);
            }
            throw ((RuntimeException) exc);
        }
        writeString(exc.getMessage());
        if (r43 != EX_PARCELABLE) {
            return;
        }
        writeParcelable((Parcelable) exc);
    }

    public abstract void writeFloat(float f);

    public void writeFloat(float f, int r22) {
        setOutputField(r22);
        writeFloat(f);
    }

    public void writeFloatArray(float[] fArr) {
        if (fArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(fArr.length);
        for (float f : fArr) {
            writeFloat(f);
        }
    }

    public void writeFloatArray(float[] fArr, int r22) {
        setOutputField(r22);
        writeFloatArray(fArr);
    }

    public abstract void writeInt(int r12);

    public void writeInt(int r12, int r22) {
        setOutputField(r22);
        writeInt(r12);
    }

    public void writeIntArray(int[] r42) {
        if (r42 == null) {
            writeInt(-1);
            return;
        }
        writeInt(r42.length);
        for (int r02 : r42) {
            writeInt(r02);
        }
    }

    public void writeIntArray(int[] r12, int r22) {
        setOutputField(r22);
        writeIntArray(r12);
    }

    public <T> void writeList(List<T> list, int r22) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        writeCollection(list, r22);
    }

    public abstract void writeLong(long j10);

    public void writeLong(long j10, int r32) {
        setOutputField(r32);
        writeLong(j10);
    }

    public void writeLongArray(long[] jArr) {
        if (jArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(jArr.length);
        for (long j10 : jArr) {
            writeLong(j10);
        }
    }

    public void writeLongArray(long[] jArr, int r22) {
        setOutputField(r22);
        writeLongArray(jArr);
    }

    public <K, V> void writeMap(Map<K, V> map, int r52) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        setOutputField(r52);
        if (map == null) {
            writeInt(-1);
            return;
        }
        int size = map.size();
        writeInt(size);
        if (size == 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry<K, V> entry : map.entrySet()) {
            arrayList.add(entry.getKey());
            arrayList2.add(entry.getValue());
        }
        writeCollection(arrayList);
        writeCollection(arrayList2);
    }

    public void writeNoException() {
        writeInt(0);
    }

    public abstract void writeParcelable(Parcelable parcelable);

    public void writeParcelable(Parcelable parcelable, int r22) {
        setOutputField(r22);
        writeParcelable(parcelable);
    }

    public void writeSerializable(Serializable serializable, int r22) throws IOException {
        setOutputField(r22);
        writeSerializable(serializable);
    }

    public <T> void writeSet(Set<T> set, int r22) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        writeCollection(set, r22);
    }

    @RequiresApi(api = 21)
    public void writeSize(Size size, int r22) {
        setOutputField(r22);
        writeBoolean(size != null);
        if (size != null) {
            writeInt(size.getWidth());
            writeInt(size.getHeight());
        }
    }

    @RequiresApi(api = 21)
    public void writeSizeF(SizeF sizeF, int r22) {
        setOutputField(r22);
        writeBoolean(sizeF != null);
        if (sizeF != null) {
            writeFloat(sizeF.getWidth());
            writeFloat(sizeF.getHeight());
        }
    }

    public void writeSparseBooleanArray(SparseBooleanArray sparseBooleanArray, int r42) {
        setOutputField(r42);
        if (sparseBooleanArray == null) {
            writeInt(-1);
            return;
        }
        int size = sparseBooleanArray.size();
        writeInt(size);
        for (int r02 = 0; r02 < size; r02++) {
            writeInt(sparseBooleanArray.keyAt(r02));
            writeBoolean(sparseBooleanArray.valueAt(r02));
        }
    }

    public abstract void writeString(String str);

    public void writeString(String str, int r22) {
        setOutputField(r22);
        writeString(str);
    }

    public abstract void writeStrongBinder(IBinder iBinder);

    public void writeStrongBinder(IBinder iBinder, int r22) {
        setOutputField(r22);
        writeStrongBinder(iBinder);
    }

    public abstract void writeStrongInterface(IInterface iInterface);

    public void writeStrongInterface(IInterface iInterface, int r22) {
        setOutputField(r22);
        writeStrongInterface(iInterface);
    }

    public <T extends VersionedParcelable> void writeToParcel(T t10, VersionedParcel versionedParcel) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            getWriteMethod(t10.getClass()).invoke(null, t10, versionedParcel);
        } catch (ClassNotFoundException e10) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e10);
        } catch (IllegalAccessException e11) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e11);
        } catch (NoSuchMethodException e12) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e12);
        } catch (InvocationTargetException e13) {
            if (!(e13.getCause() instanceof RuntimeException)) {
                throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e13);
            }
            throw ((RuntimeException) e13.getCause());
        }
    }

    public void writeVersionedParcelable(VersionedParcelable versionedParcelable) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (versionedParcelable == null) {
            writeString(null);
            return;
        }
        writeVersionedParcelableCreator(versionedParcelable);
        VersionedParcel versionedParcelCreateSubParcel = createSubParcel();
        writeToParcel(versionedParcelable, versionedParcelCreateSubParcel);
        versionedParcelCreateSubParcel.closeField();
    }

    public void writeVersionedParcelable(VersionedParcelable versionedParcelable, int r22) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        setOutputField(r22);
        writeVersionedParcelable(versionedParcelable);
    }
}
