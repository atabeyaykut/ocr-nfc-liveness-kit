.class public final Lo5/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln5/a;


# static fields
.field public static final c:[B


# instance fields
.field public final a:Lu5/g0;

.field public final b:Ln5/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lo5/j;->c:[B

    return-void
.end method

.method public constructor <init>(Lu5/g0;Ln5/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo5/j;->a:Lu5/g0;

    iput-object p2, p0, Lo5/j;->b:Ln5/a;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo5/j;->a:Lu5/g0;

    .line 2
    .line 3
    sget-object v1, Ln5/p;->a:Ljava/util/logging/Logger;

    .line 4
    .line 5
    const-string v1, "newKey-operation not permitted for key type "

    .line 6
    .line 7
    const-class v2, Ln5/p;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    invoke-virtual {v0}, Lu5/g0;->y()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static {v3}, Ln5/p;->b(Ljava/lang/String;)Ln5/p$a;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-interface {v3}, Ln5/p$a;->b()Ln5/d;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    sget-object v4, Ln5/p;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    invoke-virtual {v0}, Lu5/g0;->y()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Lu5/g0;->z()Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    :try_start_1
    iget-object v1, v3, Ln5/d;->a:Ln5/f;

    .line 48
    .line 49
    invoke-virtual {v1}, Ln5/f;->c()Ln5/f$a;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1, v0}, Ln5/f$a;->b(Lcom/google/crypto/tink/shaded/protobuf/i;)Lcom/google/crypto/tink/shaded/protobuf/q0;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v1, v0}, Ln5/f$a;->c(Lcom/google/crypto/tink/shaded/protobuf/q0;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ln5/f$a;->a(Lcom/google/crypto/tink/shaded/protobuf/q0;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/q0;
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/a0; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    monitor-exit v2

    .line 67
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/q0;->toByteArray()[B

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lo5/j;->b:Ln5/a;

    .line 72
    .line 73
    sget-object v2, Lo5/j;->c:[B

    .line 74
    .line 75
    invoke-interface {v1, v0, v2}, Ln5/a;->a([B[B)[B

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v2, p0, Lo5/j;->a:Lu5/g0;

    .line 80
    .line 81
    invoke-virtual {v2}, Lu5/g0;->y()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/i;->b:Lcom/google/crypto/tink/shaded/protobuf/i$f;

    .line 86
    .line 87
    array-length v3, v0

    .line 88
    const/4 v4, 0x0

    .line 89
    invoke-static {v0, v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->m([BII)Lcom/google/crypto/tink/shaded/protobuf/i$f;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-class v3, Ln5/a;

    .line 94
    .line 95
    invoke-static {v2, v0, v3}, Ln5/p;->c(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/i;Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Ln5/a;

    .line 100
    .line 101
    invoke-interface {v0, p1, p2}, Ln5/a;->a([B[B)[B

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    array-length p2, v1

    .line 106
    add-int/lit8 p2, p2, 0x4

    .line 107
    .line 108
    array-length v0, p1

    .line 109
    add-int/2addr p2, v0

    .line 110
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    array-length v0, v1

    .line 115
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    return-object p1

    .line 132
    :catch_0
    move-exception p1

    .line 133
    :try_start_2
    new-instance p2, Ljava/security/GeneralSecurityException;

    .line 134
    .line 135
    iget-object v0, v3, Ln5/d;->a:Ln5/f;

    .line 136
    .line 137
    invoke-virtual {v0}, Ln5/f;->c()Ln5/f$a;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget-object v0, v0, Ln5/f$a;->a:Ljava/lang/Class;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const-string v1, "Failures parsing proto of type "

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-direct {p2, v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    throw p2

    .line 157
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 158
    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Lu5/g0;->y()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    :catchall_0
    move-exception p1

    .line 180
    monitor-exit v2

    .line 181
    throw p1
.end method

.method public final b([B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const-string v0, "invalid ciphertext"

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-lez v2, :cond_0

    .line 12
    .line 13
    array-length p1, p1

    .line 14
    add-int/lit8 p1, p1, -0x4

    .line 15
    .line 16
    if-gt v2, p1, :cond_0

    .line 17
    .line 18
    new-array p1, v2, [B

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v1, p1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    new-array v2, v2, [B

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lo5/j;->b:Ln5/a;

    .line 38
    .line 39
    sget-object v4, Lo5/j;->c:[B

    .line 40
    .line 41
    invoke-interface {v1, p1, v4}, Ln5/a;->b([B[B)[B

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v1, p0, Lo5/j;->a:Lu5/g0;

    .line 46
    .line 47
    invoke-virtual {v1}, Lu5/g0;->y()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sget-object v4, Ln5/p;->a:Ljava/util/logging/Logger;

    .line 52
    .line 53
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/i;->b:Lcom/google/crypto/tink/shaded/protobuf/i$f;

    .line 54
    .line 55
    array-length v4, p1

    .line 56
    invoke-static {p1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/i;->m([BII)Lcom/google/crypto/tink/shaded/protobuf/i$f;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-class v3, Ln5/a;

    .line 61
    .line 62
    invoke-static {v1, p1, v3}, Ln5/p;->c(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/i;Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ln5/a;

    .line 67
    .line 68
    invoke-interface {p1, v2, p2}, Ln5/a;->b([B[B)[B

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    :catch_0
    move-exception p1

    .line 74
    goto :goto_0

    .line 75
    :catch_1
    move-exception p1

    .line 76
    goto :goto_0

    .line 77
    :catch_2
    move-exception p1

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 80
    .line 81
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    new-instance p2, Ljava/security/GeneralSecurityException;

    .line 86
    .line 87
    invoke-direct {p2, v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    throw p2
.end method
