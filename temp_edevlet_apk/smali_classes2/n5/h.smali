.class public final Ln5/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu5/i0$a;


# direct methods
.method public constructor <init>(Lu5/i0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/h;->a:Lu5/i0$a;

    return-void
.end method

.method public static f()I
    .locals 5

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    goto :goto_0

    :cond_0
    return v3
.end method


# virtual methods
.method public final declared-synchronized a(Lu5/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Ln5/h;->d(Lu5/g0;)Lu5/i0$b;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iget-object v0, p0, Ln5/h;->a:Lu5/i0$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 12
    .line 13
    check-cast v0, Lu5/i0;

    .line 14
    .line 15
    invoke-static {v0, p1}, Lu5/i0;->u(Lu5/i0;Lu5/i0$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method

.method public final declared-synchronized b()Ln5/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ln5/h;->a:Lu5/i0$a;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->i()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lu5/i0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lu5/i0;->w()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Ln5/g;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Ln5/g;-><init>(Lu5/i0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-object v1

    .line 23
    :cond_0
    :try_start_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 24
    .line 25
    const-string v1, "empty keyset"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    monitor-exit p0

    .line 33
    throw v0
.end method

.method public final declared-synchronized c(I)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ln5/h;->a:Lu5/i0$a;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 5
    .line 6
    check-cast v0, Lu5/i0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lu5/i0;->x()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lu5/i0$b;

    .line 31
    .line 32
    invoke-virtual {v1}, Lu5/i0$b;->y()I

    .line 33
    .line 34
    .line 35
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-ne v1, p1, :cond_0

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_1
    monitor-exit p0

    .line 42
    const/4 p1, 0x0

    .line 43
    return p1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    monitor-exit p0

    .line 46
    throw p1
.end method

.method public final declared-synchronized d(Lu5/g0;)Lu5/i0$b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Ln5/p;->d(Lu5/g0;)Lu5/e0;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p0}, Ln5/h;->e()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p1}, Lu5/g0;->x()Lu5/o0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v2, Lu5/o0;->b:Lu5/o0;

    .line 15
    .line 16
    if-ne p1, v2, :cond_0

    .line 17
    .line 18
    sget-object p1, Lu5/o0;->c:Lu5/o0;

    .line 19
    .line 20
    :cond_0
    invoke-static {}, Lu5/i0$b;->C()Lu5/i0$b$a;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 25
    .line 26
    .line 27
    iget-object v3, v2, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 28
    .line 29
    check-cast v3, Lu5/i0$b;

    .line 30
    .line 31
    invoke-static {v3, v0}, Lu5/i0$b;->t(Lu5/i0$b;Lu5/e0;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 35
    .line 36
    .line 37
    iget-object v0, v2, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 38
    .line 39
    check-cast v0, Lu5/i0$b;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lu5/i0$b;->w(Lu5/i0$b;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 45
    .line 46
    .line 47
    iget-object v0, v2, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 48
    .line 49
    check-cast v0, Lu5/i0$b;

    .line 50
    .line 51
    invoke-static {v0}, Lu5/i0$b;->v(Lu5/i0$b;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 55
    .line 56
    .line 57
    iget-object v0, v2, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 58
    .line 59
    check-cast v0, Lu5/i0$b;

    .line 60
    .line 61
    invoke-static {v0, p1}, Lu5/i0$b;->u(Lu5/i0$b;Lu5/o0;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->i()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lu5/i0$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    monitor-exit p0

    .line 71
    return-object p1

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    monitor-exit p0

    .line 74
    throw p1
.end method

.method public final declared-synchronized e()I
    .locals 2

    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-static {}, Ln5/h;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Ln5/h;->c(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v1, p0, Ln5/h;->a:Lu5/i0$a;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 6
    .line 7
    check-cast v1, Lu5/i0;

    .line 8
    .line 9
    invoke-virtual {v1}, Lu5/i0;->w()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Ln5/h;->a:Lu5/i0$a;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 18
    .line 19
    check-cast v1, Lu5/i0;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lu5/i0;->v(I)Lu5/i0$b;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lu5/i0$b;->y()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ne v2, p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Lu5/i0$b;->A()Lu5/f0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Lu5/f0;->c:Lu5/f0;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Ln5/h;->a:Lu5/i0$a;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 46
    .line 47
    .line 48
    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 49
    .line 50
    check-cast v0, Lu5/i0;

    .line 51
    .line 52
    invoke-static {v0, p1}, Lu5/i0;->t(Lu5/i0;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :cond_0
    :try_start_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v2, "cannot set key as primary because it\'s not enabled: "

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 84
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v2, "key not found: "

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :catchall_0
    move-exception p1

    .line 107
    monitor-exit p0

    .line 108
    throw p1
.end method
