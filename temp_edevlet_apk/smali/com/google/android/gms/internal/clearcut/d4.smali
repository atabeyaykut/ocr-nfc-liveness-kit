.class public final Lcom/google/android/gms/internal/clearcut/d4;
.super Lcom/google/android/gms/internal/clearcut/u3;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/clearcut/u3<",
        "Lcom/google/android/gms/internal/clearcut/d4;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public final c:[B

.field public final d:Ljava/lang/String;

.field public e:[[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/u3;-><init>()V

    sget-object v0, La0/b;->k:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/d4;->c:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/d4;->d:Ljava/lang/String;

    sget-object v0, La0/b;->j:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/d4;->e:[[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/u3;->b:Lcom/google/android/gms/internal/clearcut/v3;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/y3;->a:I

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/clearcut/u3;->g()Lcom/google/android/gms/internal/clearcut/u3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/d4;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/d4;->e:[[B

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    invoke-virtual {v1}, [[B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/d4;->e:[[B

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final d()I
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/clearcut/u3;->d()I

    .line 2
    .line 3
    .line 4
    sget-object v0, La0/b;->k:[B

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/d4;->c:[B

    .line 7
    .line 8
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/clearcut/s3;->h(I[B)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v0, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/d4;->e:[[B

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    array-length v1, v1

    .line 28
    if-lez v1, :cond_3

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/clearcut/d4;->e:[[B

    .line 33
    .line 34
    array-length v6, v5

    .line 35
    if-ge v3, v6, :cond_2

    .line 36
    .line 37
    aget-object v5, v5, v3

    .line 38
    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    add-int/lit8 v4, v4, 0x1

    .line 42
    .line 43
    array-length v6, v5

    .line 44
    invoke-static {v6}, Lcom/google/android/gms/internal/clearcut/s3;->o(I)I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    array-length v5, v5

    .line 49
    add-int/2addr v6, v5

    .line 50
    add-int/2addr v6, v1

    .line 51
    move v1, v6

    .line 52
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    add-int/2addr v0, v1

    .line 56
    mul-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    add-int/2addr v0, v4

    .line 59
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/d4;->d:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    const-string v2, ""

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_4

    .line 70
    .line 71
    const/4 v2, 0x4

    .line 72
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/clearcut/s3;->g(ILjava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v0, v1

    .line 77
    :cond_4
    return v0
.end method

.method public final synthetic e()Lcom/google/android/gms/internal/clearcut/y3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/d4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/d4;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/clearcut/d4;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/clearcut/d4;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/d4;->c:[B

    .line 14
    .line 15
    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/d4;->c:[B

    .line 16
    .line 17
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/d4;->d:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/d4;->d:Ljava/lang/String;

    .line 27
    .line 28
    if-nez v3, :cond_3

    .line 29
    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/d4;->e:[[B

    .line 41
    .line 42
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/d4;->e:[[B

    .line 43
    .line 44
    sget-object v4, Lcom/google/android/gms/internal/clearcut/x3;->a:Ljava/lang/Object;

    .line 45
    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    goto :goto_0

    .line 50
    :cond_5
    array-length v4, v1

    .line 51
    :goto_0
    if-nez v3, :cond_6

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    goto :goto_1

    .line 55
    :cond_6
    array-length v5, v3

    .line 56
    :goto_1
    const/4 v6, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    :goto_2
    if-ge v6, v4, :cond_7

    .line 59
    .line 60
    aget-object v8, v1, v6

    .line 61
    .line 62
    if-nez v8, :cond_7

    .line 63
    .line 64
    add-int/lit8 v6, v6, 0x1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_7
    :goto_3
    if-ge v7, v5, :cond_8

    .line 68
    .line 69
    aget-object v8, v3, v7

    .line 70
    .line 71
    if-nez v8, :cond_8

    .line 72
    .line 73
    add-int/lit8 v7, v7, 0x1

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_8
    if-lt v6, v4, :cond_9

    .line 77
    .line 78
    const/4 v8, 0x1

    .line 79
    goto :goto_4

    .line 80
    :cond_9
    const/4 v8, 0x0

    .line 81
    :goto_4
    if-lt v7, v5, :cond_a

    .line 82
    .line 83
    const/4 v9, 0x1

    .line 84
    goto :goto_5

    .line 85
    :cond_a
    const/4 v9, 0x0

    .line 86
    :goto_5
    if-eqz v8, :cond_b

    .line 87
    .line 88
    if-eqz v9, :cond_b

    .line 89
    .line 90
    const/4 v1, 0x1

    .line 91
    goto :goto_7

    .line 92
    :cond_b
    if-eq v8, v9, :cond_c

    .line 93
    .line 94
    :goto_6
    const/4 v1, 0x0

    .line 95
    goto :goto_7

    .line 96
    :cond_c
    aget-object v8, v1, v6

    .line 97
    .line 98
    aget-object v9, v3, v7

    .line 99
    .line 100
    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-nez v8, :cond_12

    .line 105
    .line 106
    goto :goto_6

    .line 107
    :goto_7
    if-nez v1, :cond_d

    .line 108
    .line 109
    return v2

    .line 110
    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/u3;->b:Lcom/google/android/gms/internal/clearcut/v3;

    .line 111
    .line 112
    if-eqz v1, :cond_f

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/v3;->b()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_e

    .line 119
    .line 120
    goto :goto_8

    .line 121
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/u3;->b:Lcom/google/android/gms/internal/clearcut/v3;

    .line 122
    .line 123
    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/u3;->b:Lcom/google/android/gms/internal/clearcut/v3;

    .line 124
    .line 125
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/v3;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    return p1

    .line 130
    :cond_f
    :goto_8
    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/u3;->b:Lcom/google/android/gms/internal/clearcut/v3;

    .line 131
    .line 132
    if-eqz p1, :cond_11

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/v3;->b()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_10

    .line 139
    .line 140
    goto :goto_9

    .line 141
    :cond_10
    return v2

    .line 142
    :cond_11
    :goto_9
    return v0

    .line 143
    :cond_12
    add-int/lit8 v6, v6, 0x1

    .line 144
    .line 145
    add-int/lit8 v7, v7, 0x1

    .line 146
    .line 147
    goto :goto_2
.end method

.method public final f(Lcom/google/android/gms/internal/clearcut/s3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, La0/b;->k:[B

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/d4;->c:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/s3;->d(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/d4;->e:[[B

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/d4;->e:[[B

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/clearcut/s3;->d(I[B)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/d4;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/clearcut/s3;->c(ILjava/lang/String;)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/clearcut/u3;->f(Lcom/google/android/gms/internal/clearcut/s3;)V

    return-void
.end method

.method public final synthetic g()Lcom/google/android/gms/internal/clearcut/u3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/d4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/d4;

    return-object v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    const-class v0, Lcom/google/android/gms/internal/clearcut/d4;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit16 v0, v0, 0x20f

    .line 12
    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/d4;->c:[B

    .line 16
    .line 17
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/2addr v1, v0

    .line 22
    mul-int/lit8 v1, v1, 0x1f

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/d4;->d:Ljava/lang/String;

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    :goto_0
    add-int/2addr v1, v2

    .line 36
    mul-int/lit8 v1, v1, 0x1f

    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/d4;->e:[[B

    .line 39
    .line 40
    sget-object v3, Lcom/google/android/gms/internal/clearcut/x3;->a:Ljava/lang/Object;

    .line 41
    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    array-length v3, v2

    .line 47
    :goto_1
    const/4 v4, 0x0

    .line 48
    const/4 v5, 0x0

    .line 49
    :goto_2
    if-ge v4, v3, :cond_3

    .line 50
    .line 51
    aget-object v6, v2, v4

    .line 52
    .line 53
    if-eqz v6, :cond_2

    .line 54
    .line 55
    mul-int/lit8 v5, v5, 0x1f

    .line 56
    .line 57
    invoke-static {v6}, Ljava/util/Arrays;->hashCode([B)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    add-int/2addr v5, v6

    .line 62
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    add-int/2addr v1, v5

    .line 66
    mul-int/lit8 v1, v1, 0x1f

    .line 67
    .line 68
    add-int/lit16 v1, v1, 0x4d5

    .line 69
    .line 70
    mul-int/lit8 v1, v1, 0x1f

    .line 71
    .line 72
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/u3;->b:Lcom/google/android/gms/internal/clearcut/v3;

    .line 73
    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/v3;->b()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/u3;->b:Lcom/google/android/gms/internal/clearcut/v3;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/v3;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    :cond_5
    :goto_3
    add-int/2addr v1, v0

    .line 90
    return v1
.end method
