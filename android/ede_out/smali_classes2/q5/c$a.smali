.class public final Lq5/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln5/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ln5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln5/l<",
            "Ln5/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln5/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln5/l<",
            "Ln5/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq5/c$a;->a:Ln5/l;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [[B

    .line 3
    .line 4
    iget-object v1, p0, Lq5/c$a;->a:Ln5/l;

    .line 5
    .line 6
    iget-object v2, v1, Ln5/l;->b:Ln5/l$a;

    .line 7
    .line 8
    invoke-virtual {v2}, Ln5/l$a;->a()[B

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v0, v3

    .line 14
    .line 15
    iget-object v1, v1, Ln5/l;->b:Ln5/l$a;

    .line 16
    .line 17
    iget-object v1, v1, Ln5/l$a;->a:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Ln5/c;

    .line 20
    .line 21
    invoke-interface {v1, p1, p2}, Ln5/c;->a([B[B)[B

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 p2, 0x1

    .line 26
    aput-object p1, v0, p2

    .line 27
    .line 28
    invoke-static {v0}, Lw5/h;->a([[B)[B

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public final b([B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    iget-object v1, p0, Lq5/c$a;->a:Ln5/l;

    .line 3
    .line 4
    const/4 v2, 0x5

    .line 5
    if-le v0, v2, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    array-length v3, p1

    .line 13
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v0}, Ln5/l;->a([B)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ln5/l$a;

    .line 36
    .line 37
    :try_start_0
    iget-object v3, v3, Ln5/l$a;->a:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v3, Ln5/c;

    .line 40
    .line 41
    invoke-interface {v3, v2, p2}, Ln5/c;->b([B[B)[B

    .line 42
    .line 43
    .line 44
    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-object p1

    .line 46
    :catch_0
    move-exception v3

    .line 47
    sget-object v4, Lq5/c;->a:Ljava/util/logging/Logger;

    .line 48
    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v6, "ciphertext prefix matches a key, but cannot decrypt: "

    .line 52
    .line 53
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    sget-object v0, Ln5/b;->a:[B

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ln5/l;->a([B)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_1

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Ln5/l$a;

    .line 92
    .line 93
    :try_start_1
    iget-object v1, v1, Ln5/l$a;->a:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v1, Ln5/c;

    .line 96
    .line 97
    invoke-interface {v1, p1, p2}, Ln5/c;->b([B[B)[B

    .line 98
    .line 99
    .line 100
    move-result-object p1
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    return-object p1

    .line 102
    :catch_1
    nop

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 105
    .line 106
    const-string p2, "decryption failed"

    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1
.end method
