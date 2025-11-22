.class public final synthetic Lm3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lm3/u;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Lm3/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lm3/p;->a:Z

    iput-object p2, p0, Lm3/p;->b:Ljava/lang/String;

    iput-object p3, p0, Lm3/p;->c:Lm3/u;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-boolean v2, p0, Lm3/p;->a:Z

    .line 4
    .line 5
    iget-object v3, p0, Lm3/p;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v4, p0, Lm3/p;->c:Lm3/u;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-static {v3, v4, v1, v0}, Lm3/y;->b(Ljava/lang/String;Lm3/u;ZZ)Lm3/g0;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    iget-boolean v5, v5, Lm3/g0;->a:Z

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v5, 0x0

    .line 22
    :goto_0
    if-eq v1, v5, :cond_1

    .line 23
    .line 24
    const-string v5, "not allowed"

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const-string v5, "debug cert rejected"

    .line 28
    .line 29
    :goto_1
    const/4 v6, 0x5

    .line 30
    new-array v6, v6, [Ljava/lang/Object;

    .line 31
    .line 32
    aput-object v5, v6, v0

    .line 33
    .line 34
    aput-object v3, v6, v1

    .line 35
    .line 36
    const-string v1, "SHA-256"

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    :goto_2
    const/4 v5, 0x2

    .line 40
    if-ge v3, v5, :cond_2

    .line 41
    .line 42
    :try_start_0
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 43
    .line 44
    .line 45
    move-result-object v7
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    if-nez v7, :cond_3

    .line 47
    .line 48
    :catch_0
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/4 v7, 0x0

    .line 52
    :cond_3
    invoke-static {v7}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Lm3/u;->y0()[B

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v7, v1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    array-length v3, v1

    .line 64
    add-int/2addr v3, v3

    .line 65
    new-array v3, v3, [C

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    :goto_3
    array-length v7, v1

    .line 69
    if-ge v0, v7, :cond_4

    .line 70
    .line 71
    aget-byte v7, v1, v0

    .line 72
    .line 73
    and-int/lit16 v7, v7, 0xff

    .line 74
    .line 75
    add-int/lit8 v8, v4, 0x1

    .line 76
    .line 77
    sget-object v9, Lb8/f;->k:[C

    .line 78
    .line 79
    ushr-int/lit8 v10, v7, 0x4

    .line 80
    .line 81
    aget-char v10, v9, v10

    .line 82
    .line 83
    aput-char v10, v3, v4

    .line 84
    .line 85
    add-int/lit8 v4, v8, 0x1

    .line 86
    .line 87
    and-int/lit8 v7, v7, 0xf

    .line 88
    .line 89
    aget-char v7, v9, v7

    .line 90
    .line 91
    aput-char v7, v3, v8

    .line 92
    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    new-instance v0, Ljava/lang/String;

    .line 97
    .line 98
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    .line 99
    .line 100
    .line 101
    aput-object v0, v6, v5

    .line 102
    .line 103
    const/4 v0, 0x3

    .line 104
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    aput-object v1, v6, v0

    .line 109
    .line 110
    const-string v0, "12451000.false"

    .line 111
    .line 112
    const/4 v1, 0x4

    .line 113
    aput-object v0, v6, v1

    .line 114
    .line 115
    const-string v0, "%s: pkg=%s, sha256=%s, atk=%s, ver=%s"

    .line 116
    .line 117
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0
.end method
