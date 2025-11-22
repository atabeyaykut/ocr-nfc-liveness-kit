package androidx.security.crypto;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.FileChannel;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import n5.e;
import n5.g;
import n5.p;
import n5.q;
import r5.a;
import u5.p;
import u5.q;
import v5.a;
import v5.b;
import v5.d;

/* loaded from: classes.dex */
public final class EncryptedFile {
    private static final String KEYSET_ALIAS = "__androidx_security_crypto_encrypted_file_keyset__";
    private static final String KEYSET_PREF_NAME = "__androidx_security_crypto_encrypted_file_pref__";
    final Context mContext;
    final File mFile;
    final String mMasterKeyAlias;
    final q mStreamingAead;

    public static final class Builder {
        final Context mContext;
        File mFile;
        final FileEncryptionScheme mFileEncryptionScheme;
        final String mMasterKeyAlias;
        String mKeysetPrefName = EncryptedFile.KEYSET_PREF_NAME;
        String mKeysetAlias = EncryptedFile.KEYSET_ALIAS;

        @SuppressLint({"StreamFiles"})
        public Builder(@NonNull Context context, @NonNull File file, @NonNull MasterKey masterKey, @NonNull FileEncryptionScheme fileEncryptionScheme) {
            this.mFile = file;
            this.mFileEncryptionScheme = fileEncryptionScheme;
            this.mContext = context.getApplicationContext();
            this.mMasterKeyAlias = masterKey.getKeyAlias();
        }

        @Deprecated
        public Builder(@NonNull File file, @NonNull Context context, @NonNull String str, @NonNull FileEncryptionScheme fileEncryptionScheme) {
            this.mFile = file;
            this.mFileEncryptionScheme = fileEncryptionScheme;
            this.mContext = context.getApplicationContext();
            this.mMasterKeyAlias = str;
        }

        @NonNull
        public EncryptedFile build() throws GeneralSecurityException, IOException {
            g gVarB;
            int r02 = d.f18243a;
            p.e(new a(), true);
            p.e(new b(), true);
            p.f(new v5.g());
            a.C0237a c0237a = new a.C0237a();
            c0237a.f14324e = this.mFileEncryptionScheme.getKeyTemplate();
            c0237a.e(this.mContext, this.mKeysetAlias, this.mKeysetPrefName);
            c0237a.d("android-keystore://" + this.mMasterKeyAlias);
            r5.a aVarA = c0237a.a();
            synchronized (aVarA) {
                gVarB = aVarA.f14319b.b();
            }
            return new EncryptedFile(this.mFile, this.mKeysetAlias, (q) gVarB.a(q.class), this.mContext);
        }

        @NonNull
        public Builder setKeysetAlias(@NonNull String str) {
            this.mKeysetAlias = str;
            return this;
        }

        @NonNull
        public Builder setKeysetPrefName(@NonNull String str) {
            this.mKeysetPrefName = str;
            return this;
        }
    }

    public static final class EncryptedFileInputStream extends FileInputStream {
        private final InputStream mEncryptedInputStream;

        public EncryptedFileInputStream(FileDescriptor fileDescriptor, InputStream inputStream) {
            super(fileDescriptor);
            this.mEncryptedInputStream = inputStream;
        }

        @Override // java.io.FileInputStream, java.io.InputStream
        public int available() throws IOException {
            return this.mEncryptedInputStream.available();
        }

        @Override // java.io.FileInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.mEncryptedInputStream.close();
        }

        @Override // java.io.FileInputStream
        public FileChannel getChannel() {
            throw new UnsupportedOperationException("For encrypted files, please open the relevant FileInput/FileOutputStream.");
        }

        @Override // java.io.InputStream
        public synchronized void mark(int r22) {
            this.mEncryptedInputStream.mark(r22);
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return this.mEncryptedInputStream.markSupported();
        }

        @Override // java.io.FileInputStream, java.io.InputStream
        public int read() throws IOException {
            return this.mEncryptedInputStream.read();
        }

        @Override // java.io.FileInputStream, java.io.InputStream
        public int read(@NonNull byte[] bArr) throws IOException {
            return this.mEncryptedInputStream.read(bArr);
        }

        @Override // java.io.FileInputStream, java.io.InputStream
        public int read(@NonNull byte[] bArr, int r32, int r42) throws IOException {
            return this.mEncryptedInputStream.read(bArr, r32, r42);
        }

        @Override // java.io.InputStream
        public synchronized void reset() throws IOException {
            this.mEncryptedInputStream.reset();
        }

