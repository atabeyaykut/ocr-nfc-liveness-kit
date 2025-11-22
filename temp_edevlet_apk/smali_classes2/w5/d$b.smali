.class public final Lw5/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw5/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Ljavax/crypto/spec/SecretKeySpec;

.field public final b:Ljavax/crypto/Cipher;

.field public final c:[B

.field public final d:Ljava/nio/ByteBuffer;

.field public e:J


# direct methods
.method public constructor <init>(Lw5/d;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lw5/d$b;->e:J

    .line 7
    .line 8
    sget-object v2, Lw5/n;->e:Lw5/n;

    .line 9
    .line 10
    const-string v3, "AES/GCM/NoPadding"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Lw5/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljavax/crypto/Cipher;

    .line 17
    .line 18
    iput-object v2, p0, Lw5/d$b;->b:Ljavax/crypto/Cipher;

    .line 19
    .line 20
    iput-wide v0, p0, Lw5/d$b;->e:J

    .line 21
    .line 22
    iget v0, p1, Lw5/d;->a:I

    .line 23
    .line 24
    invoke-static {v0}, Lw5/v;->a(I)[B

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x7

    .line 29
    invoke-static {v1}, Lw5/v;->a(I)[B

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lw5/d$b;->c:[B

    .line 34
    .line 35
    invoke-virtual {p1}, Lw5/d;->e()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iput-object v2, p0, Lw5/d$b;->d:Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    invoke-virtual {p1}, Lw5/d;->e()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    int-to-byte v3, v3

    .line 50
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 60
    .line 61
    .line 62
    iget v1, p1, Lw5/d;->a:I

    .line 63
    .line 64
    iget-object v2, p1, Lw5/d;->e:Ljava/lang/String;

    .line 65
    .line 66
    iget-object p1, p1, Lw5/d;->f:[B

    .line 67
    .line 68
    invoke-static {p1, v0, v2, p2, v1}, Lw5/p;->a([B[BLjava/lang/String;[BI)[B

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    .line 73
    .line 74
    const-string v0, "AES"

    .line 75
    .line 76
    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-object p2, p0, Lw5/d$b;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw5/d$b;->b:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lw5/d$b;->a:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lw5/d$b;->c:[B

    iget-wide v3, p0, Lw5/d$b;->e:J

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lw5/d;->i([BJZ)Ljavax/crypto/spec/GCMParameterSpec;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-wide v0, p0, Lw5/d$b;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lw5/d$b;->e:J

    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw5/d$b;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p3}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    iget-object p1, p0, Lw5/d$b;->b:Ljavax/crypto/Cipher;

    invoke-virtual {p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lw5/d$b;->b:Ljavax/crypto/Cipher;

    invoke-virtual {p2, p1, p3}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lw5/d$b;->d:Ljava/nio/ByteBuffer;

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

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw5/d$b;->b:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lw5/d$b;->a:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lw5/d$b;->c:[B

    iget-wide v3, p0, Lw5/d$b;->e:J

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lw5/d;->i([BJZ)Ljavax/crypto/spec/GCMParameterSpec;

    move-result-object v2

    invoke-virtual {v0, v5, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-wide v0, p0, Lw5/d$b;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lw5/d$b;->e:J

    iget-object v0, p0, Lw5/d$b;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
