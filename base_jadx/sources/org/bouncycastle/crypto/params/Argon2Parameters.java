package org.bouncycastle.crypto.params;

import org.bouncycastle.crypto.CharToByteConverter;
import org.bouncycastle.crypto.PasswordConverter;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class Argon2Parameters {
    public static final int ARGON2_VERSION_10 = 16;
    public static final int ARGON2_VERSION_13 = 19;
    public static final int ARGON2_d = 0;
    public static final int ARGON2_i = 1;
    public static final int ARGON2_id = 2;
    private static final int DEFAULT_ITERATIONS = 3;
    private static final int DEFAULT_LANES = 1;
    private static final int DEFAULT_MEMORY_COST = 12;
    private static final int DEFAULT_TYPE = 1;
    private static final int DEFAULT_VERSION = 19;
    private final byte[] additional;
    private final CharToByteConverter converter;
    private final int iterations;
    private final int lanes;
    private final int memory;
    private final byte[] salt;
    private final byte[] secret;
    private final int type;
    private final int version;

    public static class Builder {
        private byte[] additional;
        private CharToByteConverter converter;
        private int iterations;
        private int lanes;
        private int memory;
        private byte[] salt;
        private byte[] secret;
        private final int type;
        private int version;

        public Builder() {
            this(1);
        }

        public Builder(int r22) {
            this.converter = PasswordConverter.UTF8;
            this.type = r22;
            this.lanes = 1;
            this.memory = 4096;
            this.iterations = 3;
            this.version = 19;
        }

        public Argon2Parameters build() {
            return new Argon2Parameters(this.type, this.salt, this.secret, this.additional, this.iterations, this.memory, this.lanes, this.version, this.converter);
        }

        public void clear() {
            Arrays.clear(this.salt);
            Arrays.clear(this.secret);
            Arrays.clear(this.additional);
        }

        public Builder withAdditional(byte[] bArr) {
            this.additional = Arrays.clone(bArr);
            return this;
        }

        public Builder withCharToByteConverter(CharToByteConverter charToByteConverter) {
            this.converter = charToByteConverter;
            return this;
        }

        public Builder withIterations(int r12) {
            this.iterations = r12;
            return this;
        }

        public Builder withMemoryAsKB(int r12) {
            this.memory = r12;
            return this;
        }

        public Builder withMemoryPowOfTwo(int r22) {
            this.memory = 1 << r22;
            return this;
        }

        public Builder withParallelism(int r12) {
            this.lanes = r12;
            return this;
        }

        public Builder withSalt(byte[] bArr) {
            this.salt = Arrays.clone(bArr);
            return this;
        }

        public Builder withSecret(byte[] bArr) {
            this.secret = Arrays.clone(bArr);
            return this;
        }

        public Builder withVersion(int r12) {
            this.version = r12;
            return this;
        }
    }

    private Argon2Parameters(int r12, byte[] bArr, byte[] bArr2, byte[] bArr3, int r52, int r6, int r72, int r82, CharToByteConverter charToByteConverter) {
        this.salt = Arrays.clone(bArr);
        this.secret = Arrays.clone(bArr2);
        this.additional = Arrays.clone(bArr3);
        this.iterations = r52;
        this.memory = r6;
        this.lanes = r72;
        this.version = r82;
        this.type = r12;
        this.converter = charToByteConverter;
    }

    public void clear() {
        Arrays.clear(this.salt);
        Arrays.clear(this.secret);
        Arrays.clear(this.additional);
    }

    public byte[] getAdditional() {
        return Arrays.clone(this.additional);
    }

    public CharToByteConverter getCharToByteConverter() {
        return this.converter;
    }

    public int getIterations() {
        return this.iterations;
    }

    public int getLanes() {
        return this.lanes;
    }

    public int getMemory() {
        return this.memory;
    }

    public byte[] getSalt() {
        return Arrays.clone(this.salt);
    }

    public byte[] getSecret() {
        return Arrays.clone(this.secret);
    }

    public int getType() {
        return this.type;
    }

    public int getVersion() {
        return this.version;
    }
}
