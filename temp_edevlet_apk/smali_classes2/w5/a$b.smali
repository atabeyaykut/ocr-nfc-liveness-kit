.class public final Lw5/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw5/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Ljavax/crypto/spec/SecretKeySpec;

.field public final b:Ljavax/crypto/spec/SecretKeySpec;

.field public final c:Ljavax/crypto/Cipher;

.field public final d:Ljavax/crypto/Mac;

.field public final e:[B

.field public final f:Ljava/nio/ByteBuffer;

.field public g:J

.field public final synthetic h:Lw5/a;


# direct methods
.method public constructor <init>(Lw5/a;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lw5/a$b;->h:Lw5/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lw5/a$b;->g:J

    .line 9
    .line 10
    sget-object v2, Lw5/n;->e:Lw5/n;

    .line 11
    .line 12
    const-string v3, "AES/CTR/NoPadding"

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Lw5/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljavax/crypto/Cipher;

    .line 19
    .line 20
    iput-object v2, p0, Lw5/a$b;->c:Ljavax/crypto/Cipher;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    sget-object v2, Lw5/n;->f:Lw5/n;

    .line 26
    .line 27
    iget-object v3, p1, Lw5/a;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lw5/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljavax/crypto/Mac;

    .line 34
    .line 35
    iput-object v2, p0, Lw5/a$b;->d:Ljavax/crypto/Mac;

    .line 36
    .line 37
    iput-wide v0, p0, Lw5/a$b;->g:J

    .line 38
    .line 39
    iget v0, p1, Lw5/a;->a:I

    .line 40
    .line 41
    invoke-static {v0}, Lw5/v;->a(I)[B

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x7

    .line 46
    invoke-static {v2}, Lw5/v;->a(I)[B

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iput-object v2, p0, Lw5/a$b;->e:[B

    .line 51
    .line 52
    invoke-virtual {p1}, Lw5/a;->e()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iput-object v3, p0, Lw5/a$b;->f:Ljava/nio/ByteBuffer;

    .line 61
    .line 62
    invoke-virtual {p1}, Lw5/a;->e()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    int-to-byte v4, v4

    .line 67
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 77
    .line 78
    .line 79
    add-int/lit8 v2, v0, 0x20

    .line 80
    .line 81
    iget-object v3, p1, Lw5/a;->g:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v4, p1, Lw5/a;->h:[B

    .line 84
    .line 85
    invoke-static {v4, v1, v3, p2, v2}, Lw5/p;->a([B[BLjava/lang/String;[BI)[B

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    const-string v3, "AES"

    .line 93
    .line 94
    invoke-direct {v1, p2, v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iput-object v1, p0, Lw5/a$b;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 98
    .line 99
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 100
    .line 101
    iget-object p1, p1, Lw5/a;->b:Ljava/lang/String;

    .line 102
    .line 103
    const/16 v2, 0x20

    .line 104
    .line 105
    invoke-direct {v1, p2, v0, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iput-object v1, p0, Lw5/a$b;->b:Ljavax/crypto/spec/SecretKeySpec;

    .line 109
    .line 110
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lw5/a$b;->h:Lw5/a;

    .line 7
    .line 8
    iget-object v2, p0, Lw5/a$b;->e:[B

    .line 9
    .line 10
    iget-wide v3, p0, Lw5/a$b;->g:J

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-static {v1, v2, v3, v4, v5}, Lw5/a;->i(Lw5/a;[BJZ)[B

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lw5/a$b;->c:Ljavax/crypto/Cipher;

    .line 18
    .line 19
    iget-object v3, p0, Lw5/a$b;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 20
    .line 21
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    .line 22
    .line 23
    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 24
    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    invoke-virtual {v2, v6, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 28
    .line 29
    .line 30
    iget-wide v2, p0, Lw5/a$b;->g:J

    .line 31
    .line 32
    const-wide/16 v6, 0x1

    .line 33
    .line 34
    add-long/2addr v2, v6

    .line 35
    iput-wide v2, p0, Lw5/a$b;->g:J

    .line 36
    .line 37
    iget-object v2, p0, Lw5/a$b;->c:Ljavax/crypto/Cipher;

    .line 38
    .line 39
    invoke-virtual {v2, p1, p3}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lw5/a$b;->c:Ljavax/crypto/Cipher;

    .line 43
    .line 44
    invoke-virtual {p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lw5/a$b;->d:Ljavax/crypto/Mac;

    .line 58
    .line 59
    iget-object v0, p0, Lw5/a$b;->b:Ljavax/crypto/spec/SecretKeySpec;

    .line 60
    .line 61
    invoke-virtual {p2, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lw5/a$b;->d:Ljavax/crypto/Mac;

    .line 65
    .line 66
    invoke-virtual {p2, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Lw5/a$b;->d:Ljavax/crypto/Mac;

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lw5/a$b;->d:Ljavax/crypto/Mac;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object p2, p0, Lw5/a$b;->h:Lw5/a;

    .line 81
    .line 82
    iget p2, p2, Lw5/a;->c:I

    .line 83
    .line 84
    invoke-virtual {p3, p1, v5, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    monitor-exit p0

    .line 88
    return-void

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    monitor-exit p0

    .line 91
    throw p1
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lw5/a$b;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized c(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lw5/a$b;->h:Lw5/a;

    .line 7
    .line 8
    iget-object v2, p0, Lw5/a$b;->e:[B

    .line 9
    .line 10
    iget-wide v3, p0, Lw5/a$b;->g:J

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    invoke-static {v1, v2, v3, v4, v5}, Lw5/a;->i(Lw5/a;[BJZ)[B

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lw5/a$b;->c:Ljavax/crypto/Cipher;

    .line 18
    .line 19
    iget-object v3, p0, Lw5/a$b;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 20
    .line 21
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    .line 22
    .line 23
    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v5, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 27
    .line 28
    .line 29
    iget-wide v2, p0, Lw5/a$b;->g:J

    .line 30
    .line 31
    const-wide/16 v4, 0x1

    .line 32
    .line 33
    add-long/2addr v2, v4

    .line 34
    iput-wide v2, p0, Lw5/a$b;->g:J

    .line 35
    .line 36
    iget-object v2, p0, Lw5/a$b;->c:Ljavax/crypto/Cipher;

    .line 37
    .line 38
    invoke-virtual {v2, p1, p2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lw5/a$b;->d:Ljavax/crypto/Mac;

    .line 52
    .line 53
    iget-object v2, p0, Lw5/a$b;->b:Ljavax/crypto/spec/SecretKeySpec;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lw5/a$b;->d:Ljavax/crypto/Mac;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lw5/a$b;->d:Ljavax/crypto/Mac;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lw5/a$b;->d:Ljavax/crypto/Mac;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object v0, p0, Lw5/a$b;->h:Lw5/a;

    .line 75
    .line 76
    iget v0, v0, Lw5/a;->c:I

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p2, p1, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    monitor-exit p0

    .line 83
    return-void

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    monitor-exit p0

    .line 86
    throw p1
.end method
