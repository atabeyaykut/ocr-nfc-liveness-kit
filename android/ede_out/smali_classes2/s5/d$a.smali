.class public final Ls5/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln5/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/d;
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
            "Ln5/k;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[B


# direct methods
.method public constructor <init>(Ln5/l;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    iput-object v0, p0, Ls5/d$a;->b:[B

    iput-object p1, p0, Ls5/d$a;->a:Ln5/l;

    return-void
.end method


# virtual methods
.method public final a([B[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x5

    .line 3
    if-le v0, v1, :cond_3

    .line 4
    .line 5
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v2, p1

    .line 10
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Ls5/d$a;->a:Ln5/l;

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ln5/l;->a([B)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ln5/l$a;

    .line 35
    .line 36
    :try_start_0
    iget-object v4, v3, Ln5/l$a;->d:Lu5/o0;

    .line 37
    .line 38
    sget-object v5, Lu5/o0;->d:Lu5/o0;

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    iget-object v3, v3, Ln5/l$a;->a:Ljava/lang/Object;

    .line 45
    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    :try_start_1
    check-cast v3, Ln5/k;

    .line 49
    .line 50
    const/4 v4, 0x2

    .line 51
    new-array v4, v4, [[B

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    aput-object p2, v4, v5

    .line 55
    .line 56
    iget-object v5, p0, Ls5/d$a;->b:[B

    .line 57
    .line 58
    const/4 v6, 0x1

    .line 59
    aput-object v5, v4, v6

    .line 60
    .line 61
    invoke-static {v4}, Lw5/h;->a([[B)[B

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v3, v1, v4}, Ln5/k;->a([B[B)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    check-cast v3, Ln5/k;

    .line 70
    .line 71
    invoke-interface {v3, v1, p2}, Ln5/k;->a([B[B)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    .line 73
    .line 74
    :goto_1
    return-void

    .line 75
    :catch_0
    move-exception v3

    .line 76
    sget-object v4, Ls5/d;->a:Ljava/util/logging/Logger;

    .line 77
    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v6, "tag prefix matches a key, but cannot verify: "

    .line 81
    .line 82
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    sget-object v0, Ln5/b;->a:[B

    .line 97
    .line 98
    invoke-virtual {v2, v0}, Ln5/l;->a([B)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_2

    .line 111
    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Ln5/l$a;

    .line 117
    .line 118
    :try_start_2
    iget-object v1, v1, Ln5/l$a;->a:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v1, Ln5/k;

    .line 121
    .line 122
    invoke-interface {v1, p1, p2}, Ln5/k;->a([B[B)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :catch_1
    nop

    .line 127
    goto :goto_2

    .line 128
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 129
    .line 130
    const-string p2, "invalid MAC"

    .line 131
    .line 132
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p1

    .line 136
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 137
    .line 138
    const-string p2, "tag too short"

    .line 139
    .line 140
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p1
.end method

.method public final b([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls5/d$a;->a:Ln5/l;

    .line 2
    .line 3
    iget-object v1, v0, Ln5/l;->b:Ln5/l$a;

    .line 4
    .line 5
    iget-object v1, v1, Ln5/l$a;->d:Lu5/o0;

    .line 6
    .line 7
    sget-object v2, Lu5/o0;->d:Lu5/o0;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x2

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    new-array v1, v4, [[B

    .line 19
    .line 20
    iget-object v5, v0, Ln5/l;->b:Ln5/l$a;

    .line 21
    .line 22
    invoke-virtual {v5}, Ln5/l$a;->a()[B

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    aput-object v5, v1, v3

    .line 27
    .line 28
    iget-object v0, v0, Ln5/l;->b:Ln5/l$a;

    .line 29
    .line 30
    iget-object v0, v0, Ln5/l$a;->a:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Ln5/k;

    .line 33
    .line 34
    new-array v4, v4, [[B

    .line 35
    .line 36
    aput-object p1, v4, v3

    .line 37
    .line 38
    iget-object p1, p0, Ls5/d$a;->b:[B

    .line 39
    .line 40
    aput-object p1, v4, v2

    .line 41
    .line 42
    invoke-static {v4}, Lw5/h;->a([[B)[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {v0, p1}, Ln5/k;->b([B)[B

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    aput-object p1, v1, v2

    .line 51
    .line 52
    invoke-static {v1}, Lw5/h;->a([[B)[B

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :cond_0
    new-array v1, v4, [[B

    .line 58
    .line 59
    iget-object v4, v0, Ln5/l;->b:Ln5/l$a;

    .line 60
    .line 61
    invoke-virtual {v4}, Ln5/l$a;->a()[B

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    aput-object v4, v1, v3

    .line 66
    .line 67
    iget-object v0, v0, Ln5/l;->b:Ln5/l$a;

    .line 68
    .line 69
    iget-object v0, v0, Ln5/l$a;->a:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Ln5/k;

    .line 72
    .line 73
    invoke-interface {v0, p1}, Ln5/k;->b([B)[B

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    aput-object p1, v1, v2

    .line 78
    .line 79
    invoke-static {v1}, Lw5/h;->a([[B)[B

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method
