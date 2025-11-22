package androidx.security.crypto;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArraySet;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import n5.a;
import n5.c;
import n5.e;
import n5.g;
import n5.p;
import o5.f;
import q5.b;
import r5.a;
import u5.s;
import u5.w;

/* loaded from: classes.dex */
public final class EncryptedSharedPreferences implements SharedPreferences {
    private static final String KEY_KEYSET_ALIAS = "__androidx_security_crypto_encrypted_prefs_key_keyset__";
    private static final String NULL_VALUE = "__NULL__";
    private static final String VALUE_KEYSET_ALIAS = "__androidx_security_crypto_encrypted_prefs_value_keyset__";
    final String mFileName;
    final c mKeyDeterministicAead;
    final List<SharedPreferences.OnSharedPreferenceChangeListener> mListeners = new ArrayList();
    final String mMasterKeyAlias;
    final SharedPreferences mSharedPreferences;
    final a mValueAead;

    /* renamed from: androidx.security.crypto.EncryptedSharedPreferences$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$security$crypto$EncryptedSharedPreferences$EncryptedType;

        static {
            int[] r02 = new int[EncryptedType.values().length];
            $SwitchMap$androidx$security$crypto$EncryptedSharedPreferences$EncryptedType = r02;
            try {
                r02[EncryptedType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$security$crypto$EncryptedSharedPreferences$EncryptedType[EncryptedType.INT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$security$crypto$EncryptedSharedPreferences$EncryptedType[EncryptedType.LONG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$security$crypto$EncryptedSharedPreferences$EncryptedType[EncryptedType.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$security$crypto$EncryptedSharedPreferences$EncryptedType[EncryptedType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$androidx$security$crypto$EncryptedSharedPreferences$EncryptedType[EncryptedType.STRING_SET.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static final class Editor implements SharedPreferences.Editor {
        private final SharedPreferences.Editor mEditor;
        private final EncryptedSharedPreferences mEncryptedSharedPreferences;
        private AtomicBoolean mClearRequested = new AtomicBoolean(false);
        private final List<String> mKeysChanged = new CopyOnWriteArrayList();

        public Editor(EncryptedSharedPreferences encryptedSharedPreferences, SharedPreferences.Editor editor) {
            this.mEncryptedSharedPreferences = encryptedSharedPreferences;
            this.mEditor = editor;
        }

        private void clearKeysIfNeeded() {
            if (this.mClearRequested.getAndSet(false)) {
                for (String str : this.mEncryptedSharedPreferences.getAll().keySet()) {
                    if (!this.mKeysChanged.contains(str) && !this.mEncryptedSharedPreferences.isReservedKey(str)) {
                        this.mEditor.remove(this.mEncryptedSharedPreferences.encryptKey(str));
                    }
                }
            }
        }

        private void notifyListeners() {
            for (SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener : this.mEncryptedSharedPreferences.mListeners) {
                Iterator<String> it = this.mKeysChanged.iterator();
                while (it.hasNext()) {
                    onSharedPreferenceChangeListener.onSharedPreferenceChanged(this.mEncryptedSharedPreferences, it.next());
                }
            }
        }

        private void putEncryptedObject(String str, byte[] bArr) {
            if (this.mEncryptedSharedPreferences.isReservedKey(str)) {
                throw new SecurityException(android.support.v4.media.a.f(str, " is a reserved key for the encryption keyset."));
            }
            this.mKeysChanged.add(str);
            if (str == null) {
                str = EncryptedSharedPreferences.NULL_VALUE;
            }
            try {
                Pair<String, String> pairEncryptKeyValuePair = this.mEncryptedSharedPreferences.encryptKeyValuePair(str, bArr);
                this.mEditor.putString((String) pairEncryptKeyValuePair.first, (String) pairEncryptKeyValuePair.second);
            } catch (GeneralSecurityException e10) {
                throw new SecurityException("Could not encrypt data: " + e10.getMessage(), e10);
            }
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            clearKeysIfNeeded();
            this.mEditor.apply();
            notifyListeners();
            this.mKeysChanged.clear();
        }

        @Override // android.content.SharedPreferences.Editor
        @NonNull
        public SharedPreferences.Editor clear() {
            this.mClearRequested.set(true);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            clearKeysIfNeeded();
            try {
                return this.mEditor.commit();
            } finally {
                notifyListeners();
                this.mKeysChanged.clear();
            }
        }

        @Override // android.content.SharedPreferences.Editor
        @NonNull
        public SharedPreferences.Editor putBoolean(@Nullable String str, boolean z10) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(5);
            byteBufferAllocate.putInt(EncryptedType.BOOLEAN.getId());
            byteBufferAllocate.put(z10 ? (byte) 1 : (byte) 0);
            putEncryptedObject(str, byteBufferAllocate.array());
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        @NonNull
        public SharedPreferences.Editor putFloat(@Nullable String str, float f) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
            byteBufferAllocate.putInt(EncryptedType.FLOAT.getId());
            byteBufferAllocate.putFloat(f);
            putEncryptedObject(str, byteBufferAllocate.array());
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        @NonNull
        public SharedPreferences.Editor putInt(@Nullable String str, int r42) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
            byteBufferAllocate.putInt(EncryptedType.INT.getId());
            byteBufferAllocate.putInt(r42);
            putEncryptedObject(str, byteBufferAllocate.array());
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        @NonNull
        public SharedPreferences.Editor putLong(@Nullable String str, long j10) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(12);
            byteBufferAllocate.putInt(EncryptedType.LONG.getId());
            byteBufferAllocate.putLong(j10);
            putEncryptedObject(str, byteBufferAllocate.array());
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        @NonNull
        public SharedPreferences.Editor putString(@Nullable String str, @Nullable String str2) {
            if (str2 == null) {
                str2 = EncryptedSharedPreferences.NULL_VALUE;
            }
            byte[] bytes = str2.getBytes(StandardCharsets.UTF_8);
            int length = bytes.length;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length + 8);
            byteBufferAllocate.putInt(EncryptedType.STRING.getId());
            byteBufferAllocate.putInt(length);
            byteBufferAllocate.put(bytes);
            putEncryptedObject(str, byteBufferAllocate.array());
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        @NonNull
        public SharedPreferences.Editor putStringSet(@Nullable String str, @Nullable Set<String> set) {
            if (set == null) {
                set = new ArraySet<>();
                set.add(EncryptedSharedPreferences.NULL_VALUE);
            }
            ArrayList arrayList = new ArrayList(set.size());
            int size = set.size() * 4;
            Iterator<String> it = set.iterator();
            while (it.hasNext()) {
                byte[] bytes = it.next().getBytes(StandardCharsets.UTF_8);
                arrayList.add(bytes);
                size += bytes.length;
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(size + 4);
            byteBufferAllocate.putInt(EncryptedType.STRING_SET.getId());
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                byte[] bArr = (byte[]) it2.next();
                byteBufferAllocate.putInt(bArr.length);
                byteBufferAllocate.put(bArr);
            }
            putEncryptedObject(str, byteBufferAllocate.array());
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        @NonNull
        public SharedPreferences.Editor remove(@Nullable String str) {
            if (this.mEncryptedSharedPreferences.isReservedKey(str)) {
                throw new SecurityException(android.support.v4.media.a.f(str, " is a reserved key for the encryption keyset."));
            }
            this.mEditor.remove(this.mEncryptedSharedPreferences.encryptKey(str));
            this.mKeysChanged.remove(str);
            return this;
        }
    }

    public enum EncryptedType {
        STRING(0),
        STRING_SET(1),
        INT(2),
        LONG(3),
        FLOAT(4),
        BOOLEAN(5);

        private final int mId;

        EncryptedType(int r32) {
            this.mId = r32;
        }

        public static EncryptedType fromId(int r12) {
            if (r12 == 0) {
                return STRING;
            }
            if (r12 == 1) {
                return STRING_SET;
            }
            if (r12 == 2) {
                return INT;
            }
            if (r12 == 3) {
                return LONG;
            }
            if (r12 == 4) {
                return FLOAT;
            }
            if (r12 != 5) {
                return null;
            }
            return BOOLEAN;
        }

        public int getId() {
            return this.mId;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'AES256_SIV' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class PrefKeyEncryptionScheme {
        private static final /* synthetic */ PrefKeyEncryptionScheme[] $VALUES;
        public static final PrefKeyEncryptionScheme AES256_SIV;
        private final e mDeterministicAeadKeyTemplate;