        @Override // java.io.FileInputStream, java.io.InputStream
        public long skip(long j10) throws IOException {
            return this.mEncryptedInputStream.skip(j10);
        }
    }

    public static final class EncryptedFileOutputStream extends FileOutputStream {
        private final OutputStream mEncryptedOutputStream;

        public EncryptedFileOutputStream(FileDescriptor fileDescriptor, OutputStream outputStream) {
            super(fileDescriptor);
            this.mEncryptedOutputStream = outputStream;
        }

        @Override // java.io.FileOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.mEncryptedOutputStream.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.mEncryptedOutputStream.flush();
        }

        @Override // java.io.FileOutputStream
        @NonNull
        public FileChannel getChannel() {
            throw new UnsupportedOperationException("For encrypted files, please open the relevant FileInput/FileOutputStream.");
        }

        @Override // java.io.FileOutputStream, java.io.OutputStream
        public void write(int r22) throws IOException {
            this.mEncryptedOutputStream.write(r22);
        }

        @Override // java.io.FileOutputStream, java.io.OutputStream
        public void write(@NonNull byte[] bArr) throws IOException {
            this.mEncryptedOutputStream.write(bArr);
        }

        @Override // java.io.FileOutputStream, java.io.OutputStream
        public void write(@NonNull byte[] bArr, int r32, int r42) throws IOException {
            this.mEncryptedOutputStream.write(bArr, r32, r42);
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'AES256_GCM_HKDF_4KB' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class FileEncryptionScheme {
        private static final /* synthetic */ FileEncryptionScheme[] $VALUES;
        public static final FileEncryptionScheme AES256_GCM_HKDF_4KB;
        private final e mStreamingAeadKeyTemplate;

        static {
            q.a aVarA = u5.q.A();
            aVarA.k();
            u5.q.t((u5.q) aVarA.f4393b);
            aVarA.k();
            u5.q.u((u5.q) aVarA.f4393b);
            aVarA.k();
            u5.q.v((u5.q) aVarA.f4393b);
            u5.q qVarI = aVarA.i();
            p.a aVarX = u5.p.x();
            aVarX.k();
            u5.p.u((u5.p) aVarX.f4393b);
            aVarX.k();
            u5.p.t((u5.p) aVarX.f4393b, qVarI);
            u5.p pVarI = aVarX.i();
            new b();
            FileEncryptionScheme fileEncryptionScheme = new FileEncryptionScheme("AES256_GCM_HKDF_4KB", 0, e.a("type.googleapis.com/google.crypto.tink.AesGcmHkdfStreamingKey", pVarI.toByteArray(), 3));
            AES256_GCM_HKDF_4KB = fileEncryptionScheme;
            $VALUES = new FileEncryptionScheme[]{fileEncryptionScheme};
        }

        private FileEncryptionScheme(String str, int r22, e eVar) {
            this.mStreamingAeadKeyTemplate = eVar;
        }

        public static FileEncryptionScheme valueOf(String str) {
            return (FileEncryptionScheme) Enum.valueOf(FileEncryptionScheme.class, str);
        }

        public static FileEncryptionScheme[] values() {
            return (FileEncryptionScheme[]) $VALUES.clone();
        }

        public e getKeyTemplate() {
            return this.mStreamingAeadKeyTemplate;
        }
    }

    public EncryptedFile(@NonNull File file, @NonNull String str, @NonNull n5.q qVar, @NonNull Context context) {
        this.mFile = file;
        this.mContext = context;
        this.mMasterKeyAlias = str;
        this.mStreamingAead = qVar;
    }

    @NonNull
    public FileInputStream openFileInput() throws GeneralSecurityException, IOException {
        if (this.mFile.exists()) {
            FileInputStream fileInputStream = new FileInputStream(this.mFile);
            return new EncryptedFileInputStream(fileInputStream.getFD(), this.mStreamingAead.a(fileInputStream, this.mFile.getName().getBytes(StandardCharsets.UTF_8)));
        }
        throw new IOException("file doesn't exist: " + this.mFile.getName());
    }

    @NonNull
    public FileOutputStream openFileOutput() throws GeneralSecurityException, IOException {
        if (this.mFile.exists()) {
            throw new IOException("output file already exists, please use a new file: " + this.mFile.getName());
        }
        FileOutputStream fileOutputStream = new FileOutputStream(this.mFile);
        return new EncryptedFileOutputStream(fileOutputStream.getFD(), this.mStreamingAead.b(this.mFile.getName().getBytes(StandardCharsets.UTF_8), fileOutputStream));
    }
}