        static {
            w.a aVarV = w.v();
            aVarV.k();
            w.t((w) aVarV.f4393b);
            w wVarI = aVarV.i();
            new q5.a();
            PrefKeyEncryptionScheme prefKeyEncryptionScheme = new PrefKeyEncryptionScheme("AES256_SIV", 0, e.a("type.googleapis.com/google.crypto.tink.AesSivKey", wVarI.toByteArray(), 1));
            AES256_SIV = prefKeyEncryptionScheme;
            $VALUES = new PrefKeyEncryptionScheme[]{prefKeyEncryptionScheme};
        }

        private PrefKeyEncryptionScheme(String str, int r22, e eVar) {
            this.mDeterministicAeadKeyTemplate = eVar;
        }

        public static PrefKeyEncryptionScheme valueOf(String str) {
            return (PrefKeyEncryptionScheme) Enum.valueOf(PrefKeyEncryptionScheme.class, str);
        }

        public static PrefKeyEncryptionScheme[] values() {
            return (PrefKeyEncryptionScheme[]) $VALUES.clone();
        }

        public e getKeyTemplate() {
            return this.mDeterministicAeadKeyTemplate;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'AES256_GCM' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class PrefValueEncryptionScheme {
        private static final /* synthetic */ PrefValueEncryptionScheme[] $VALUES;
        public static final PrefValueEncryptionScheme AES256_GCM;
        private final e mAeadKeyTemplate;

        static {
            s.a aVarV = s.v();
            aVarV.k();
            s.t((s) aVarV.f4393b);
            s sVarI = aVarV.i();
            new f();
            PrefValueEncryptionScheme prefValueEncryptionScheme = new PrefValueEncryptionScheme("AES256_GCM", 0, e.a("type.googleapis.com/google.crypto.tink.AesGcmKey", sVarI.toByteArray(), 1));
            AES256_GCM = prefValueEncryptionScheme;
            $VALUES = new PrefValueEncryptionScheme[]{prefValueEncryptionScheme};
        }

        private PrefValueEncryptionScheme(String str, int r22, e eVar) {
            this.mAeadKeyTemplate = eVar;
        }

        public static PrefValueEncryptionScheme valueOf(String str) {
            return (PrefValueEncryptionScheme) Enum.valueOf(PrefValueEncryptionScheme.class, str);
        }

        public static PrefValueEncryptionScheme[] values() {
            return (PrefValueEncryptionScheme[]) $VALUES.clone();
        }

        public e getKeyTemplate() {
            return this.mAeadKeyTemplate;
        }
    }

    public EncryptedSharedPreferences(@NonNull String str, @NonNull String str2, @NonNull SharedPreferences sharedPreferences, @NonNull a aVar, @NonNull c cVar) {
        this.mFileName = str;
        this.mSharedPreferences = sharedPreferences;
        this.mMasterKeyAlias = str2;
        this.mValueAead = aVar;
        this.mKeyDeterministicAead = cVar;
    }

    @NonNull
    public static SharedPreferences create(@NonNull Context context, @NonNull String str, @NonNull MasterKey masterKey, @NonNull PrefKeyEncryptionScheme prefKeyEncryptionScheme, @NonNull PrefValueEncryptionScheme prefValueEncryptionScheme) throws GeneralSecurityException, IOException {
        return create(str, masterKey.getKeyAlias(), context, prefKeyEncryptionScheme, prefValueEncryptionScheme);
    }

    @NonNull
    @Deprecated
    public static SharedPreferences create(@NonNull String str, @NonNull String str2, @NonNull Context context, @NonNull PrefKeyEncryptionScheme prefKeyEncryptionScheme, @NonNull PrefValueEncryptionScheme prefValueEncryptionScheme) throws GeneralSecurityException, IOException {
        g gVarB;
        int r02 = b.f13403a;
        p.e(new q5.a(), true);
        p.f(new q5.c());
        o5.a.a();
        Context applicationContext = context.getApplicationContext();
        a.C0237a c0237a = new a.C0237a();
        c0237a.f14324e = prefKeyEncryptionScheme.getKeyTemplate();
        c0237a.e(applicationContext, KEY_KEYSET_ALIAS, str);
        c0237a.d("android-keystore://" + str2);
        r5.a aVarA = c0237a.a();
        synchronized (aVarA) {
            gVarB = aVarA.f14319b.b();
        }
        a.C0237a c0237a2 = new a.C0237a();
        c0237a2.f14324e = prefValueEncryptionScheme.getKeyTemplate();
        c0237a2.e(applicationContext, VALUE_KEYSET_ALIAS, str);
        c0237a2.d("android-keystore://" + str2);
        g gVarA = c0237a2.a().a();
        return new EncryptedSharedPreferences(str, str2, applicationContext.getSharedPreferences(str, 0), (n5.a) gVarA.a(n5.a.class), (c) gVarB.a(c.class));
    }

    private Object getDecryptedObject(String str) {
        if (isReservedKey(str)) {
            throw new SecurityException(android.support.v4.media.a.f(str, " is a reserved key for the encryption keyset."));
        }
        if (str == null) {
            str = NULL_VALUE;
        }
        try {
            String strEncryptKey = encryptKey(str);
            String string = this.mSharedPreferences.getString(strEncryptKey, null);
            if (string == null) {
                return null;
            }
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(this.mValueAead.b(w5.g.a(string), strEncryptKey.getBytes(StandardCharsets.UTF_8)));
            byteBufferWrap.position(0);
            switch (AnonymousClass1.$SwitchMap$androidx$security$crypto$EncryptedSharedPreferences$EncryptedType[EncryptedType.fromId(byteBufferWrap.getInt()).ordinal()]) {
                case 1:
                    int r12 = byteBufferWrap.getInt();
                    ByteBuffer byteBufferSlice = byteBufferWrap.slice();
                    byteBufferWrap.limit(r12);
                    String string2 = StandardCharsets.UTF_8.decode(byteBufferSlice).toString();
                    if (string2.equals(NULL_VALUE)) {
                        return null;
                    }
                    return string2;
                case 2:
                    return Integer.valueOf(byteBufferWrap.getInt());
                case 3:
                    return Long.valueOf(byteBufferWrap.getLong());
                case 4:
                    return Float.valueOf(byteBufferWrap.getFloat());
                case 5:
                    return Boolean.valueOf(byteBufferWrap.get() != 0);
                case 6:
                    ArraySet arraySet = new ArraySet();
                    while (byteBufferWrap.hasRemaining()) {
                        int r52 = byteBufferWrap.getInt();
                        ByteBuffer byteBufferSlice2 = byteBufferWrap.slice();
                        byteBufferSlice2.limit(r52);
                        byteBufferWrap.position(byteBufferWrap.position() + r52);
                        arraySet.add(StandardCharsets.UTF_8.decode(byteBufferSlice2).toString());
                    }
                    if (arraySet.size() == 1 && NULL_VALUE.equals(arraySet.valueAt(0))) {
                        return null;
                    }
                    return arraySet;
                default:
                    return null;
            }
        } catch (GeneralSecurityException e10) {
            throw new SecurityException("Could not decrypt value. " + e10.getMessage(), e10);
        }
    }

    @Override // android.content.SharedPreferences
    public boolean contains(@Nullable String str) {
        if (isReservedKey(str)) {
            throw new SecurityException(android.support.v4.media.a.f(str, " is a reserved key for the encryption keyset."));
        }
        return this.mSharedPreferences.contains(encryptKey(str));
    }

    public String decryptKey(String str) {
        try {
            String str2 = new String(this.mKeyDeterministicAead.b(w5.g.a(str), this.mFileName.getBytes()), StandardCharsets.UTF_8);
            if (str2.equals(NULL_VALUE)) {
                return null;
            }
            return str2;
        } catch (GeneralSecurityException e10) {
            throw new SecurityException("Could not decrypt key. " + e10.getMessage(), e10);
        }
    }

    @Override // android.content.SharedPreferences
    @NonNull
    public SharedPreferences.Editor edit() {
        return new Editor(this, this.mSharedPreferences.edit());
    }

    public String encryptKey(String str) {
        if (str == null) {
            str = NULL_VALUE;
        }
        try {
            try {
                return new String(w5.g.b(this.mKeyDeterministicAead.a(str.getBytes(StandardCharsets.UTF_8), this.mFileName.getBytes())), "US-ASCII");
            } catch (UnsupportedEncodingException e10) {
                throw new AssertionError(e10);
            }
        } catch (GeneralSecurityException e11) {
            throw new SecurityException("Could not encrypt key. " + e11.getMessage(), e11);
        }
    }

    public Pair<String, String> encryptKeyValuePair(String str, byte[] bArr) throws GeneralSecurityException {
        String strEncryptKey = encryptKey(str);
        try {
            return new Pair<>(strEncryptKey, new String(w5.g.b(this.mValueAead.a(bArr, strEncryptKey.getBytes(StandardCharsets.UTF_8))), "US-ASCII"));
        } catch (UnsupportedEncodingException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // android.content.SharedPreferences
    @NonNull
    public Map<String, ?> getAll() {
        HashMap map = new HashMap();
        for (Map.Entry<String, ?> entry : this.mSharedPreferences.getAll().entrySet()) {
            if (!isReservedKey(entry.getKey())) {
                String strDecryptKey = decryptKey(entry.getKey());
                map.put(strDecryptKey, getDecryptedObject(strDecryptKey));
            }
        }
        return map;
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(@Nullable String str, boolean z10) {
        Object decryptedObject = getDecryptedObject(str);
        return (decryptedObject == null || !(decryptedObject instanceof Boolean)) ? z10 : ((Boolean) decryptedObject).booleanValue();
    }

    @Override // android.content.SharedPreferences
    public float getFloat(@Nullable String str, float f) {
        Object decryptedObject = getDecryptedObject(str);
        return (decryptedObject == null || !(decryptedObject instanceof Float)) ? f : ((Float) decryptedObject).floatValue();
    }

    @Override // android.content.SharedPreferences
    public int getInt(@Nullable String str, int r32) {
        Object decryptedObject = getDecryptedObject(str);
        return (decryptedObject == null || !(decryptedObject instanceof Integer)) ? r32 : ((Integer) decryptedObject).intValue();
    }

    @Override // android.content.SharedPreferences
    public long getLong(@Nullable String str, long j10) {
        Object decryptedObject = getDecryptedObject(str);
        return (decryptedObject == null || !(decryptedObject instanceof Long)) ? j10 : ((Long) decryptedObject).longValue();
    }

    @Override // android.content.SharedPreferences
    @Nullable
    public String getString(@Nullable String str, @Nullable String str2) {
        Object decryptedObject = getDecryptedObject(str);
        return (decryptedObject == null || !(decryptedObject instanceof String)) ? str2 : (String) decryptedObject;
    }

    @Override // android.content.SharedPreferences
    @Nullable
    public Set<String> getStringSet(@Nullable String str, @Nullable Set<String> set) {
        Object decryptedObject = getDecryptedObject(str);
        Set<String> arraySet = decryptedObject instanceof Set ? (Set) decryptedObject : new ArraySet<>();
        return arraySet.size() > 0 ? arraySet : set;
    }

    public boolean isReservedKey(String str) {
        return KEY_KEYSET_ALIAS.equals(str) || VALUE_KEYSET_ALIAS.equals(str);
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(@NonNull SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.mListeners.add(onSharedPreferenceChangeListener);
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(@NonNull SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.mListeners.remove(onSharedPreferenceChangeListener);
    }
}
